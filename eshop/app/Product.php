<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Spatie\Translatable\HasTranslations;

class Product extends Model
{
    use HasTranslations;
    public $translatable = ['names','descriptions','slug'];

    
    // protected $fillable = ['categoryId','name','description','price','quantity','modal_number','size','color','slug'];
    
    // public function setSizeAttribute($value)
    // {
    //     $this->attributes['size'] = json_encode($value);
    // }

    // public function getSizeAttribute($value)
    // {
    //     return $this->attributes['size'] = json_decode($value);
    // }


    // public function setColorAttribute($value)
    // {
    //     $this->attributes['color'] = json_encode($value);
    // }

    // public function getColorAttribute($value)
    // {
    //     return $this->attributes['color'] = json_decode($value);
    // }
}
