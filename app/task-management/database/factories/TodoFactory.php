<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

use App\Models\Todo;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Todo>
 */
class TodoFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    protected $model = Todo::class;


    public function definition(): array
    {
        return [
            'type' => $this->faker->randomElement(['Incomplete', 'To Do', 'Doing', 'Under Review', 'Completed', 'Over Due']),
        ];
    }
}
