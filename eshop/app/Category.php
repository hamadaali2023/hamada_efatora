<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Spatie\Translatable\HasTranslations;
class Category extends Model
{
    use HasTranslations;
    protected $table = 'categories';
    public $translatable = ['name'];
    
    // public function subCategories()
    // {
    //   return $this->hasMany(SubCategory::class,'categoryId','id');
    // }
    // public function subCategories(){
    //     return $this->hasMany(SubCategory::class);
    // }
}
