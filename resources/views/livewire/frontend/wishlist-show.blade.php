<div>

    <div class="py-3 py-md-5 bg-light">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="shopping-cart">

                        <div class="cart-header d-none d-sm-none d-mb-block d-lg-block">
                            <div class="row">
                                <div class="col-md-6">
                                    <h4>Products</h4>
                                </div>
                                <div class="col-md-2">
                                    <h4>Price</h4>
                                </div>
                                <div class="col-md-2">
                                    <h4>Remove</h4>
                                </div>
                            </div>
                        </div>
                        @forelse ($wishlist as $itemWishlist)
                            @if ($itemWishlist->product)
                                <div class="cart-item">
                                    <div class="row">
                                        <div class="col-md-6 my-auto">
                                            <a
                                                href="{{ url('collections/' . $itemWishlist->product->category->slug . '/' . $itemWishlist->product->slug) }}">
                                                <label class="product-name">
                                                    <img src="{{ $itemWishlist->product->productImages[0]->image }}"
                                                        style="width: 50px; height: 50px"
                                                        alt="{{ $itemWishlist->product->name }}">
                                                    {{ $itemWishlist->product->name }}
                                                </label>
                                            </a>
                                        </div>
                                        <div class="col-md-2 my-auto">
                                            <label class="price">{{ $itemWishlist->product->selling_price }}</label>
                                        </div>
                                        <div class="col-md-2 col-5 my-auto">
                                            <div class="remove">
                                                <button type="button" href=""
                                                    wire:click="removeWishlish({{ $itemWishlist->id }})"
                                                    class="btn btn-danger btn-sm">
                                                    <span wire:loading.remove
                                                        wire:target="removeWishlish({{ $itemWishlist->id }})">
                                                        <i class="fa fa-trash"></i> Remove
                                                    </span>
                                                    <span wire:loading
                                                        wire:target="removeWishlish({{ $itemWishlist->id }})"> <i
                                                            class="fa fa-trash"></i> Removing</span>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            @endif

                        @empty
                            <h4>No Wishlist Add</h4>
                        @endforelse
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
