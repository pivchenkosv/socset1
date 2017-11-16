<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
use App\Catalog;
class ProductsController extends Controller
{
    public function getOne($id = 0)
    {
        $product = Product::find($id);
        return view('product', compact('product'));
    }
    public function getAll()
    {
        $catalogs = Catalog::all();
        return view('products', compact('products')); 
    }
}
