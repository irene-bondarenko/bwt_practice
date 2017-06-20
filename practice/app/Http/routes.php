<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

use App\Http\Middleware\RoleMiddleware;

Route::group(['prefix'=>'adminzone', 'middleware' => ['auth', RoleMiddleware::class]], function()

{
    Route::get('/', function()
    {
        return view('admin.dashboard');
    });

    Route::resource('users','UsersController');
    Route::get('comments','CommentsController@show');
    Route::get('comments/delete/{id}','CommentsController@delete');
    Route::get('comments/published/{id}','CommentsController@published');
});


Route::get('/', 'FrontController@index');
Route::get('weather','FrontController@weather');

Route::get('feedback','FrontController@feedback');
Route::post('feedback/store', 'FeedbackController@store');
Route::get('feedback/showAll', 'FeedbackController@showAll');

Route::get('thanks','FrontController@thanks');

Route::get('text','FrontController@text');
Route::auth();
Route::get('/home', 'HomeController@index');
