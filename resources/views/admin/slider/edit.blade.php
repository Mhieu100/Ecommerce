@extends('layouts.admin')

@section('content')
    <div class="row">
        <div class="col-md-12 grid-margin">
            <div class="card">
                <div class="card-header">
                    <h3>Edit Slider
                        <a href="{{ url('admin/sliders') }}" class="btn btn-primary text-white btn-sm float-end">Back</a>
                    </h3>
                </div>
                <div class="card-body bg-contents">

                    <form action="{{ url('admin/sliders/'. $slider->id) }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        @method('PUT')

                        <div class="mb-3">
                            <label for="">Title</label>
                            <input type="text" name="title" value="{{ $slider->title }}" class="form-control">
                        </div>
                        <div class="mb-3">
                            <label for="">Description</label>
                            <textarea name="description" class="form-control">{{ $slider->description }}</textarea>
                        </div>
                         <div class="mb-3">
                            <label for="">Image</label>
                            <input type="file" name="image" class="form-control">
                            <img src="{{ asset("$slider->image") }}" style="width: 70px; height: 70px" alt="">
                        </div>
                        <div class="mb-3">
                            <label for="">Status</label> <br>
                            <input type="checkbox" {{ $slider->status == '1' ? 'checked' : '' }} name="status"> <small>Checked = Hidden | Unchecked = Visible</small>
                        </div>
                        <div>
                            <button type="submit" class="btn btn-primary">Update</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
