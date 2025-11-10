<?php

namespace App\Models;
use App\Models\Category;
use App\Models\Writer;
use App\Models\PopularPost;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Post extends Model
{
    use HasFactory;
    protected $fillable = ['title','slug','excerpt','body','image','category_id','writer_id'];

    public function category() { return $this->belongsTo(Category::class); }
    public function writer() { return $this->belongsTo(Writer::class); }
    public function popular() { return $this->hasOne(PopularPost::class); }
}
