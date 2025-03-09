<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\MasterJadwal;

class MasterJadwalController extends Controller
{
    public function index()
    {
        return response()->json(MasterJadwal::all(), 200);
    }

    public function store(Request $request)
    {
        $MasterJadwal = MasterJadwal::create($request->all());
        return response()->json($MasterJadwal, 201);
    }

    public function show($id)
    {
        return response()->json(MasterJadwal::findOrFail($id), 200);
    }

    public function update(Request $request, $id)
    {
        $MasterJadwal = MasterJadwal::findOrFail($id);
        $MasterJadwal->update($request->all());
        return response()->json($MasterJadwal, 200);
    }

    public function destroy($id)
    {
        MasterJadwal::findOrFail($id)->delete();
        return response()->json(['message' => 'Deleted'], 200);
    }
}
