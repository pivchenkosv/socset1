<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Maintext;

class BaseController extends Controller
{
    public function getIndex($id = 'welcome'){
        return view('index') -> with('id',$id);
    } 
    public function getStatic($id = 'welcome'){
        $obj = Maintext::where('url', $id)->first();
        //dd($obj);
        return view('static', compact('obj'));
    }
}
