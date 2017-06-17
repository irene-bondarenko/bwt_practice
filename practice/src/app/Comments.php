<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Comments extends Model
{
    protected $table="feedback";
    protected $fillable=['name','email','content'];



   /** public function article()
    {
        return $this->belongsTo('App\Articles','article_id','id');
    }

    static public function FullComments()
    {
        return $comments=\DB::table('comments')   //делаем выборку из таблицы comments
        ->join('articles','articles.id','=','comments.article_id') // добавляем к выборке таблицу comments с условием
        ->select('comments.*','articles.title as article') // указываем, что будем выбирать, из comments выбираем все, а из article, только название title
        ->get();
//запрос будет такой "select c.*, a.title from comments c join articles a on c.article_id=a.id;"
    }
    * **/
}
