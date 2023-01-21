<?php

namespace App\Http\Controllers;

use App\Http\Requests\PostCommentRequest;
use App\Models\Activity;
use App\Models\Post;
use App\Models\User;
use App\Models\Category;
use App\Models\Comment;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Http\JsonResponse;
use Illuminate\Support\Facades\DB;
use Psy\Util\Json;
use Exception;
use http\Env\Response;

class PostController extends MenuController
{
    private $postModel;
    private $commentModel;
    public function post(Post $post) {
        if(session('user')){
            $this->data['user'] = session('user')[0];
        }

        $this->postModel=new Post();
        $this->userModel=new User();
        $this->data['categories'] =Category::all();
        $this->data['posts'] =Post::with('categories')->get();
        $this->data['post'] = $post ;
        $this->data['post_users'] = $this->postModel->getPostUsers($post->id);
        return view('front/pages/post', $this->data);
    }
    public function postCat(Category $category) {
        if(session('user')){
            $this->data['user'] = session('user')[0];
        }

        $this->data['categories'] = Category::all();
        $this->data['category'] = $category;
        $this->data['posts_paginate'] = Post::with('categories')->whereHas('categories', function($e){
            $e->where('category_id', $this->data['category']->id);
        })->paginate(6);
        return view('front.pages.posts', $this->data);
    }

    private $postId;
    private $catId;

    public function related(Request $request) {
        $this->postId= $request->get('id');
        $this->catId= Category::whereHas('posts', function($e){$e->where('post_id', $this->postId);})->get();
        $related =Post::with('categories')->whereHas('categories', function($e){$e->whereIn('category_id', $this->catId);})->take(4)->get();
        return Json::encode($related);
    }
    private $categories=[];

    public function searchSort(Request $request){

        $this->categories = $request->get('id');
        $search= $request->get('search');

        $query = Post::whereHas('categories', function($e){ $e->where('category_id', $this->categories);});

        if($search){
            $query = $query->where('title', 'LIKE','%'.$search.'%');
        }

        $filtered = $query->paginate(6);

        return response()->json($filtered);
    }
    public function comment(PostCommentRequest $request) {
        try{
            $date = Carbon::now();
            $newComment = new Comment();
            $newComment->post_id = $request->post_id;
            $newComment->user_id = $request->user_id;
            $newComment->comment = $request->comment;
            $newComment->created_at = $date;

            $newComment->save();
            $this->updateActivity(session('user')[0]->id, 'Posted comment');
            return "comment success";
        }catch(Exception $exception){
            return "comment error";
        }
    }
    public function comments(Request $request) {
//        $this->postModel=new Post();
//        $this->commentModel=new Comment();
        $this->postId= $request->get('id');

//        $comment_user = $this->data['comment_user'] = $this->commentModel->getCommentUsers($this->postId);
        $comments = Comment::with('users')->where('post_id', $this->postId)->orderBy('id', 'DESC')->get();
        $array= ["comments" => $comments];
//        $array1 = ["comment_user"=>$comment_user];
//        $array=array_merge($array,$array1);

        if(session('user')){
            if(session('user')[0]->role_id==1){
                $newArray = ["role" => true];
                $array = array_merge($array, $newArray);
            }
        }

        return Json::encode($array);
    }
    public function deleteComment(Request $request) {
        $id = $request->id;
        $comment = Comment::find($id);
        $comment ->delete();
        $this->updateActivity(session('user')[0]->id, 'Deleted comment');
        return "comment deleted";
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
