<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
class Client extends Model
{
    protected $table = 'clients';
    
    
    public function scopeSelection($query)
    {
        return $query->select(
        	'id',
        	'vendor_id',
        	'name_' . app()->getLocale() . ' as name',
        	'mobile',
        	'address',
        	'tax_date',
        	'tax_number',
        	'additional_mobile',
        	'notes',
        	'client_type',
        	'user_type'
        );
    }
}
