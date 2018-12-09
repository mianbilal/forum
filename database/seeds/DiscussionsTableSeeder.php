<?php

use Illuminate\Database\Seeder;
use App\Discussion;

class DiscussionsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $t1='Laravel Protects';
         $t2='PHP Protects';
          $t3='React.JS Protects';
           $t4='Vue.js Protects';

           $d1=[
                'title'=>$t1,
                'content'=>'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                'channel_id'=>1,
                'user_id'=>2,
                'slug'=>str_slug($t1)
           ];

            $d2=[
                'title'=>$t2,
                'content'=>'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                'channel_id'=>3,
                'user_id'=>1,
                'slug'=>str_slug($t2)
           ];

            $d3=[
                'title'=>$t3,
                'content'=>'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                'channel_id'=>2,
                'user_id'=>2,
                'slug'=>str_slug($t3)
           ];

            $d4=[
                'title'=>$t4,
                'content'=>'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                'channel_id'=>3,
                'user_id'=>1,
                'slug'=>str_slug($t4)
           ];

           Discussion::create($d1);
           Discussion::create($d2);
           Discussion::create($d3);
           Discussion::create($d4);
    }
}
