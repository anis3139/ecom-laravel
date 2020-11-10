@extends('layout.app')

@section('content')


@include('shop-component.Hero')


<!-- Shoping Cart Section Begin -->
<section class="shoping-cart spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="shoping__cart__table">
                    <table>
                        <thead>
                            <tr>
                                <th class="shoping__product">Products</th>
                                <th>Price</th>
                                <th>Quantity</th>
                                <th>Total</th>
                                <th>Status</th>
                            </tr>
                        </thead>
                        @foreach($orderData as $orderItem)
                        <tbody>
                            <tr>
                                <td  class="shoping__cart__item">
                                <a href="{{route('product.view', $orderItem->product_id)}}"> <img src="{{$orderItem->image}}" alt=""></a>
                                   
                                    <h5>   {{$orderItem->product_name}}</h5>
                                </td>
                                <td class="shoping__cart__price">
                                    $<?php echo $orderItem->price / $orderItem->quantity; ?>
                                </td>
                                <td class="shoping__cart__quantity">
                                    <h5>{{$orderItem->quantity}}</h5>
                                    <!-- <div class="quantity">
                                        <div class="pro-qty">
                                            <input type="text" value="1">
                                        </div>
                                    </div> -->
                                </td>
                                <td class="shoping__cart__total">
                                    ${{$orderItem->price}}
                                </td>
                                <td class="shoping__cart__item__close">
                                    <h5><?php if ($orderItem->status == "0") {
                                            echo "Processing";
                                        } elseif ($orderItem->status == "1") {
                                            echo "Within OneDay";
                                        } else {
                                            echo "On the Way";
                                        } ?></h5>
                                    <!-- <span class="icon_close"></span> -->
                                </td>
                            </tr>
                        </tbody>
                        @endforeach
                    </table>
                </div>
            </div>
        </div>

</section>
<!-- Shoping Cart Section End -->




@endsection







@section('script')
@endsection