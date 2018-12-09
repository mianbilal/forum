@extends('layouts.app')

@section('content')

   
    <div class="card">
     <div class="card-header text-center"><b>Update Discussion</b></div>
     <div class="card-body">
 @include('layouts.errors')
 <br>
      <form action="{{route('discussion.update',['id'=>$discussion->id])}}" method="post">
          {{csrf_field()}}
          

            <div class="form-group">
            <label for="content">Ask a Question</label>

            <textarea name="content" id="content" cols="7" rows="7" class="form-control">{{$discussion->content}}</textarea>
            </div>

            <div class="form-group">
              
              <button class="btn btn-success float-right" type="submit">Update Discussion</button>

            </div>

       
        

      </form>
         
          </div>
</div>
@endsection
