@extends('layouts.app')

@section('content')

            <div class="card" style="width: 50rem;">
                <div class="card-header text-center"><h1>Channels</h1></div>

                <div class="card-body">

                  <br>

                  <br>
                      <div class="table-responsive">
                      <table class="table table-bordered">
                          
                          <thead class="thead-light text-center">
                               
                               <th><h4><b>Name</b></h4></th>

                               <th><h4><b>Edit</b></h4></th>

                               <th><h4><b>Delete</b></h4></th>


                          </thead>

                          <tbody>
                              
                              @foreach($channels as $channel)

                              <tr class="text-center ">
                                  
                                  <td>{{$channel->title}}</td>

                                  <td><a href="{{route('channels.edit',['channel'=>$channel->id])}}" class="btn btn-info">Edit</a></td>
                                  <td>
                                  <form action="{{route('channels.destroy',['channel'=>$channel->id])}}" method="post">
                                    
                                    {{csrf_field()}}

                                    {{method_field('DELETE')}}

                                    <button class="btn btn-danger" type="submit">Delete</button>

                                  </form>
                                </td>



                              </tr>



                              @endforeach


                          </tbody>

                      </table>
                    
                </div>
              </div>
            </div>
      

@endsection
