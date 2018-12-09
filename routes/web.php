<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/forum', [

'uses'=>'ForumsController@index',

'as'=> 'forum'

]);

Route::get('{provider}/auth',[
	
'uses'=>'SocialsController@auth',

'as'=> 'social.auth'
]);

Route::get('{provider}/redirect',[
	
'uses'=>'SocialsController@auth_callback',

'as'=> 'social.callback'
]);

Route::group(['middleware'=>'auth'],function(){

          Route::resource('channels','ChannelsController');

});

Route::get('discussions/discuss',[

'uses' =>'DiscussionsController@create',

'as' =>'discuss.create'

]);

Route::get('discussions/edit/{slug}',[

'uses' =>'DiscussionsController@edit',

'as' =>'discuss.edit'

]);

Route::get('discuss/{slug}',[

'uses' =>'DiscussionsController@show',

'as' =>'discuss'

]);

Route::get('channel/{slug}',[

'uses' =>'ForumsController@channel',

'as' =>'channel'

]);


Route::post('discuss/store',[

'uses' =>'DiscussionsController@store',

'as' =>'discussion.store'

]);

Route::post('discuss/update/{id}',[

'uses' =>'DiscussionsController@update',

'as' =>'discussion.update'

]);

Route::post('discuss/reply/{id}',[

'uses' =>'DiscussionsController@reply',

'as' =>'discussion.reply'

]);

Route::get('discuss/watch/{id}',[

'uses' =>'WatchersController@watch',

'as' =>'discussion.watch'

]);

Route::get('discuss/unwatch/{id}',[

'uses' =>'WatchersController@unwatch',

'as' =>'discussion.unwatch'

]);

Route::get('discuss/best/reply/{id}',[

'uses' =>'RepliesController@best_answer',

'as' =>'discussion.best.answer'

]);


Route::get('reply/like/{id}',[

'uses' =>'RepliesController@like',

'as' =>'reply.like'

]);

Route::get('reply/edit/{id}',[

'uses' =>'RepliesController@edit',

'as' =>'reply.edit'

]);

Route::post('reply/update/{id}',[

'uses' =>'RepliesController@update',

'as' =>'reply.update'

]);

Route::get('reply/unlike/{id}',[

'uses' =>'RepliesController@unlike',

'as' =>'reply.unlike'

]);
