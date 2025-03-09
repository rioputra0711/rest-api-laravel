<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Kelurahan;

class KelurahanController extends Controller
{
    public function index()
    {
        return response()->json(Kelurahan::all(), 200);
    }

    public function store(Request $request)
    {
        $kelurahan = Kelurahan::create($request->all());
        return response()->json($kelurahan, 201);
    }

    public function show($id)
    {
        return response()->json(Kelurahan::findOrFail($id), 200);
    }

    public function update(Request $request, $id)
    {
        $kelurahan = Kelurahan::findOrFail($id);
        $kelurahan->update($request->all());
        return response()->json($kelurahan, 200);
    }

    public function destroy($id)
    {
        Kelurahan::findOrFail($id)->delete();
        return response()->json(['message' => 'Deleted'], 200);
    }
}
