<?php

namespace App\Http\Controllers;

use App\Http\Requests\UserRegisterRequest;
use App\Http\Requests\UserLoginRequest;
use App\Models\Activity;
use App\Models\Role;
use App\Models\User;
use Exception;
use Illuminate\Http\Request;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;

class UserController extends MenuController
{

    public function registerUser(UserRegisterRequest $request) {
        DB::beginTransaction();
        try{

            $newUser = new User();
            $newUser->name = $request->input('fname');
            $newUser->surname = $request->input('lname');
            $newUser->email = $request->input('email');
            $newUser->password = md5($request->input('password'));
            $newUser->role_id= 3;

            $newUser->save();
            $this->updateActivity($newUser->id, "Registered");
            DB::commit();

            return redirect()->route('login')->with('successMessage', 'Registration successful!');
        }
        catch(Exception $exception){
            DB::rollBack();
            //da rutira  sa error msg
            return redirect()->route('register')->with('errorMessage', 'Registration unsuccessful!');
            //dd($exception);
        }
    }
    public function loginUser(UserLoginRequest $request) {
        $email = $request->input("email");
        $password = md5($request->input("password"));

        $user = User::with("roles")->where([
            ["email", $email],
            ["password", $password]
        ])->get();

        if (count($user) == 1){
            session(["user" => $user]);
            $this->updateActivity(session('user')[0]->id, 'Log In');
            return redirect(route("home"));
        }
        else{
            return redirect(route("login"))->with('errorMessage', 'Login unsuccessful!');
        }
    }

    public function logout(){
        //dd(session('user')[0]->id);
        $this->updateActivity(session('user')[0]->id, 'Log Out');
        session()->forget("user");
        return redirect(route("home"))->with('successMessage', 'Logged Out successfully!');;;
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
