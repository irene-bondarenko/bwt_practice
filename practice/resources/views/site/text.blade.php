@extends('admin.main')
@section('content2')

    <div class="page-header">
        <h1>
            <a href="javascript:history.back(1)">
                <span class="glyphicon glyphicon-menu-left" style="vertical-align: middle" aria-hidden="true"></span>
                Назад
            </a><br>
            <small>Отзывы</small></h1>
    </div>

    @if(!Auth::guest())

        <?php
        $i = 0;
        $feedbacks = \App\Feedback::All();?>
        @foreach($feedbacks as $feedback)
            <?php if($i==0):?>
            <div class="row">
                <?php endif;?>
                <div class="col-sm-4 col-md-6">
                    <div class="thumbnail">
                        <img src="{{$feedback->preview}}">
                        <div class="caption">
                            <h3>
                                <p style="font-size: 25px; margin-bottom: 2px; color: dodgerblue;">{{$feedback->name}}</p>
                            </h3>
                            <p class="blog-post-meta">E-mail: {{$feedback->email}}</p>
                            <p class="blog-post-meta">Дата: {{$feedback->created_at}}</p>
                            <p>
                                {{$feedback->content}}

                            </p>
                        </div>
                    </div>
                </div>
                <?php if($i==1):?>
            </div>
            <?php
            $i = 0;
            else:
                $i++;
            endif;?>

        @endforeach

    @endif
    @if(Auth::guest())
        <h3>Чтобы просматривать данную страницу <a href="/login">войдите</a> или <a href="/register">зарегистрируйтесь</a></h3>
    @endif

@endsection