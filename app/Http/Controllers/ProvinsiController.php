<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Provinsi;

class ProvinsiController extends Controller
{
    public function index()
    {
        return response()->json(Provinsi::all(), 200);
    }

    public function store(Request $request)
    {
        $provinsi = Provinsi::create($request->all());
        return response()->json($provinsi, 201);
    }

    public function show($id)
    {
        return response()->json(Provinsi::findOrFail($id), 200);
    }

    public function update(Request $request, $id)
    {
        $provinsi = Provinsi::findOrFail($id);
        $provinsi->update($request->all());
        return response()->json($provinsi, 200);
    }

    public function destroy($id)
    {
        Provinsi::findOrFail($id)->delete();
        return response()->json(['message' => 'Deleted'], 200);
    }
}
