<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AuthorController extends MenuController
{
    public function index() {
        if(session('user')){
            $this->data['user'] = session('user')[0];
        }

        return view('front.pages.author', $this->data);
    }
}
