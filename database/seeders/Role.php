<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class Role extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    private $roles = ['admin','editor','user'];
    public function run()
    {
        foreach($this->roles as $r) {
            \DB::table('roles')->insert([
                'name'=>$r
            ]);
        }
    }
}
