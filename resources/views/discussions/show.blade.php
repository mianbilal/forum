@extends('layouts.app')

@section('content')

<div class="card">
    <div class="card-header">
  <img src="{{asset($d->user->avatar)}}" width="55px" height="55px">&nbsp;&nbsp;
  <span>{{$d->user->name}}, &nbsp;&nbsp;<b>{{$d->created_at->diffForHumans()}}</b>

    &nbsp;&nbsp;<b>( {{$d->user->points}} )</b></span>
  @if($d->is_being_wacthed_by_auth_user())

<a href="{{route('discussion.unwatch',['id'=>$d->id])}}" class="btn btn-outline-danger btn-sm float-right" style="margin-right: 8px">Unwatch</a>&nbsp;&nbsp;

  @else
@if(auth::id() ==$d->user->id)
<a href="{{route('discussion.watch',['id'=>$d->id])}}" class="btn btn-outline-info btn-sm float-right" style="margin-right: 8px">watch  </a>
<a href="{{route('discuss.edit',['slug'=>$d->slug])}}" class="btn btn-outline-info btn-sm float-right" style="margin-right: 8px">  Edit  </a>
 @if($d->hasBestAnswer())

 <span class="badge badge-pill badge-success">CLOSED</span>
 @else
  <span class="badge badge-pill badge-info">OPEN</span>

  @endif
@else
<a href="/login" class="btn btn-outline-info btn-sm float-right">Login to watch</a>

@endif

  @endif
</div>
<div class="card-body">
    <h3 class="text-center">
        {{$d->title}}
    </h3>
     <hr>
    <p class="text-center">
        
        {!!Markdown::convertToHtml($d->content)!!}
         
    </p>

    <hr>

   @if($best_answer)

   <div class="text-center" style="padding: 10px">
     <h3>Best Answer</h3>
     <div class="card border-success">
      <div class="card-header text-white bg-success">
        <img src="{{asset($best_answer->user->avatar)}}" width="55px" height="55px">&nbsp;&nbsp;
  <span>{{$best_answer->user->name}}</span>
  &nbsp;&nbsp;<b>( {{$best_answer->user->points}} )</b>

      </div>
      <div class="card-body">
        {{$best_answer->content}}
      </div>
     </div>
   </div>

   @endif

  </div>
  <div class="card-footer">
 
      <p>
          {{$d->replies->count()}} Replies

           <a href="{{route('channel',['slug'=>$d->channel->slug])}}" class="badge badge-primary float-right">{{$d->channel->title}}</a> 
      </p>      

  </div>
</div><br>
<h4><strong>Comments on this post:</strong></h4>
@foreach($d->replies as $r)

<div class="card">

    <div class="card-header">
  <img src="{{asset($r->user->avatar)}}" width="55px" height="55px" >&nbsp;&nbsp;
  <span>{{$r->user->name}}, &nbsp;&nbsp;<b>{{$r->created_at->diffForHumans()}}</b>

    &nbsp;&nbsp;<b>( {{$r->user->points}} )</b></span>

@if(!$best_answer)
 @if(Auth::id()==$d->user->id)
  <a href="{{route('discussion.best.answer',['id'=>$r->id])}}" class="btn btn-secondary btn-sm float-right">Mark as Best Answer</a>

  <a href="{{route('reply.edit',['id'=>$r->id])}}" class="btn btn-info btn-sm float-right" style="margin-right: 5px">Edit</a>
  @endif
  @endif


</div>
<div class="card-body">
    <p class="text-center">
        
        {{$r->content}}
         
    </p>
  </div>
  <div class="card-footer">
 
     @if($r->is_liked_by_auth_user())

        <a href="{{route('reply.unlike',['id'=>$r->id])}}" class="badge badge-danger">Unlike <span class="badge badge-pill badge-light">{{$r->likes->count()}}</span></a>

     @else


         <a href="{{route('reply.like',['id'=>$r->id])}}" class="badge badge-primary">Like <span class="badge badge-pill badge-light">{{$r->likes->count()}}</span></a>

     @endif     

  </div>
</div><br>

@endforeach

<div class="card">

    <div class="card-body">
        @include('layouts.errors')
        @if(Auth::check())
        <form method="post" action="{{route('discussion.reply',['id'=>$d->id])}}">
            {{csrf_field()}}
       
            <div class="form-group">
               
                <label for="reply"><h3>Leave a reply....</h3> </label>
                
                <textarea name="reply" id="reply" class="form-control" cols="7" rows="7"></textarea>

            </div>

              <div class="form-group">
                
                <button class="btn btn-secondary float-right">Leave a reply</button>
            </div>

        </form>
        @else

                <h2>Please Login to leave a reply...</h2>
        @endif

    </div>
</div>

@endsection
