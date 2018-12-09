<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>Forum </title>

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>
    <script src="{{ asset('https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js') }}"></script>
    <script src="{{ asset('https://cdnjs.cloudflare.com/ajax/libs/vue/2.5.16/vue.min.js') }}"></script>
    <script src="{{ asset('js/toastr.min.js') }}"></script>
    <script src="{{ asset('js/v-toaster.js') }}"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.12.0/highlight.min.js"></script>
    
    



    <!-- Fonts -->
    <link rel="dns-prefetch" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600" rel="stylesheet" type="text/css">

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.12.0/styles/atom-one-dark.min.css" rel="stylesheet">
    <link href="{{ asset('css/v-toaster.css') }}" rel="stylesheet">
    <link href="{{ asset('css/toastr.min.css') }}" rel="stylesheet">
</head>
<body>
<script>hljs.initHighlightingOnLoad();</script>
    <script>
        @if(Session::has('success'))
          toastr.success("{{Session::get('success')}}")
        @endif

        @if(Session::has('info'))
          toastr.info("{{Session::get('info')}}")
        @endif

        @if(Session::has('error'))
          toastr.error("{{Session::get('error')}}")
        @endif
    </script>
    <div id="app">
        <nav class="navbar navbar-expand-md navbar-light navbar-laravel">
            <div class="container">
                <a class="navbar-brand" href="{{ url('/') }}">
                    Forum
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <!-- Left Side Of Navbar -->
                    <ul class="navbar-nav mr-auto">

                    </ul>

                    <!-- Right Side Of Navbar -->
                    <ul class="navbar-nav ml-auto">
                        <!-- Authentication Links -->
                        @guest
                            <li class="nav-item">
                                <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                            </li>
                        @else
                            <li class="nav-item dropdown">
                                <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                    {{ Auth::user()->name }} <span class="caret"></span>
                                </a>

                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Logout') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                        @csrf
                                    </form>
                                </div>
                            </li>
                        @endguest
                    </ul>
                </div>
            </div>
        </nav>

       <main class="py-4">


<div class="container">

    <div class="row">

 <div class="col-lg-3">
   
    <a class="form-control btn btn-primary text-center" href="{{route('discuss.create')}}"><b>Create New Discussion</b></a><br><br>

    <a href="{{route('channels.create')}}" class="form-control btn btn-success text-center"><b>Create New Channel</b></a><br>

    <br>
   <div class="card">
     <div class="card-body">
        <div class="list-group" >
          
          <div class="list-group">
              
<a href="/forum" class="list-group-item list-group-item-action text-center">Home</a>
<a href="/forum?filter=me" class="list-group-item list-group-item-action text-center">My Discussions</a>
<a href="/forum?filter=solved" class="list-group-item list-group-item-action text-center">Answered Discussion</a>
<a href="/forum?filter=unsolved" class="list-group-item list-group-item-action text-center">UnAnswered Discussion</a>
@if(Auth::check())
@if(Auth::user()->admin)
<a href="/channels" class="list-group-item list-group-item-action text-center">Manage Channels</a>
@endif
@endif

          </div>
            
            
</div>
</div>
</div>

<br>
    <div class="card">
     <div class="card-header text-center"><h4>Available Channels</h4></div>
     <div class="card-body">
        <div class="list-group" >
          
            
                @foreach($channels as $channel)
                
                    
                    <a href="{{route('channel',['slug'=>$channel->slug])}}" class="list-group-item list-group-item-action text-center">{{$channel->title}}</a>
                    
                      
                @endforeach
            
           
</div>
</div>
</div>

    </div>

        <div class="col-lg-8">
               @yield('content')
        </div>
    </div>

</div>
         
        </main>
    </div>
</body>
</html>
