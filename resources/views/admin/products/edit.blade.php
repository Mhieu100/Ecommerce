@extends('layouts.admin')

@section('content')
    <div class="row">
        <div class="col-md-12 grid-margin">
            <div class="card">
                <div class="card-header">
                    <h3>Edit Product
                        <a href="{{ url('admin/products') }}" class="btn btn-primary text-white btn-sm float-end">Back</a>
                    </h3>
                </div>
                <div class="card-body  bg-contents">

                    @if (session('message'))
                        <div class="alert alert-success">

                            <div>{{ session('message') }}</div>

                        </div>
                    @endif

                    <form action="{{ url('admin/products/' . $product->id) }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        @method('PUT')

                        <ul class="nav nav-tabs" id="myTab" role="tablist">
                            <li class="nav-item" role="presentation">
                                <button class="nav-link active" id="home-tab" data-bs-toggle="tab"
                                    data-bs-target="#home-tab-pane" type="button" role="tab"
                                    aria-controls="home-tab-pane" aria-selected="true">Home</button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="seotag-tab" data-bs-toggle="tab"
                                    data-bs-target="#seotag-tab-pane" type="button" role="tab"
                                    aria-controls="seotag-tab-pane" aria-selected="false">Seo-Tags</button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="details-tab" data-bs-toggle="tab"
                                    data-bs-target="#details-tab-pane" type="button" role="tab"
                                    aria-controls="details-tab-pane" aria-selected="false">Details</button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="image-tab" data-bs-toggle="tab"
                                    data-bs-target="#image-tab-pane" type="button" role="tab"
                                    aria-controls="image-tab-pane" aria-selected="false">Image</button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="color-tab" data-bs-toggle="tab"
                                    data-bs-target="#color-tab-pane" type="button" role="tab"
                                    aria-controls="color-tab-pane" aria-selected="false">Color</button>
                            </li>
                        </ul>
                        <div class="tab-content p-3" id="myTabContent">
                            <div class="tab-pane fade show active" id="home-tab-pane" role="tabpanel"
                                aria-labelledby="home-tab" tabindex="0">
                                <div class="mb-3">
                                    <label for="">Product Name</label>
                                    <input type="text" name="name" value="{{ $product->name }}" class="form-control">
                                </div>
                                <div class="mb-3">
                                    <label for="">Product Slug</label>
                                    <input type="text" name="slug" value="{{ $product->slug }}" class="form-control">
                                </div>
                                <div class="mb-3">
                                    <label for="">Description</label>
                                    <textarea type="text" name="description" class="form-control">{{ $product->description }}</textarea>
                                </div>
                                <div class="mb-3">
                                    <label for="">Small Description</label>
                                    <textarea type="text" name="small_description" class="form-control">{{ $product->small_description }}</textarea>
                                </div>
                                <div class="mb-3">
                                    <label for="">Category</label>
                                    <select name="category_id" class="form-control">
                                        @foreach ($categories as $category)
                                            <option value="{{ $category->id }}"
                                                {{ $category->id == $product->category_id ? 'selected' : '' }}>
                                                {{ $category->name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="mb-3">
                                    <label for="">Brand</label>
                                    <select name="brand" class="form-control">
                                        @foreach ($brands as $brand)
                                            <option value="{{ $brand->name }}"
                                                {{ $brand->name == $product->brand ? 'selected' : '' }}>
                                                {{ $brand->name }}
                                            </option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="seotag-tab-pane" role="tabpanel" aria-labelledby="seotag-tab"
                                tabindex="0">
                                <div class="mb-3">
                                    <label for="">Meta Title</label>
                                    <input type="text" name="meta_title" value="{{ $product->meta_title }}"
                                        class="form-control">
                                </div>
                                <div class="mb-3">
                                    <label for="">Meta Description</label>
                                    <textarea type="text" name="meta_description" class="form-control">{{ $product->meta_description }}</textarea>
                                </div>
                                <div class="mb-3">
                                    <label for="">Meta Keyword</label>
                                    <textarea type="text" name="meta_keywords" class="form-control">{{ $product->meta_keywords }}</textarea>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="details-tab-pane" role="tabpanel"
                                aria-labelledby="details-tab" tabindex="0">
                                <div class="mb-3">
                                    <label for="">Original Price</label>
                                    <input type="number" name="original_price" value="{{ $product->original_price }}"
                                        class="form-control">
                                </div>
                                <div class="mb-3">
                                    <label for="">Selling Price</label>
                                    <input type="number" name="selling_price" value="{{ $product->selling_price }}"
                                        class="form-control">
                                </div>
                                <div class="mb-3">
                                    <label for="">Quantity</label>
                                    <input type="number" name="quantity" value="{{ $product->quantity }}"
                                        class="form-control">
                                </div>
                                <div class="mb-3">
                                    <label for="">Trending</label>
                                    <input type="checkbox" name="trending"
                                        {{ $product->trending == '1' ? 'checked' : '' }}>
                                </div>
                                <div class="mb-3">
                                    <label for="">Status</label>
                                    <input type="checkbox" name="status" {{ $product->status == '1' ? 'checked' : '' }}>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="image-tab-pane" role="tabpanel" aria-labelledby="image-tab"
                                tabindex="0">
                                <div class="mb-3">
                                    <label for="">Upload Product Images</label>
                                    <input type="file" name="image[]" multiple class="form-control">
                                </div>
                                <div class="mb-3">
                                    @if ($product->productImages)
                                        <div class="row">
                                            @foreach ($product->productImages as $image)
                                                <div class="col-lg-3 mb-3">
                                                    <img src="{{ asset($image->image) }}" class="me-4" width="100px">
                                                    <a href="{{ url('admin/product-image/' . $image->id . '/delete') }}"
                                                        class="btn btn-sm btn-danger">Remove</a>
                                                </div>
                                            @endforeach
                                        </div>
                                    @else
                                        <h5>No Image Add</h5>
                                    @endif
                                </div>
                            </div>
                            <div class="tab-pane fade" id="color-tab-pane" role="tabpanel" aria-labelledby="color-tab"
                                tabindex="0">
                                <h4>Add Color</h4>
                                <label for="">Select Color Product</label>
                                <div class="row">
                                    @forelse ($colors as $color)
                                        <div class="col-md-3">
                                            <div class="p-2 border mb-3">
                                                Color : <input type="checkbox" name="colors[{{ $color->id }}]"
                                                    value="{{ $color->id }}">
                                                {{ $color->name }} <br>
                                                Quantity <input type="number" name="colorquantity[{{ $color->id }}]"
                                                    style="width: 70px ;border: 1px solid">
                                            </div>
                                        </div>
                                    @empty
                                        <div class="col-md-12">
                                            <h1>No Colors Foud</h1>
                                        </div>
                                    @endforelse
                                </div>
                            </div>
                            <div class="table-responsive">
                                <table class="table table-sm table-bordered">
                                    <thead>
                                        <tr>
                                            <th>Color Name</th>
                                            <th>Quantity</th>
                                            <th>Delete</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($product->productColors as $prodColor)
                                            <tr class="prod_color_tr">
                                                @if ($prodColor->color)
                                                    <td>{{ $prodColor->color->name }}</td>
                                                @else
                                                    <td>Not Color Foud</td>
                                                @endif
                                                <td>
                                                    <div class="input-group mb-3" style="width: 150px">
                                                        <input type="text"
                                                            class="productColorQuantity form-control form-control-sm"
                                                            value="{{ $prodColor->quantity }}">
                                                        <button type="button"
                                                            class="updateProductColorBtn btn btn-primary btn-sm text-while"
                                                            value="{{ $prodColor->id }}">Update</button>
                                                    </div>
                                                </td>
                                                <td>
                                                    <button type="button"
                                                        class="deleteProductColorBtn btn btn-danger btn-sm text-while"
                                                        value="{{ $prodColor->id }}">Delete</button>
                                                </td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
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

@section('scripts')
    <script>
        $(document).ready(function() {
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
            $(document).on('click', '.updateProductColorBtn', function() {
                var product_id = "{{ $product->id }}";
                var prod_color_id = $(this).val();
                var qty = $(this).closest('.prod_color_tr').find('.productColorQuantity').val();

                // alert(prod_color_id);

                if (qty <= 0) {
                    alert('Quantity is required');
                    return false;
                }

                var data = {
                    'product_id': product_id,
                    'qty': qty,
                };

                $.ajax({
                    type: 'POST',
                    url: '/admin/product-color/' + prod_color_id,
                    data: data,
                    success: function(response) {
                        alert(response.message)
                    }
                })
            });
            $(document).on('click', '.deleteProductColorBtn', function() {
                // var product_id = "{{ $product->id }}";
                var prod_color_id = $(this).val();
                var thisClick = $(this);
                thisClick.closest('.prod_color_tr').remove();

                $.ajax({
                    type: 'GET',
                    url: '/admin/product-color/' + prod_color_id + '/delete',
                    success: function(response) {
                        thisClick.closest('.prod_color_tr').remove();
                        alert(response.message)
                    }
                })
            });
        });
    </script>
@endsection
