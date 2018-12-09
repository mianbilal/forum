@extends('layouts.app')

@section('content')

   
    <div class="card">
     <div class="card-header text-center"><b>Edit Replies</b></div>
     <div class="card-body">
 @include('layouts.errors')
 <br>
      <form action="{{route('reply.update',['id'=>$reply->id])}}" method="post">
          {{csrf_field()}}
          

            <div class="form-group">
            <label for="content">Edit a reply</label>

            <textarea name="content" id="content" cols="7" rows="7" class="form-control">{{$reply->content}}</textarea>
            </div>

            <div class="form-group">
              
              <button class="btn btn-success float-right" type="submit">Update Reply</button>

            </div>

       
        

      </form>
         
          </div>
</div>
@endsection
