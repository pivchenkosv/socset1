<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Products;
class ProductsController extends Controller
{
    public function getOne($id = 0)
    {
        $products = Product::find($id);
        return view('products', compact('products'));
    }
    public function getAll()
    {
        $catalogs = Catalog::all();
        return view('products', compact('products')); 
    }
}
