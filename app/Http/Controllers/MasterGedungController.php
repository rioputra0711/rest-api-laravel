<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\MasterGedung;

class MasterGedungController extends Controller
{
    public function index()
    {
        return response()->json(MasterGedung::all(), 200);
    }

    public function store(Request $request)
    {
        $MasterGedung = MasterGedung::create($request->all());
        return response()->json($MasterGedung, 201);
    }

    public function show($id)
    {
        return response()->json(MasterGedung::findOrFail($id), 200);
    }

    public function update(Request $request, $id)
    {
        $MasterGedung = MasterGedung::findOrFail($id);
        $MasterGedung->update($request->all());
        return response()->json($MasterGedung, 200);
    }

    public function destroy($id)
    {
        MasterGedung::findOrFail($id)->delete();
        return response()->json(['message' => 'Deleted'], 200);
    }
}
