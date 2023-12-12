<?php

namespace App\Models;

use App\Models\Todo;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Attachment extends Model
{
    use HasFactory;

    protected $fillable = [
        'task_id',
        'filename'
    ];

    public function todo()
    {
        return $this->belongsTo(Todo::class);
    }
}
