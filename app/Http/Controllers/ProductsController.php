<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Products;
class ProductsController extends Controller
{
    public function getCatalog($id = 0)
    {
        $products = Product::where('catalog_id',$id) -> get();
        return view('products', compact('products'));
    }
    public function getAll()
    {
        $catalogs = Catalog::all();
        return view('products', compact('products')); 
    }
}
