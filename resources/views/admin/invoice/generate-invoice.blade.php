<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Invoice #{{ $order->id }}</title>
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" />
    <!-- plugins:css -->
    <link rel="stylesheet" href="{{ asset('admin/vendors/mdi/css/materialdesignicons.min.css') }}">
    <link rel="stylesheet" href="{{ asset('admin/vendors/base/vendor.bundle.base.css') }}">
    <!-- endinject -->
    <!-- plugin css for this page -->
    <link rel="stylesheet" href="{{ asset('admin/vendors/datatables.net-bs4/dataTables.bootstrap4.css') }}">
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <link rel="stylesheet" href="{{ asset('admin/css/style.css') }}">
    <!-- endinject -->
    <link rel="shortcut icon" href="{{ asset('admin/images/favicon.png') }}" />
</head>

<body>

    <div class="card">
        <div class="card-body bg-contents">
            <div class="shadow bg-white p-3">
                <div class="row">
                    <div class="d-flex justify-content-center p-4 mb-4">
                        <img src="{{ asset('assets/img/logo.png') }}" height="50" loading="lazy"
                            style="margin-top: -1px;" />
                    </div>
                    <hr>
                    <div class="col-md-6">
                        <h5>Order Detail</h5>
                        <hr>
                        <div class="table-responsive">
                            <table class="table table-bordered table-striped">
                                <tbody>
                                    <tr>
                                        <td>Order ID</td>
                                        <td># {{ $order->id }}</td>
                                    </tr>
                                    <tr>
                                        <td>Tracking ID/No.</td>
                                        <td>{{ $order->tracking_no }}</td>
                                    </tr>
                                    <tr>
                                        <td>Order Create Date</td>
                                        <td>{{ $order->created_at->format('d-m-Y h:i A') }}</td>
                                    </tr>
                                    <tr>
                                        <td>Payment Mode</td>
                                        <td>{{ $order->payment_mode }}</td>
                                    </tr>
                                    <tr>
                                        <td>Order Status Message</td>
                                        <td style="text-transform: uppercase">{{ $order->status_message }}</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <h5>User Detail</h5>
                        <hr>
                        <div class="table-responsive">
                            <table class="table table-bordered table-striped">
                                <tbody>
                                    <tr>
                                        <td>Fullname</td>
                                        <td>{{ $order->fullname }}</td>
                                    </tr>
                                    <tr>
                                        <td>Email</td>
                                        <td>{{ $order->email }}</td>
                                    </tr>
                                    <tr>
                                        <td>Phone</td>
                                        <td>{{ $order->phone }}</td>
                                    </tr>
                                    <tr>
                                        <td>Address</td>
                                        <td>{{ $order->address }}</td>
                                    </tr>
                                    <tr>
                                        <td>Pin Code</td>
                                        <td>{{ $order->pincode }}</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <br>
                <h5>Order Items</h5>
                <hr>
                <div class="table-responsive">
                    <table class="table table-bordered table-striped">
                        <thead>
                            <th>Item ID</th>
                            <th>Image</th>
                            <th>Product</th>
                            <th>Color</th>
                            <th>Price</th>
                            <th>Quantity</th>
                            <th>Total</th>
                        </thead>
                        <tbody>
                            @php
                                $totalPrice = 0;
                            @endphp
                            @forelse ($order->orderItems as $orderItem)
                                <tr>
                                    <td>{{ $orderItem->id }}</td>
                                    <td>
                                        @if ($orderItem->product->productImages)
                                            <img src="{{ asset($orderItem->product->productImages[0]->image) }}"
                                                style="width: 50px; height: 50px" alt="">
                                        @endif
                                    </td>
                                    <td>{{ $orderItem->product->name }}</td>
                                    <td>
                                        @if ($orderItem->productColor)
                                            <label class="price"
                                                style="width: 30px; height: 30px; border-radius: 50%; background-color: {{ $orderItem->productColor->color->code }}"></label>
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
                                    <td colspan="7">No Orders Available</td>
                                </tr>
                            @endforelse
                            <tr>
                                <td colspan="6" class="fw-bold">Total Amount :</td>
                                <td colspan="1" class="fw-bold">{{ $totalPrice }}</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <h5 class="text-center py-3">End</h5>
            </div>
        </div>
    </div>

</body>
<!-- plugins:js -->
<script src="{{ asset('admin/vendors/base/vendor.bundle.base.js') }}"></script>
<!-- endinject -->
<!-- Plugin js for this page-->
<script src="{{ asset('admin/vendors/chart.js/Chart.min.js') }}"></script>
<script src="{{ asset('admin/vendors/datatables.net/jquery.dataTables.js') }}"></script>
<script src="{{ asset('admin/vendors/datatables.net-bs4/dataTables.bootstrap4.js') }}"></script>
<!-- End plugin js for this page-->
<!-- inject:js -->
<script src="{{ asset('admin/js/off-canvas.js') }}"></script>
<script src="{{ asset('admin/js/hoverable-collapse.js') }}"></script>
<script src="{{ asset('admin/js/template.js') }}"></script>
<!-- endinject -->
<!-- Custom js for this page-->
<script src="{{ asset('admin/js/dashboard.js') }}"></script>
<script src="{{ asset('admin/js/data-table.js') }}"></script>
<script src="{{ asset('admin/js/jquery.dataTables.js') }}"></script>
<script src="{{ asset('admin/js/dataTables.bootstrap4.js') }}"></script>
<!-- End custom js for this page-->

</html>
