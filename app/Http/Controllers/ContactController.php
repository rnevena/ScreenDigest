<?php

namespace App\Http\Controllers;
use App\Http\Requests\ContactRequest;
use Illuminate\Http\Request;

use Illuminate\Support\Facades\Mail;
use Carbon\Carbon;

class ContactController extends MenuController
{
    public function index() {
        if(session('user')){
            $this->data['user'] = session('user')[0];
        }

        return view('front.pages.contact', $this->data);
    }
    protected function contact(ContactRequest $request) {
        if(session('user')){
            $this->data['user'] = session('user')[0];
        }

        $email = $request->input("email");
        $subj = $request->input("subject");
        $msg = $request->input("message");

        $data = array('email'=> $email,"nesto" => $msg);
        Mail::send('front.other.contactMail', $data, function($message) use ($email, $subj) {
            $message->to('screendigestadm@gmail.com')->subject($subj);
            $message->from($email);
        });

        return redirect(route("contact"))->with('successMessage', 'Message sent!');
    }
}
