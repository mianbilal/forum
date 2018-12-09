@extends('layouts.app')

@section('content')

   
    <div class="card">
     <div class="card-header text-center"><b>Create New Discusion</b></div>
     <div class="card-body">
 @include('layouts.errors')
 <br>
      <form action="{{route('discussion.store')}}" method="post">
          {{csrf_field()}}
          <div class="form-group">
            <label for="title">Title</label>
            <input type="text" name="title" value="{{old('title')}}" class="form-control">
          </div>

          <div class="form-group">
             <label for="channel">Pick a channel</label>
             <select id="channel_id" name="channel_id" class="form-control">
                  
                   @foreach($channels as $channel)

                  <option value="{{ $channel->id }}">{{$channel->title}}</option>

                  @endforeach
                  
               </select>
            </div>

            <div class="form-group">
            <label for="content">Ask a Question</label>

            <textarea name="content" id="content" cols="7" rows="7" class="form-control">{{old('content')}}</textarea>
            </div>

            <div class="form-group">
              
              <button class="btn btn-success float-right" type="submit">Start Discussion</button>

            </div>

       
        

      </form>
         
          </div>
</div>
@endsection
