<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use App\Channel;

use Session;

class ChannelsController extends Controller
{
    

    
    public function index()
    {
       return view('channels.index')->with('channels',Channel::all());
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('channels.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        //dd($request->all());
$this->validate($request,[
             'title'=>'required',
            
        ]);

        Channel::create([

            'title'=>$request->title,
            'slug'=>str_slug($request->title)

        ]);

        Session::flash('success','Channel Created Successfully.');

        return redirect()->route('channels.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $channel=Channel::find($id);

        return view('channels.edit')->with('channel',$channel);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $channel= Channel::find($id);

        $channel->title=$request->title;
        $channel->slug=str_slug($request->title);

        $channel->save();

        Session::flash('success','Channel Edited Successfully.');

        return redirect()->route('channels.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
       Channel::destroy($id);
 
        Session::flash('success','Channel Deleted Successfully.');

        return redirect()->route('channels.index');        

    }
}