<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Laraveldaily\Quickadmin\Observers\UserActionsObserver;


use Illuminate\Database\Eloquent\SoftDeletes;

class Product extends Model {

    use SoftDeletes;

    /**
    * The attributes that should be mutated to dates.
    *
    * @var array
    */
    protected $dates = ['deleted_at'];

    protected $table    = 'product';
    
    protected $fillable = [
          'name',
          'body',
          'picture',
          'catalog_id',
          'price',
          'vip',
          'status',
          'currency',
          'small_description'
    ];
    

    public static function boot()
    {
        parent::boot();

        Product::observe(new UserActionsObserver);
    }
    
    public function catalog()
    {
        return $this->hasOne('App\Catalog', 'id', 'catalog_id');
    }


    
    
    
}