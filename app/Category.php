<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
class Category extends Model
{
    protected $table = 'categories';
    
    public function scopeSelection($query)
    {
        return $query->select(
        	'id',
        	'vendor_id',
        	'name_' . app()->getLocale() . ' as name',
        	'description',
        	'image',
        	'status'
        );
    }
}
