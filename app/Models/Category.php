<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;
    public function posts() {
        return $this->belongsToMany(Post::class);
    }
    public static function getCategoriesMenu() {
        return \DB::table('categories')->get();
    }
    public function getCategoriesProducts() {
        return \DB::table('category_post as cp')
            ->select('u.name as name', 'c.name as cname', 'u.surname as surname', 'p.img as img', 'p.title as title', 'p.date as date', 'cp.category_id as id')
            ->join('categories as c', 'cp.category_id','=', 'c.id')
            ->join('posts as p', 'cp.post_id', '=', 'p.id')
            ->join('users as u', 'p.user_id', '=', 'u.id')
            ->get();
    }

}
