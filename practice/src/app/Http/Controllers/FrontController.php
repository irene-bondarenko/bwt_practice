<?php

namespace App\Http\Controllers;

use App\Article;
use App\Category;
use App\Comments;
use Illuminate\Http\Request;

use App\Http\Requests;

class FrontController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('site.index');
    }


    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
  /**  public function show($id)
    {
        $comments = Article::where('public', '=', 1)->find($id)->comments()->where('public', '=', '1')->get();
        $article = Article::where('public', '=', 1)->find($id);
        return view('site.show', ['article' => $article, 'comments' => $comments]);
    }
**/
    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */





    public function weather()
    {
        return view('site.weather');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    public function text()
    {
        return view('site.text');
    }

    public function feedback()
    {

        return view('site.feedback')


            ;
    }



}
