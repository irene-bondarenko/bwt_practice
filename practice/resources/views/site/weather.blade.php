@extends('admin.main')

@section('content2')
    <div class="page-header">
        <h1>
            <a href="javascript:history.back(1)">
                <span class="glyphicon glyphicon-menu-left" style="vertical-align: middle" aria-hidden="true"></span>
                Назад
            </a><br>
            <small>Прогноз погоды на сегодня</small>
        </h1>
    </div>



    @if(!Auth::guest())




        <?php
        $text = file_get_contents( 'https://www.gismeteo.ua/weather-zaporizhia-5093/' );
        preg_match( '/<div class="temp">(.*?)<\\/div>/is' , $text , $title );
        echo $title[1];
        ?>




    @endif
    @if(Auth::guest())
        <h3>Чтобы просматривать данную страницу <a href="/login">войдите</a> или <a href="/register">зарегистрируйтесь</a></h3>
    @endif




@endsection