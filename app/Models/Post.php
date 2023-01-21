<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Storage;

class Post extends Model
{
    protected $fillable = ["title", "image", "user_id", "content"];
    use HasFactory;
    public function users() {
        return $this->belongsTo(User::class);
    }
    public function comments() {
        return $this->hasMany(Comment::class);
    }
    public function categories() {
        return $this->belongsToMany(Category::class);
    }
    public static function uploadImage($image){
        $path = Storage::disk('public')->putFile('assets/front/img',$image);
        $ex = explode('/', $path);
        return $ex[count($ex)-1]; //vrati src koji upisujemo u bazu
    }

    public static function deleteImage($image){
        Storage::disk('public')->delete('assets/front/img/'.$image);
    }
    public function getPostUsers($productId){
        return \DB::table('posts as p')
            ->select('u.name as name', 'u.surname as surname')
            ->join('users as u', 'p.user_id', '=', 'u.id')
            ->where("p.id", $productId)
            ->get();
    }
    public function getLatest() {
        return \DB::table('posts')->orderBy('date', 'desc')->paginate(4);
    }
    public function getSpecificUserPosts($userId){
        return \DB::table('posts as p')
            ->select('p.title as title', 'p.id as id', 'p.img as img', 'p.date as date')
            ->join('users as u', 'p.user_id', '=', 'u.id')
            ->where("u.id", $userId)
            ->paginate(4);
    }
    public function getTopCommented() {
        return \DB::table('posts as p')
        ->select('p.id as id', 'p.img as img', 'p.title as title', \DB::raw('count(c.id) as number'))
        ->join('comments as c', 'c.post_id', '=', 'p.id')
            ->groupBy('p.id', 'p.title', 'p.img')
            ->orderBy(\DB::raw('count(c.id)'), 'DESC')
        ->get();
    }
    public function getPostCategories($productId){
        return \DB::table('posts as p')
            ->select('c.id as cid', 'c.name as cname', 'p.id as id', 'p.img as img', 'p.title as title', 'p.date as date')
            ->join('category_post as cp', 'cp.post_id', '=', 'p.id')
            ->join('categories as c', 'cp.category_id', '=', 'c.id')
            ->where("p.id", 'IN', $productId)
            ->get();
    }

}
