<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Input;
class InputAPIController extends Controller
{
    public function index()
    {
   
        $inputs = Input::all();
 
        return response()->json(['message' => 'Sukses', 'data' => $inputs]);
    }

    public function show($id)
    {
        $input = Input::find($id);
        return response()->json(['message' => 'Sukses', 'data' => $input]);
    }

    public function update(Request $request, $id)
    {
        $input = Input::find($id);
        $input->update($request->all());
        return response()->json(['message' => 'Data Berhasil Diupdate', 'data' => $input]);
    }
   
    public function simpan(Request $request)
    {
        $input = Input::create($request->all());
        return  response()->json(['message' => 'Data Berhasil Disimpan', 'data' => $input]);
    }

   

    public function destroy($id)
    {
        $input = Input::find($id);
        $input->delete();
        return response()->json(['message' => 'Data Berhasil Dihapus', 'data' => null]);
    }
}
