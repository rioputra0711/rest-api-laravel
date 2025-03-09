<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\MasterStatus;

class MasterStatusController extends Controller
{
    public function index()
    {
        return response()->json(MasterStatus::all(), 200);
    }

    public function store(Request $request)
    {
        $MasterStatus = MasterStatus::create($request->all());
        return response()->json($MasterStatus, 201);
    }

    public function show($id)
    {
        return response()->json(MasterStatus::findOrFail($id), 200);
    }

    public function update(Request $request, $id)
    {
        $MasterStatus = MasterStatus::findOrFail($id);
        $MasterStatus->update($request->all());
        return response()->json($MasterStatus, 200);
    }

    public function destroy($id)
    {
        MasterStatus::findOrFail($id)->delete();
        return response()->json(['message' => 'Deleted'], 200);
    }
}
