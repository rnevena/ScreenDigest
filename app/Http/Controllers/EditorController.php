<?php

namespace App\Http\Controllers;

use App\Http\Requests\PostRequest;
use App\Http\Requests\SelectRequest;
use App\Http\Requests\DeletePostRequest;
use App\Models\Activity;
use App\Models\Category;
use App\Models\Post;
use App\Models\Role;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class EditorController extends MenuController
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
    public function updatePostPage(SelectRequest $request){

        if(!session('user') || (session('user')[0]->role_id != 2 )){
            return  abort('403');
        }

        $this->data['user'] = session('user')[0];
        $post_id = $request->input('select');

        $this->data['post'] = Post::with('categories')->find($post_id);
        $this->data['user'] = session('user')[0];
        $this->data['categories'] = Category::all();

        $array = [];

        foreach($this->data['post']->categories as $p)
            array_push($array, $p->id);

        $this->data['array'] = $array;
        return view('front/partials/updatePost', $this->data);
    }
    public function updatePost(PostRequest $request, Post $post){
        if(!session('user') || (session('user')[0]->role_id != 2 )){
            return  abort('403');
        }

        $this->data['user'] = session('user')[0];

        DB::beginTransaction();
        try{
            //dd($request->genre);
            $post->update($request->except('image'));

            //dd($request->genre);
            //$post->genres()->delete();
            $post->categories()->sync($request->category);

            //dd($request->genre);
            if($request->has('image')){
                Post::deleteImage($post->img);
                $newImage = Post::uploadImage($request->image);
                $post->img = $request->image->getClientOriginalName();;
            }

            $post->save();
            DB::commit();
            $this->updateActivity(session('user')[0]->id, 'Post updated');
            return redirect()->route('dashboard');
        }catch(\Exception $e){
            DB::rollback();
            return redirect()->route('home');
        }
    }
    public function deletePost(DeletePostRequest $request){

        if(!session('user') || (session('user')[0]->role_id != 2 )){
            return  abort('403');
        }

        $this->data['user'] = session('user')[0];
        $postTD = Post::find($request->input('selectUTD'));
        $postTD->categories()->detach();
        $postTD->comments()->where('post_id', $postTD->id)->delete();
        $postTD->delete();
        $this->updateActivity(session('user')[0]->id, 'Post deleted');
        return redirect()->route('dashboard');

    }
    public function insertPost(PostRequest $request){
        if(!session('user') || (session('user')[0]->role_id != 2 )){
            return  abort('403');
        }

        $this->data['user'] = session('user')[0];

        //dd($request);
        DB::beginTransaction();
        try{
            $request->merge([
                'user_id' => $this->data['user']->id
            ]);

            if(!($request->input('image'))){
                $request->merge([
                    'image' => null
                ]);
                $newPost = Post::create($request->except('image'));
            }
            else{
                $image = Post::uploadImage($request->image);
                $newPost = Post::create($request->except('image') + ['img' => $image]);
            }

            $newPost->categories()->attach($request->input('category'));

            //dd($newPost->genres);
            $newPost->save();

            DB::commit();

            $this->updateActivity(session('user')[0]->id, 'Post added');
            return redirect()->route('dashboard');
        }catch(Exception $exception){
            DB::rollBack();
            //da rutira  sa error msg
            //dd($exception);
            return redirect()->route('home');
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
