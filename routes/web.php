<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\AuthorController;
use App\Http\Controllers\PostController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\EditorController;

// main pages

Route::get('/', [HomeController::class, 'index'])->name('home');
Route::get('/contact', [ContactController::class, 'index'])->name('contact');
Route::get('/author', [AuthorController::class, 'index'])->name('author');
Route::get('/login', [HomeController::class, 'login'])->name('login');
Route::get('/register', [HomeController::class, 'register'])->name('register');

// login + register

Route::post('/registerUser', [UserController::class, 'registerUser'])->name('registerUser');
Route::post('/loginUser', [UserController::class, 'loginUser'])->name('loginUser');
Route::get('/logout', [UserController::class, 'logout'])->name('logout');

// posts

Route::get('/posts/filter/{category}', [PostController::class, 'postCat'])->name('postCat');
Route::get('searchSort', [PostController::class, 'searchSort'])->name('searchSort');

// single post

Route::get('/posts/{post}', [PostController::class, 'post'])->name('post');
Route::get('/related', [PostController::class, 'related'])->name('related');

// comments

Route::get('/comment', [PostController::class, 'comment'])->name('comment');
Route::get('/comments', [PostController::class, 'comments'])->name('comments');
Route::get('/deleteComment', [PostController::class, 'deleteComment'])->name('deleteComment');

// contact - send mail

Route::get('/mail',[ContactController::class, 'contact'])->name('mail');

// admin

Route::get('/admin', [AdminController::class, 'index'])->name('dashboard');
Route::get('/adminSort', [AdminController::class, 'adminSort'])->name('adminSort');

Route::delete('/userDelete', [AdminController::class, 'userDelete'])->name('userDelete');
Route::get('/adminUserUpdate', [AdminController::class, 'adminUserUpdate'])->name('adminUserUpdate');
Route::put('/updateProfileInfo/{user}', [AdminController::class, 'updateProfileInfo'])->name('updateProfileInfo');
Route::post('/addUser', [AdminController::class, 'addUser'])->name('addUser');

Route::put('/categoryUpdate', [AdminController::class, 'categoryUpdate'])->name('categoryUpdate');
Route::delete('/categoryDelete', [AdminController::class, 'categoryDelete'])->name('categoryDelete');
Route::post('/categoryInsert', [AdminController::class, 'categoryInsert'])->name('categoryInsert');

// editor

Route::get('/updatePostPage', [EditorController::class, 'updatePostPage'])->name('updatePostPage'); //vodi do forme za insert
Route::put('/updatePost/{post}', [EditorController::class, 'updatePost'])->name('updatePost');
Route::delete('/deletePost', [EditorController::class, 'deletePost'])->name('deletePost');
Route::post('/insertPost', [EditorController::class, 'insertPost'])->name('insertPost');
