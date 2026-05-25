<?php

namespace App\Http\Controllers;

use App\Models\DataDukung;
use App\Models\DataDukungFile;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class DataDukungController extends Controller
{
    public function index(Request $request)
    {
        $show = $request->input('show', 10);
        $search = $request->input('q');

        $dataDukung = DataDukung::with([
            'opd',
            'indikator.klaster',
            'files'
        ])
            ->when($search, function ($query) use ($search) {
                $query->whereHas('opd', function ($q) use ($search) {
                    $q->where('name', 'like', "%{$search}%");
                })
                    ->orWhereHas('indikator', function ($q) use ($search) {
                        $q->where('name', 'like', "%{$search}%");
                    })
                    ->orWhereHas('indikator.klaster', function ($q) use ($search) {
                        $q->where('name', 'like', "%{$search}%");
                    });
            })
            ->latest()
            ->paginate($show);

        if ($request->ajax()) {
            return view('beranda.data-dukung-list', compact('dataDukung'))->render();
        }

        return view('beranda.data-dukung', compact('dataDukung'));
    }

    public function preview($id)
    {
        $file = DataDukungFile::findOrFail($id);

        $path = storage_path('app/public/' . $file->file);

        if (!file_exists($path)) {
            abort(404, 'File tidak ditemukan');
        }

        return response()->file($path);
    }
    
    public function destroyFile($id)
    {
        try {

            $file = DataDukungFile::findOrFail($id);

            if (Storage::exists($file->file)) {
                Storage::delete($file->file);
            }

            $file->delete();

            return response()->json([
                'success' => true,
                'message' => 'File berhasil dihapus'
            ]);

        } catch (\Exception $e) {

            return response()->json([
                'success' => false,
                'message' => 'Gagal menghapus file: ' . $e->getMessage()
            ], 500);

        }
    }
}