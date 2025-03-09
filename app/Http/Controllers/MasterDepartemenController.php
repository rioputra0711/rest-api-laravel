<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\MasterDepartemen;

class MasterDepartemenController extends Controller
{
    public function index()
    {
        return response()->json(MasterDepartemen::all(), 200);
    }

    public function store(Request $request)
    {
        $MasterDepartemen = MasterDepartemen::create($request->all());
        return response()->json($MasterDepartemen, 201);
    }

    public function show($id)
    {
        return response()->json(MasterDepartemen::findOrFail($id), 200);
    }

    public function update(Request $request, $id)
    {
        $MasterDepartemen = MasterDepartemen::findOrFail($id);
        $MasterDepartemen->update($request->all());
        return response()->json($MasterDepartemen, 200);
    }

    public function destroy($id)
    {
        MasterDepartemen::findOrFail($id)->delete();
        return response()->json(['message' => 'Deleted'], 200);
    }
}
