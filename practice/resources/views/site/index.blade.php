

@extends('admin.main')

@section('content2')


    <div class="page-header">
        <h1>
            Практика BWT<br>
            <small>Задание по практике</small>
        </h1>
    </div>

    <ul style="font-size: 25px; margin-bottom: 2px;">
           
            <li> <a href="{{ url('/weather') }}">Погода</a></li>
            <li> <a href="{{ url('/feedback') }}">Обратная связь</a></li>
            <li> <a href="{{ url('/text') }}">Отзывы</a></li>
    </ul>



    <?php
    $i = 0;
    ?>

@endsection