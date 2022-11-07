<?php

namespace App\Http\Livewire\Frontend\Product;

use Illuminate\Support\Facades\Auth;
use Livewire\Component;
use App\Models\Wishlist;

class View extends Component
{
    public $category, $product, $prodColorSelectedQuantity;

    public function addToWishList($productId)
    {
        if (Auth::check()) {
            if (Wishlist::where('user_id', auth()->user()->id)->where('product_id', $productId)->exists()) {
                // session()->flash('message', 'Already add to wishlist');
                $this->dispatchBrowserEvent('message', [
                    'text' => 'Already add to wishlist',
                    'type' => 'warning',
                    'status' => 409
                ]);
                return false;
                return false;
            } else {
                $wishlist = Wishlist::create([
                    'user_id' => auth()->user()->id,
                    'product_id' => $productId,
                ]);
                // session()->flash('message', 'Add to wishlist successfully');
                $this->dispatchBrowserEvent('message', [
                    'text' => 'Add to wishlist successfully',
                    'type' => 'success',
                    'status' => 200
                ]);
                return false;
            }
        } else {
            // session()->flash('message', 'Please login to continue');
            $this->dispatchBrowserEvent('message', [
                'text' => 'Please login to continue',
                'type' => 'info',
                'status' => 401
            ]);
            return false;
        }
    }
    public function colorSelected($productColorId)
    {
        $productColor =  $this->product->productColors()->where('id',  $productColorId)->first();
        $this->prodColorSelectedQuantity = $productColor->quantity;
        if ($this->prodColorSelectedQuantity == 0) {
            $this->prodColorSelectedQuantity = 'outofStock';
        }
    }
    public function mount($category, $product)
    {
        $this->category = $category;
        $this->product = $product;
    }
    public function render()
    {
        return view('livewire.frontend.product.view', [
            'category' => $this->category,
            'product' => $this->product
        ]);
    }
}