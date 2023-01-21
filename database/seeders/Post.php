<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Str;
use Illuminate\Support\Arr;
use Faker\Factory as Faker;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class Post extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();
        $date = Carbon::now();
        for($i = 1; $i <= 30; $i++) {
            $id = \DB::table('posts')->insertGetId([
                'title' => $faker->word,
                'img'=> 'image.jpg',
                'content' => $faker->paragraph,
                'user_id' => 1,
                'date' => $date->toDateTimeString()
            ]);
            \DB::table('category_post')->insert([
                'post_id'=>$id,
                'category_id' => rand(1,3)
            ]);
        }
    }
}
