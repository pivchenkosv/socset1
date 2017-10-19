<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Laraveldaily\Quickadmin\Observers\UserActionsObserver;


use Illuminate\Database\Eloquent\SoftDeletes;

class CRUDname extends Model {

    use SoftDeletes;

    /**
    * The attributes that should be mutated to dates.
    *
    * @var array
    */
    protected $dates = ['deleted_at'];

    protected $table    = 'crudname';
    
    protected $fillable = ['FieldDBname'];
    

    public static function boot()
    {
        parent::boot();

        CRUDname::observe(new UserActionsObserver);
    }
    
    
    
    
}