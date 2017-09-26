<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class BaseController extends Controller
{
    public function getIndex($id = 'welcome'){
        return view('index') -> with('id',$id);
    }
}
