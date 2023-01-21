<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Http\Requests\DeleteUserRequest;
use App\Http\Requests\CategoryDeleteRequest;
use App\Http\Requests\CategoryRequest;
use App\Http\Requests\CategoryInsertRequest;
use App\Http\Requests\UpdateUserSelectRequest;
use App\Http\Requests\UserRegisterRequest;
use App\Http\Requests\UserUpdateRequest;
use App\Models\Activity;
use App\Models\Category;
use App\Models\Post;
use App\Models\Role;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class AdminController extends MenuController
{
    public function index()
    {
        if (session('user')) {
            $this->data['user'] = session('user')[0];
            if(session('user')[0]->role_id == 1){
                $this->data['users'] = User::with('roles')->where('id', '!=', session('user')[0]->id)->get();
                $this->data['roles']= Role::all();
                $this->data['activities'] = Activity::paginate(5);
                $this->data['activityList'] = Activity::distinct()->get(['activity']);;
            }elseif (session('user')[0]->role_id == 2){
                $this->data['posts'] = Post::with('categories')->where('user_id',session('user')[0]->id )->get();
            }
            return view('front/pages/dashboard', $this->data);
        }

    }
    public function adminSort(Request $request){

        $sort = $request->get('sort');
        $filter = $request->get('filter');

        $query = Activity::with('users'); //->get();

        if($sort){
            if(($sort!="default")){
                $query = $query->orderBy('date', $sort);
            }
        }
        if($filter){
            if(($filter!="default")){
                $query = $query->where('activity', 'LIKE' ,$filter);
            }
        }

        $filtered = $query->paginate(5);

        return response()->json($filtered);
    }
    public function adminUserUpdate(UpdateUserSelectRequest $request){

        $this->data['user'] = session('user')[0];
        $user_id = $request->input('selectUTU');
        $this->data['userTU'] = User::find($user_id);
        $this->data['roles'] = Role::all();

        return view('front/partials/updateUser', $this->data);
    }

    public function updateProfileInfo(UserUpdateRequest $request, User $user){
        DB::beginTransaction();
        try{
            $user->name= $request->name;
            $user->surname= $request->surname;

            if(isset($request->caid))
                $user->role_id = $request->caid;

            $user->save();
            DB::commit();
            $this->updateActivity(session('user')[0]->id, 'User info updated');

            if(!($request->caid)){
                session()->forget("user");
                $userS = User::with('roles')->where('id', $user->id)->get();
                session(["user" => $userS]);
            }

            return redirect()->route('dashboard');
        }catch(Exception $exception){
            DB::rollBack();
            return redirect()->route('dashboard');
        }
    }
    public function userDelete(DeleteUserRequest $request){
        $user_id = $request->input('selectUTD');
        $userTD = User::find($user_id);

        //dd($userTD);

        $userTD->posts()->where('user_id', $user_id)->delete();
        $userTD->comments()->where('user_id', $user_id)->delete();
        $userTD->activities()->where('user_id', $user_id)->delete();
        $userTD->delete();
        $this->updateActivity(session('user')[0]->id, 'User deleted');

        return redirect()->route('dashboard');
    }
    public function addUser(UserRegisterRequest $request) {
        DB::beginTransaction();
        try{

            $newUser = new User();
            $newUser->name = $request->input('fname');
            $newUser->surname = $request->input('lname');
            $newUser->email = $request->input('email');
            $newUser->password = md5($request->input('password'));
            $newUser->role_id= $request->input('rid');

            $newUser->save();
            $this->updateActivity($newUser->id, "User added");
            DB::commit();

            return redirect()->route('dashboard');
        }
        catch(Exception $exception){
            DB::rollBack();
            //da rutira  sa error msg
            return redirect()->route('register');
            //dd($exception);
        }
    }

    public function categoryUpdate(CategoryRequest $request){
        DB::beginTransaction();
        try{
            //caid
            $section = Category::find($request->input('caid'));
            $section->name= $request->input('secN');
            $section->save();
            DB::commit();
            $this->updateActivity(session('user')[0]->id, 'Category updated');

            return redirect()->route('dashboard');
        }catch(Exception $exception){
            DB::rollBack();
            return redirect()->route('dashboard');
        }
    }
    public function categoryDelete(CategoryDeleteRequest $request){
        $genre_id = $request->input('selectGTD');
        $genreTD = Category::find($genre_id);

        DB::table('category_post')->where('category_id', $genre_id)->delete();
        $genreTD->delete();
        $this->updateActivity(session('user')[0]->id, 'Category deleted');
        return redirect()->route('dashboard');
    }

    public function categoryInsert(CategoryInsertRequest $request){
        DB::beginTransaction();
        try{
            $newCat = new Category();
            $newCat->name = $request->input('secI');
            $newCat->save();
            DB::commit();
            $this->updateActivity(session('user')[0]->id, 'Category added');
            return redirect()->route('dashboard');
        }catch(Exception $exception){
            DB::rollBack();
            return redirect()->route('dashboard');
        }
    }


    public function updateActivity(int $userId, string $activity){
        $newActivity = new Activity();
        $newActivity->user_id = $userId;
        $newActivity->activity=$activity;
        $date = Carbon::now();
        $ip = \Request::ip(true);
        $newActivity->ip = $ip;
        $newActivity->date = $date;
        $newActivity->save();
    }

}
