<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Redirect;
use Schema;
use App\Catalog;
use App\Http\Requests\CreateCatalogRequest;
use App\Http\Requests\UpdateCatalogRequest;
use Illuminate\Http\Request;



class CatalogController extends Controller {

	/**
	 * Display a listing of catalog
	 *
     * @param Request $request
     *
     * @return \Illuminate\View\View
	 */
	public function index(Request $request)
    {
        $catalog = Catalog::all();

		return view('admin.catalog.index', compact('catalog'));
	}

	/**
	 * Show the form for creating a new catalog
	 *
     * @return \Illuminate\View\View
	 */
	public function create()
	{
	    
	    
	    return view('admin.catalog.create');
	}

	/**
	 * Store a newly created catalog in storage.
	 *
     * @param CreateCatalogRequest|Request $request
	 */
	public function store(CreateCatalogRequest $request)
	{
	    
		Catalog::create($request->all());

		return redirect()->route(config('quickadmin.route').'.catalog.index');
	}

	/**
	 * Show the form for editing the specified catalog.
	 *
	 * @param  int  $id
     * @return \Illuminate\View\View
	 */
	public function edit($id)
	{
		$catalog = Catalog::find($id);
	    
	    
		return view('admin.catalog.edit', compact('catalog'));
	}

	/**
	 * Update the specified catalog in storage.
     * @param UpdateCatalogRequest|Request $request
     *
	 * @param  int  $id
	 */
	public function update($id, UpdateCatalogRequest $request)
	{
		$catalog = Catalog::findOrFail($id);

        

		$catalog->update($request->all());

		return redirect()->route(config('quickadmin.route').'.catalog.index');
	}

	/**
	 * Remove the specified catalog from storage.
	 *
	 * @param  int  $id
	 */
	public function destroy($id)
	{
		Catalog::destroy($id);

		return redirect()->route(config('quickadmin.route').'.catalog.index');
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
            Catalog::destroy($toDelete);
        } else {
            Catalog::whereNotNull('id')->delete();
        }

        return redirect()->route(config('quickadmin.route').'.catalog.index');
    }

}
