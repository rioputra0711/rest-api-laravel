<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Merek;

class MerekController extends Controller
{
    public function index()
    {
        return response()->json(Merek::all(), 200);
    }

    public function store(Request $request)
    {
        $merek = Merek::create($request->all());
        return response()->json($merek, 201);
    }

    public function show($id)
    {
        return response()->json(Merek::findOrFail($id), 200);
    }

    public function update(Request $request, $id)
    {
        $merek = Merek::findOrFail($id);
        $merek->update($request->all());
        return response()->json($merek, 200);
    }

    public function destroy($id)
    {
        Merek::findOrFail($id)->delete();
        return response()->json(['message' => 'Deleted'], 200);
    }
}
