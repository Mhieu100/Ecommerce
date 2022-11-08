<?php

namespace App\Http\Livewire\Frontend\Checkout;

use Livewire\Component;
use App\Models\Cart;

class CheckoutShow extends Component
{
    public $cart, $totalProductAmount;

    public function totalProductAmount()
    {
        $this->cart =Cart::where('user_id', auth()->user()->id)->get();
        foreach ($this->cart as $itemCart) {
            $this->totalProductAmount += $itemCart->product->selling_price * $itemCart->quantity;
        }
        return $this->totalProductAmount;
    }

    public function render()
    {
        $this->totalProductAmount = $this->totalProductAmount();
        return view('livewire.frontend.checkout.checkout-show',[
            'totalProductAmount' => $this->totalProductAmount,
        ]);
    }
}