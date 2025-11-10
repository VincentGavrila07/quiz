<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Post;
use App\Models\Category;
use App\Models\Writer;

class PostSeeder extends Seeder
{
    public function run(): void
    {
        $categories = Category::all();
        $writers = Writer::all();

        if ($categories->count() === 0 || $writers->count() === 0) {
            $this->command->error('Categories or Writers empty. Run CategorySeeder and WriterSeeder first.');
            return;
        }

        Post::factory()->count(12)->create();

    }
}
