<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Laraveldaily\Quickadmin\Observers\UserActionsObserver;


use Illuminate\Database\Eloquent\SoftDeletes;

class Items extends Model {

    use SoftDeletes;

    /**
    * The attributes that should be mutated to dates.
    *
    * @var array
    */
    protected $dates = ['deleted_at'];

    protected $table    = 'items';
    
    protected $fillable = [
          'name',
          'body'
    ];
    

    public static function boot()
    {
        parent::boot();

        Items::observe(new UserActionsObserver);
    }
    
    
    
    
}