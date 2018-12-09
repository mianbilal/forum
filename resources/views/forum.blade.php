@extends('layouts.app')

@section('content')

@foreach($discussions as $d)
<div class="card">
    <div class="card-header">
  <img src="{{$d->user->avatar}}" width="55px" height="55px" alt="avatar image">&nbsp;&nbsp;
  <span>{{$d->user->name}}, &nbsp;&nbsp;<b>{{$d->created_at->diffForHumans()}}</b></span>

 
  @if($d->hasBestAnswer())

 <span class="badge badge-pill badge-success">CLOSED</span>
 @else
  <span class="badge badge-pill badge-info">OPEN</span>

  @endif
  <a href="{{route('discuss',['slug'=>$d->slug])}}" class="btn btn-outline-info btn-sm float-right">view</a>
</div>
<div class="card-body">
    <h3 class="text-center">
        {{$d->title}}
    </h3>

    <p class="text-center">
        
        {{$d->content}}
         
    </p>
  </div>
  <div class="card-footer">
 
      <p>
          {{$d->replies->count()}} Replies

          <a href="{{route('channel',['slug'=>$d->channel->slug])}}" class="badge badge-primary float-right">{{$d->channel->title}}</a> 
      </p>      

  </div>
</div><br>

@endforeach

<div class="text-center">{{$discussions->links()}}</div>

@endsection
