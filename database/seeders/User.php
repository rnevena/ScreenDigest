<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class User extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

        DB::table('users')->insert([
            'name'=>"Admin",
            'surname'=>'Admin',
            'email'=> 'admin@screendigest.com',
            'password' =>'21232f297a57a5a743894a0e4a801fc3',
            'role_id' => 1
        ]);

    }
}
