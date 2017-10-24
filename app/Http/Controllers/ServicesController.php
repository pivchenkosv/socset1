<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Catalog;

class ServicesController extends Controller
{
    public function getCatalog($id = 0)
    {
        $catalog = Catalog::find($id);
        //$products = Product::where('catalog_id',$id) -> get();
        return view('catalog', compact('catalog'));
    }
    public function getAll()
    {
        $catalogs = Catalog::all();
        return view('catalogs', compact('catalogs')); 
    }
}