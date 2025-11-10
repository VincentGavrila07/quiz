<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Writer;

class WriterSeeder extends Seeder
{
    public function run(): void
    {
        // buat 6 writer contoh
        Writer::factory()->count(6)->create();
    }
}
