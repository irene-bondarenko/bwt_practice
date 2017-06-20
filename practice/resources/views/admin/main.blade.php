@extends('layouts.app')
@section('content')
    <link rel="stylesheet" href="{{asset('css/admin.css')}}">
    <script src="{{asset('js/jquery-2.1.4.min.js')}}"></script>

    <div class="jumbotron">
        <div class="container">
            <h1></h1>
            <p><b></b></p>
            <p>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
            </p>

        </div>
    </div>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-10 col-md-offset-1">
                <div class="panel panel-default">
                    <div id="content">
                        @yield('content2')
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection