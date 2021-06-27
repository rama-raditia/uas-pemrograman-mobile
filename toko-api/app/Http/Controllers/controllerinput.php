<?php

namespace App\Http\Controllers;

use App\Models\Input;
use Illuminate\Http\Request;

class InputController extends Controller
{
    
    public function index()
    {
      
        $inputs = Input::all(); 
        return view('inputs.index', compact(['inputs']));
    }

    public function create()
    {
        return view('inputs.create');
    }

    public function simpan(Request $request)
    {
        Input::create($request->all());
        return  redirect('/inputs');
    }


    public function update(Request $request, $id)
    {
        $input = Input::find($id);
        $input->update($request->all());
        return redirect('/inputs');
    }

    public function edit($id)
    {
        $upload = Input::find($id); 
        return view('inputs.edit', compact(['input']));
    }


    public function destroy($id)
    {
        $input = Input::find($id);
        $input->delete();
        return redirect('/inputs');
    }
}