<?php

namespace App\Http\Controllers\Admin;


use App\Http\Controllers\Controller;
use App\Http\Requests\ColorFormRequest;
use Illuminate\Http\Request;


class ColorController extends Controller
{
    public function index()
    {
        return view('admin.colors.index');
    }
    public function create()
    {
        return view('admin.colors.create');
    }
    public function store(ColorFormRequest $request)
    {
        $validatData = $request->validated();
        Color::create($validatData);
    }
}