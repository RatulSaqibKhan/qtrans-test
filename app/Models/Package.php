<?php

namespace App\Models;

use App\Casts\Json;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Package extends Model
{
    use HasFactory;

    protected $fillable = [
        'package_type',
        'field_of_text',
        'language_id',
        'number_of_words',
        'is_complementary',
        'duration',
        'discount',
        'name',
        'email'
    ];

    protected $casts = [
        'language_id' => Json::class
    ];
}
