<?php
/**
 * Created by PhpStorm.
 * User: Irene_
 * Date: 17.06.2017
 * Time: 12:46
 */

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Feedback;
use App\Http\Requests;

class FeedbackController extends Controller
{
    public function store(Request $request)
    {
        $this->validate($request, [
            'name' => 'required|max:100|min:1',
            'email' => 'required|email',
            'content'=>'required|min:1|max:400'
        ]);
        $all=$request->all();
        Feedback::create($all);
        return redirect()->action('FrontController@thanks');

        /**return back()->with('message','Спасибо за отзыв!');**/
    }
}