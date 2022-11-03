@extends('layouts.admin')

@section('content')
    <div class="row">
        <div class="col-md-12 grid-margin">

            @if (session('message'))
                <div class="alert alert-success">{{ session('message') }}</div>
            @endif

            <div class="card">
                <div class="card-header">
                    <h3>List Colors
                        <a href="{{ url('admin/colors/create') }}" class="btn btn-primary text-white btn-sm float-end">Add
                            Color</a>
                    </h3>
                </div>
                <div class="card-body">

                </div>
            </div>
        </div>
    </div>
@endsection
