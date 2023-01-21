<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class Category extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    private $categories = ['movie news','tv news','reviews'];
    public function run()
    {
        foreach($this->categories as $c) {
            \DB::table('categories')->insert([
                'name'=>$c
            ]);
        }
    }
}
