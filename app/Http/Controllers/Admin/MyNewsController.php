<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\News;
use App\Models\Kategori;
use Illuminate\Support\Facades\Auth;

class MyNewsController extends Controller
{
    public function index()
    {
        return view('admin.my-news.index');
    }

    public function create()
    {
        $categories = Kategori::all();

        return view('admin.my-news.create', compact('categories'));
    }

    public function edit(News $news)
    {
        $categories = Kategori::all();

        return view('admin.my-news.edit', compact('news', 'categories'));
    }
}