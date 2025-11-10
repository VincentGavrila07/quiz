<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Category;
use App\Models\Writer;
/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Post>
 */
class PostFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $category = Category::inRandomOrder()->first();
        $writer = Writer::inRandomOrder()->first();

        return [
            'title' => $this->faker->sentence(6, true),
            'slug' => $this->faker->unique()->slug(),
            'excerpt' => $this->faker->sentence(12, true),
            'body' => $this->faker->paragraphs(5, true),
            'image' => 'https://picsum.photos/800/450?random=' . $this->faker->numberBetween(1, 200),
            'category_id' => $category ? $category->id : null,
            'writer_id' => $writer ? $writer->id : null,
            'created_at' => $this->faker->dateTimeBetween('-6 months', 'now'),
            'updated_at' => now(),
        ];
    }
}
