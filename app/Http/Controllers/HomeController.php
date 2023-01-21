<?php

namespace App\Http\Controllers;
use App\Models\Category;
use App\Models\Post;
use App\Models\User;
use Illuminate\Http\Request;

class HomeController extends MenuController
{
    private $postModel;
//    private $categoriesModel;
//    private $userModel;
    public function login() {
        if(session('user')){
            $this->data['user'] = session('user')[0];
            return redirect()->route('home');
        }
        return view('front/pages/login');
    }
    public function register() {
        if(session('user')){
            abort(403);
            //$this->data['user'] = session('user')[0];
        }
        return view('front/pages/register');
    }
    public function index() {
        if(session('user')){
            $this->data['user'] = session('user')[0];
        }
        $this->postModel=new Post();
//        $this->postsModel= new Post();
//        $nesto = $this->categoriesModel = new Category();
//        $this->userModel = new User();
//        $this->data['categories_list'] = $nesto->getCategoriesProducts();
        $this->data['johndoe'] = $this->postModel->getSpecificUserPosts(2);
        $this->data['latest'] = $this->postModel->getLatest();
        $this->data['comments'] = $this->postModel->getTopCommented();

        $this->data['posts'] = Post::with('categories')->get();
        $this->data['categories'] = Category::all();
        $this->data['users'] = Post::with('users')->get();
        $this->data['posts_paginate'] = Post::with('categories')->paginate(2);
        $this->data['movie_paginate'] = Post::whereHas('categories', function($e){$e->where('category_id',1);})->paginate(2);
        $this->data['tv_paginate'] = Post::whereHas('categories', function($e){$e->where('category_id',2);})->paginate(2);
        $this->data['reviews_paginate'] = Post::whereHas('categories', function($e){$e->where('category_id',3);})->paginate(2);
        $this->data['latest_paginate'] = Post::with('categories')->paginate(4);
        return view('front/pages/index', $this->data);
    }
}
