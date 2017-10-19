<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Redirect;
use Schema;
use App\CRUDname;
use App\Http\Requests\CreateCRUDnameRequest;
use App\Http\Requests\UpdateCRUDnameRequest;
use Illuminate\Http\Request;



class CRUDnameController extends Controller {

	/**
	 * Display a listing of crudname
	 *
     * @param Request $request
     *
     * @return \Illuminate\View\View
	 */
	public function index(Request $request)
    {
        $crudname = CRUDname::all();

		return view('admin.crudname.index', compact('crudname'));
	}

	/**
	 * Show the form for creating a new crudname
	 *
     * @return \Illuminate\View\View
	 */
	public function create()
	{
	    
	    
	    return view('admin.crudname.create');
	}

	/**
	 * Store a newly created crudname in storage.
	 *
     * @param CreateCRUDnameRequest|Request $request
	 */
	public function store(CreateCRUDnameRequest $request)
	{
	    
		CRUDname::create($request->all());

		return redirect()->route(config('quickadmin.route').'.crudname.index');
	}

	/**
	 * Show the form for editing the specified crudname.
	 *
	 * @param  int  $id
     * @return \Illuminate\View\View
	 */
	public function edit($id)
	{
		$crudname = CRUDname::find($id);
	    
	    
		return view('admin.crudname.edit', compact('crudname'));
	}

	/**
	 * Update the specified crudname in storage.
     * @param UpdateCRUDnameRequest|Request $request
     *
	 * @param  int  $id
	 */
	public function update($id, UpdateCRUDnameRequest $request)
	{
		$crudname = CRUDname::findOrFail($id);

        

		$crudname->update($request->all());

		return redirect()->route(config('quickadmin.route').'.crudname.index');
	}

	/**
	 * Remove the specified crudname from storage.
	 *
	 * @param  int  $id
	 */
	public function destroy($id)
	{
		CRUDname::destroy($id);

		return redirect()->route(config('quickadmin.route').'.crudname.index');
	}

    /**
     * Mass delete function from index page
     * @param Request $request
     *
     * @return mixed
     */
    public function massDelete(Request $request)
    {
        if ($request->get('toDelete') != 'mass') {
            $toDelete = json_decode($request->get('toDelete'));
            CRUDname::destroy($toDelete);
        } else {
            CRUDname::whereNotNull('id')->delete();
        }

        return redirect()->route(config('quickadmin.route').'.crudname.index');
    }

}
