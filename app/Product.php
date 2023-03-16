<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Spatie\Translatable\HasTranslations;

class Product extends Model
{
    use HasTranslations;
    public $translatable = ['names','descriptions','slug'];

    public function scopeSelection($query)
    {
        return $query->select(
        	'id',
        	'category_id',
        	'vendor_id',
        	'shop_id',
        	'serial_number',
        	'selling_price',
        	'buying_price',
        	'quantity',
        	'tax',
        	'name_' . app()->getLocale() . ' as name',
        	'image'
        );
    }
}
