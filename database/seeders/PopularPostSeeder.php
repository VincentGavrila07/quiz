<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Post;
use App\Models\PopularPost;

class PopularPostSeeder extends Seeder
{
    public function run(): void
    {
        $posts = Post::inRandomOrder()->take(6)->get();

        $rank = 1;
        foreach ($posts as $post) {
            PopularPost::updateOrCreate(
                ['post_id' => $post->id],
                ['rank' => $rank++]
            );
        }
    }
}
