<?php

use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
       App\User::Create([
          'name'=> 'admin',
          'password'=>bcrypt('admin'),
          'email'=>('admin@forum.com'),

          'admin'=>1,

          'avatar'=>'avatars/1.png'

       ]);


        App\User::Create([
          'name'=> 'Alia Samreen',
          'password'=>bcrypt('password'),
          'email'=>('alia@forum.com'),

          'avatar'=>'avatars/2.png'

       ]);
    }
}
