<?php

use Illuminate\Database\Seeder;
use App\Channel;

class ChannelsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $channel1=['title'=>'Laravel','slug'=>str_slug('Laravel')];
        $channel2=['title'=>'CodeIgnitor','slug'=>str_slug('CodeIgnitor')];
        $channel3=['title'=>'Bootstrap','slug'=>str_slug('Bootstrap')];
        $channel4=['title'=>'Spark','slug'=>str_slug('Spark')];
        $channel5=['title'=>'Wordpress','slug'=>str_slug('Wordpress')];


        Channel::create($channel1);
        Channel::create($channel2);
        Channel::create($channel3);
        Channel::create($channel4);
        Channel::create($channel5);
    }
}
