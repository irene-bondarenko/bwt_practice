<?php

namespace App\Http\Controllers;


use App\Feedback;
use Illuminate\Http\Request;

use App\Http\Requests;

class FrontController extends Controller
{

    public function index()
    {
        return view('site.index');
    }

    public function weather()
    {
        return view('site.weather');
    }

    public function text()
    {
        return view('site.text');
    }

    public function feedback()
    {
        return view('site.feedback');
    }

    public function thanks()
    {
        return view('site.thanks');
    }

}
