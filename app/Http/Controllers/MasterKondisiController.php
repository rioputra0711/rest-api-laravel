<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\MasterKondisi;

class MasterKondisiController extends Controller
{
    public function index()
    {
        return response()->json(MasterKondisi::all(), 200);
    }

    public function store(Request $request)
    {
        $MasterKondisi = MasterKondisi::create($request->all());
        return response()->json($MasterKondisi, 201);
    }

    public function show($id)
    {
        return response()->json(MasterKondisi::findOrFail($id), 200);
    }

    public function update(Request $request, $id)
    {
        $MasterKondisi = MasterKondisi::findOrFail($id);
        $MasterKondisi->update($request->all());
        return response()->json($MasterKondisi, 200);
    }

    public function destroy($id)
    {
        MasterKondisi::findOrFail($id)->delete();
        return response()->json(['message' => 'Deleted'], 200);
    }
}
