<div>
    <div class="py-3 py-md-5 bg-light">
        <div class="container">

            <div class="row">
                <div class="col-md-12">
                    <div class="shopping-cart">

                        <div class="cart-header d-none d-sm-none d-mb-block d-lg-block">
                            <div class="row">
                                <div class="col-md-2">
                                    <h4>Products</h4>
                                </div>
                                <div class="col-md-2">
                                    <h4>Color</h4>
                                </div>
                                <div class="col-md-2">
                                    <h4>Price</h4>
                                </div>
                                <div class="col-md-2">
                                    <h4>Total</h4>
                                </div>
                                <div class="col-md-2">
                                    <h4>Quantity</h4>
                                </div>
                                <div class="col-md-2">
                                    <h4>Remove</h4>
                                </div>
                            </div>
                        </div>

                        @forelse ($cart as $itemCart)
                            @if ($itemCart->product)
                                <div class="cart-item">
                                    <div class="row">
                                        <div class="col-md-2 my-auto">
                                            <a
                                                href="{{ url('collections/' . $itemCart->product->category->slug . '/' . $itemCart->product->slug) }}">
                                                <label class="product-name">
                                                    @if ($itemCart->product->productImages)
                                                        <img src="{{ asset($itemCart->product->productImages[0]->image) }}"
                                                            style="width: 50px; height: 50px" alt="">
                                                    @endif
                                                    {{ $itemCart->product->name }}
                                                </label>
                                            </a>
                                        </div>
                                        <div class="col-md-2 my-auto">
                                            @if ($itemCart->productColor)
                                                <label class="price"
                                                    style="width: 30px; height: 30px; border-radius: 50%; background-color: {{ $itemCart->productColor->color->code }}"></label>
                                            @else
                                                <label class="price">No Color</label>
                                            @endif
                                        </div>
                                        <div class="col-md-2 my-auto">
                                            <label class="price">{{ $itemCart->product->selling_price }}</label>
                                        </div>
                                        <div class="col-md-2 my-auto">
                                            <label class="price">{{ $itemCart->product->selling_price * $itemCart->quantity }}</label>
                                            @php
                                                $totalPrice += $itemCart->product->selling_price * $itemCart->quantity
                                            @endphp
                                        </div>
                                        <div class="col-md-2 col-7 my-auto">
                                            <div class="quantity">
                                                <div class="input-group">
                                                    <button class="btn btn1" wire:loading.attr="disabled" wire:click="decrementQuantity({{$itemCart->id}})"><i
                                                            class="fa fa-minus"></i></button>
                                                    <input type="text"
                                                        value="{{ $itemCart->quantity }}" readonly
                                                        class="input-quantity" />
                                                    <button class="btn btn1" wire:loading.attr="disabled" wire:click="incrementQuantity({{$itemCart->id}})"><i
                                                            class="fa fa-plus"></i></button>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-2 col-5 my-auto">
                                            <div class="remove">
                                                <button type="button" wire:loading.attr="disabled" wire:click="removeItemCart({{ $itemCart->id }})" class="btn btn-danger btn-sm">
                                                    <span wire:loading.remove wire:target="removeItemCart({{ $itemCart->id }})">
                                                         <i class="fa fa-trash"></i> Remove
                                                    </span>
                                                    <span wire:loading wire:target="removeItemCart({{ $itemCart->id }})">
                                                         <i class="fa fa-trash"></i> Removing
                                                    </span>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            @endif
                        @empty
                            <div>
                                No Product In Cart
                            </div>
                        @endforelse
                        <div class="row">
                            <div class="col-md-8 my-md-auto mt-3">
                                <h4>Get the best deals & Offers <a href="{{ url('/collections') }}">Shop Now</a></h4>
                            </div>
                            <div class="col-md-4 mt-3">
                                <div class="shadow-sm bg-white p-3">
                                    <h4>Total:
                                        <span class="float-end" >{{ $totalPrice }}</span>
                                    </h4>
                                    <hr>
                                    <a href="{{ url('/checkout') }}" class="btn btn-warning w-100">Check Out</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
