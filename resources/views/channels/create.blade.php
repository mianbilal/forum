@extends('layouts.app')



@section('content')

 
            <div class="card" style="width: 40rem;">
                <div class="card-header text-center"><h1>Create a New Channel</h1></div>

                <div class="card-body">
                  @include('layouts.errors')
                   <form action="{{route('channels.store')}}" method="post">

                    {{csrf_field()}}

                    <div class="form-group">

                      <label for="title">Name</label>  
                        <input type="text" name="title" class="form-control" id="title">
                        


                    </div>
                       
                    <div class="form-group">
                        
                       <div class="text-center">

                        <button class="btn btn-success" type="submit"> Save </button> |

                        <button class="btn btn-default" type="reset"> Clear </button>
                           

                       </div>  

                    </div>


                   </form>
                  

                </div>
            </div>
@endsection
