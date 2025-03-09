<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\JenisAset;

class JenisAsetController extends Controller
{
    public function index()
    {
        return response()->json(JenisAset::all(), 200);
    }

    public function store(Request $request)
    {
        $jenisAset = JenisAset::create($request->all());
        return response()->json($jenisAset, 201);
    }

    public function show($id)
    {
        return response()->json(JenisAset::findOrFail($id), 200);
    }

    public function update(Request $request, $id)
    {
        $jenisAset = JenisAset::findOrFail($id);
        $jenisAset->update($request->all());
        return response()->json($jenisAset, 200);
    }

    public function destroy($id)
    {
        JenisAset::findOrFail($id)->delete();
        return response()->json(['message' => 'Deleted'], 200);
    }
}
