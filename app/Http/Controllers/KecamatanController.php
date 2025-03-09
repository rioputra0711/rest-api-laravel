<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Kecamatan;

class KecamatanController extends Controller
{
    public function index()
    {
        return response()->json(Kecamatan::all(), 200);
    }

    public function store(Request $request)
    {
        $kecamatan = Kecamatan::create($request->all());
        return response()->json($kecamatan, 201);
    }

    public function show($id)
    {
        return response()->json(Kecamatan::findOrFail($id), 200);
    }

    public function update(Request $request, $id)
    {
        $kecamatan = Kecamatan::findOrFail($id);
        $kecamatan->update($request->all());
        return response()->json($kecamatan, 200);
    }

    public function destroy($id)
    {
        Kecamatan::findOrFail($id)->delete();
        return response()->json(['message' => 'Deleted'], 200);
    }
}
