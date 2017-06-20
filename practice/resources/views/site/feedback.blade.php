@extends('admin.main')
@section('content2')
    <div class="page-header">
        <h1>
            <a href="javascript:history.back(1)">
                <span class="glyphicon glyphicon-menu-left" style="vertical-align: middle" aria-hidden="true"></span>
                Назад
            </a><br>
            <small>Обратная связь</small></h1>
    </div>






    <form method="POST" action="{{action('FeedbackController@store')}}" enctype="multipart/form-data">
        <input type="hidden" name="_token" value="{{ csrf_token() }}">
        <h3><b>Оставьте отзыв:</h3><br>
        <div class="form-group{{ $errors->has('name') ? ' has-error' : '' }}">
            <label for="name" class="col-md-4 control-label">Имя</label>

            <div class="col-md-6">
                <input id="name" type="text" class="form-control" name="name" value="{{ old('name') }}">

                @if ($errors->has('name'))
                    <span class="help-block">
                                        <strong>{{ $errors->first('name') }}</strong>
                                    </span>
                @endif
            </div>
        </div>
        <br></br>

        <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
            <label for="email" class="col-md-4 control-label">E-Mail</label>

            <div class="col-md-6">
                <input id="email" type="email" class="form-control" name="email" value="{{ old('email') }}">
            </div>
        </div>
        <br></br>
        <textarea name="content" id="content" class="form-control"></textarea><br>
        <input type="submit" class="btn-lg btn-primary" value="Отправить"/>
    </form>







@endsection