<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Database\QueryException;
use SocialAuth;
use Session;

class SocialsController extends Controller
{
   public function auth($provider){

       return   SocialAuth::authorize($provider);

   }

   public function auth_callback($provider){

   
   		   SocialAuth::login($provider,function($user,$details){

        	//dd($details);
                
                   $user->name=$details->full_name;

                   $user->avatar=$details->avatar;

                   $user->email=$details->email;

                   //$user->password=$details->password;

                  

                   $user->save();
              
       }); 
     return redirect('/home');

   	

   }
}
