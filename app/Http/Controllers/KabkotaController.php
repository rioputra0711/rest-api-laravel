<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Kabkota;

class KabkotaController extends Controller
{
    public function index()
    {
        return response()->json(Kabkota::all(), 200);
    }

    public function store(Request $request)
    {
        $kabkota = Kabkota::create($request->all());
        return response()->json($kabkota, 201);
    }

    public function show($id)
    {
        return response()->json(Kabkota::findOrFail($id), 200);
    }

    public function update(Request $request, $id)
    {
        $kabkota = Kabkota::findOrFail($id);
        $kabkota->update($request->all());
        return response()->json($kabkota, 200);
    }

    public function destroy($id)
    {
        Kabkota::findOrFail($id)->delete();
        return response()->json(['message' => 'Deleted'], 200);
    }
}
