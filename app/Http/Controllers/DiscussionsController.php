<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Channel;
use App\Reply;
use App\Discussion;
use App\User;
use Auth;
use Session;
use Notification;
class DiscussionsController extends Controller
{
    public function create(){
      
      if(Auth::id()){
    	return view('discussions.discuss');
    }else{

      return redirect()->route('login');
    }
    }

    public function store(){
//dd(Request()->all());
    	
$this->validate(request(),[
             'title'=>'required',
             'channel_id'=>'required',
             'content'=>'required'

        ]);

$discussion=Discussion::create([
                'title'=>request()->title,
                'channel_id'=>request()->channel_id,
                'content'=>request()->content,
                'user_id'=>Auth::id(),
                'slug'=>str_slug(request()->title)


]);

      Session::flash('success','Discussion created.');

      return redirect()->route('discuss',['slug'=>$discussion->slug]);

    }

    public function show($slug){

    	$discussions=Discussion::where('slug',$slug)->first();

      $best_answer=$discussions->replies()->where('best_answer',1)->first();

    	return view('discussions.show')
      ->with('d',$discussions)
      ->with('best_answer',$best_answer);
    }

    public function reply($id){

      $this->validate(request(),[
             'reply'=>'required'

        ]);

      $d=Discussion::find($id);

     
      // dd($watchers);

      $reply=Reply::create([
        'user_id'=> Auth::id(),
        'discussion_id'=>$id,
        'content'=>request()->reply

      ]);
         
         $reply->user->points +=50;
         $reply->user->save();
       $watchers=array();

      foreach($d->watchers as $watcher):
       
       array_push($watchers, User::find($watcher->user_id));


       endforeach;

       Notification::send($watchers,new \App\Notifications\NewReplyAdded($d)); 


      Session::flash('succes','Replied');

      return redirect()->back();
    }

    public function edit($slug){

      {
        return view('discussions.edit',['discussion'=>Discussion::where('slug',$slug)->first()]);
      }
    }

    public function update($id){

         $this->validate(request(),[
                 
                 'content'=>'required'
                
         ]);

         $d=Discussion::find($id);

        $d->content=request()->content;

        $d->save();

        Session::flash('success','Discussion edited.');

        return redirect()->route('discuss',['slug'=>$d->slug]);
             }

}
