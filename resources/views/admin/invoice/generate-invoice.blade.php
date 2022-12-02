<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Invoice #{{ $order->id }}</title>
    <link rel="icon" href="{{ asset('assets/img/favcion.png') }}" type="image/x-icon" />
    <style>
        html,
        body {
            margin: 10px;
            padding: 10px;
            font-family: sans-serif;
        }

        h1,
        h2,
        h3,
        h4,
        h5,
        h6,
        p,
        span,
        label {
            font-family: sans-serif;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 0px !important;
        }

        table thead th {
            height: 28px;
            text-align: left;
            font-size: 16px;
            font-family: sans-serif;
        }

        table,
        th,
        td {
            border: 1px solid #ddd;
            padding: 8px;
            font-size: 14px;
        }

        .heading {
            font-size: 24px;
            margin-top: 12px;
            margin-bottom: 12px;
            font-family: sans-serif;
        }

        .small-heading {
            font-size: 18px;
            font-family: sans-serif;
        }

        .total-heading {
            font-size: 18px;
            font-weight: 700;
            font-family: sans-serif;
        }

        .order-details tbody tr td:nth-child(1) {
            width: 20%;
        }

        .order-details tbody tr td:nth-child(3) {
            width: 20%;
        }

        .text-start {
            text-align: left;
        }

        .text-end {
            text-align: right;
        }

        .text-center {
            text-align: center;
        }

        .company-data span {
            margin-bottom: 4px;
            display: inline-block;
            font-family: sans-serif;
            font-size: 14px;
            font-weight: 400;
        }

        .no-border {
            border: 1px solid #fff !important;
        }

        .bg-blue {
            background-color: #ff1e00;
            color: #fff;
        }
    </style>
</head>

<body>

    <table class="order-details">
        <thead>
            <tr>
                <h1 style="text-transform: uppercase; color: red; text-align: center">Tech-Shop</h1>
            </tr>
            <tr class="bg-blue">
                <th width="50%" colspan="2">Order Details</th>
                <th width="50%" colspan="2">User Details</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Mã Đơn Hàng</td>
                <td># {{ $order->id }}</td>

                <td>Họ Tên</td>
                <td>{{ $order->fullname }}</td>
            </tr>
            <tr>
                <td>Tracking ID/No.</td>
                <td>{{ $order->tracking_no }}</td>

                <td>Email</td>
                <td>{{ $order->email }}</td>
            </tr>
            <tr>
                <td>Ngày Đặt Hàng</td>
                <td>{{ $order->created_at->format('d-m-Y h:i A') }}</td>

                <td>Số Điện Thoại</td>
                <td>{{ $order->phone }}</td>
            </tr>
            <tr>
                <td>Phương Thức Thanh Toán</td>
                <td>{{ $order->payment_mode }}</td>

                <td>Địa Chỉ</td>
                <td>{{ $order->address }}</td>
            </tr>
            <tr>
                <td>Tình Trạng Đơn Hàng</td>
                <td style="text-transform: uppercase">{{ $order->status_message }}</td>

                <td>Mã Định Danh</td>
                <td>{{ $order->pincode }}</td>
            </tr>
        </tbody>
    </table>

    <table>
        <thead>
            <tr class="bg-blue">
                <th class="no-border text-start heading" colspan="6">
                    Order Items
                </th>
            </tr>
            <tr>
                <th>Item ID</th>
                <th>Product</th>
                <th>Color</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Total</th>
            </tr>

        </thead>
        <tbody>
            @php
                $totalPrice = 0;
            @endphp
            @forelse ($order->orderItems as $orderItem)
                <tr>
                    <td>{{ $orderItem->id }}</td>
                    <td>{{ $orderItem->product->name }}</td>
                    <td>
                        @if ($orderItem->productColor)
                            <div class="price"
                                style="width: 30px; height: 30px; border-radius: 50%; background-color: {{ $orderItem->productColor->color->code }}"></div>
                        @else
                            <label class="price">No Color</label>
                        @endif
                    </td>
                    <td>{{ $orderItem->price }}</td>
                    <td>{{ $orderItem->quantity }}</td>
                    <td class="fw-bold">{{ $orderItem->quantity * $orderItem->price }}</td>
                    @php
                        $totalPrice += $orderItem->price * $orderItem->quantity;
                    @endphp
                </tr>
            @empty
                <tr>
                    <td colspan="6">No Orders Available</td>
                </tr>
            @endforelse
            <tr>
                <td colspan="5" style="font-weight: bold">Total Amount :</td>
                <td colspan="1" style="font-weight: bold">{{ $totalPrice }}</td>
            </tr>
        </tbody>
    </table>
</body>

</html>
