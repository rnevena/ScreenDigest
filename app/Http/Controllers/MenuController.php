<?php

namespace App\Http\Controllers;
use App\Models\Category;
use Illuminate\Http\Request;


class MenuController extends Controller
{
    public $data;
    public function __construct() {
        $this->data['categories']=Category::getCategoriesMenu();
    }
}
