<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Meta -->
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <meta name="description" content="">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta name="author" content="">
    <meta name="keywords" content="MediaCenter, Template, eCommerce">
    <meta name="robots" content="all">
    @yield('meta')
    <title>@yield('title')</title>

    <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href="{{ asset('fontend') }}/assets/css/bootstrap.min.css">

    <!-- Customizable CSS -->
    <link rel="stylesheet" href="{{ asset('fontend') }}/assets/css/main.css">
    <link rel="stylesheet" href="{{ asset('fontend') }}/assets/css/blue.css">
    <link rel="stylesheet" href="{{ asset('fontend') }}/assets/css/owl.carousel.css">
    <link rel="stylesheet" href="{{ asset('fontend') }}/assets/css/owl.transitions.css">
    <link rel="stylesheet" href="{{ asset('fontend') }}/assets/css/animate.min.css">
    <link rel="stylesheet" href="{{ asset('fontend') }}/assets/css/rateit.css">
    <link rel="stylesheet" href="{{ asset('fontend') }}/assets/css/bootstrap-select.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.css" type="text/css"
        media="all" />
    <!-- Icons/Glyphs -->
    <link rel="stylesheet" href="{{ asset('fontend') }}/assets/css/font-awesome.css">
    <link rel="stylesheet" type="text/css" href="{{ asset('backend') }}/lib/toastr/toastr.css">
    <!-- Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Roboto:300,400,500,700' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,600,600italic,700,700italic,800'
        rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
    <script src="https://js.stripe.com/v3/"></script>

    <style>
        .search-area {
            position: relative;
        }

        #suggestProduct {
            position: absolute;
            top: 100%;
            left: 0;
            width: 100%;
            background: #fff;
            z-index: 999;
            border-radius: 4px;
            margin-top: 2px;
        }

    </style>
</head>

<body class="cnt-home">
    <!-- ============================================== HEADER ============================================== -->
    @include('fontend.inc.header')

    <!-- ============================= HEADER : END =============================== -->
    @yield('content')


    {{-- ================= Brand =========== --}}
    {{-- @include('fontend.inc.brand') --}}


    </div><!-- /.container -->
    </div><!-- /#top-banner-and-menu -->




    <!-- ============================================================= FOOTER ============================================================= -->
    <footer id="footer" class="footer color-bg">

        <div class="footer-bottom">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-6 col-md-3">
                        <div class="module-heading">
                            <h4 class="module-title">Contact Us</h4>
                        </div><!-- /.module-heading -->

                        <div class="module-body">
                            <ul class="toggle-footer" style="">
                                <li class="media">
                                    <div class="pull-left">
                                        <span class="icon fa-stack fa-lg">
                                            <i class="fa fa-map-marker fa-stack-1x fa-inverse"></i>
                                        </span>
                                    </div>
                                    <div class="media-body">
                                        <p>Badda, Link Road, Dhaka-1212, Bangladesh</p>
                                    </div>
                                </li>

                                <li class="media">
                                    <div class="pull-left">
                                        <span class="icon fa-stack fa-lg">
                                            <i class="fa fa-mobile fa-stack-1x fa-inverse"></i>
                                        </span>
                                    </div>
                                    <div class="media-body">
                                        <p>+(880) 1682180100</p>
                                    </div>
                                </li>

                                <li class="media">
                                    <div class="pull-left">
                                        <span class="icon fa-stack fa-lg">
                                            <i class="fa fa-envelope fa-stack-1x fa-inverse"></i>
                                        </span>
                                    </div>
                                    <div class="media-body">
                                        <span><a href="#">shopmama@gmail.com</a></span>
                                    </div>
                                </li>

                            </ul>
                        </div><!-- /.module-body -->
                    </div><!-- /.col -->

                    <div class="col-xs-12 col-sm-6 col-md-3">
                        <div class="module-heading">
                            <h4 class="module-title">Customer Service</h4>
                        </div><!-- /.module-heading -->

                        <div class="module-body">
                            <ul class='list-unstyled'>
                                <li class="first"><a href="#" title="Contact us">My Account</a></li>
                                <li><a href="#" title="About us">Order History</a></li>
                                <li><a href="#" title="faq">FAQ</a></li>
                                <li><a href="#" title="Popular Searches">Specials</a></li>
                                <li class="last"><a href="#" title="Where is my order?">Help Center</a></li>
                            </ul>
                        </div><!-- /.module-body -->
                    </div><!-- /.col -->

                    <div class="col-xs-12 col-sm-6 col-md-3">
                        <div class="module-heading">
                            <h4 class="module-title">Corporation</h4>
                        </div><!-- /.module-heading -->

                        <div class="module-body">
                            <ul class='list-unstyled'>
                                <li class="first"><a title="Your Account" href="#">About us</a></li>
                                <li><a title="Information" href="#">Customer Service</a></li>
                                <li><a title="Addresses" href="#">Company</a></li>
                                <li><a title="Addresses" href="#">Investor Relations</a></li>
                                <li class="last"><a title="Orders History" href="#">Advanced Search</a></li>
                            </ul>
                        </div><!-- /.module-body -->
                    </div><!-- /.col -->

                    <div class="col-xs-12 col-sm-6 col-md-3">
                        <div class="module-heading">
                            <h4 class="module-title">Why Choose Us</h4>
                        </div><!-- /.module-heading -->

                        <div class="module-body">
                            <ul class='list-unstyled'>
                                <li class="first"><a href="#" title="About us">Shopping Guide</a></li>
                                <li><a href="#" title="Blog">Blog</a></li>
                                <li><a href="#" title="Company">Company</a></li>
                                <li><a href="#" title="Investor Relations">Investor Relations</a></li>
                                <li class=" last"><a href="contact-us.html" title="Suppliers">Contact Us</a>
                                </li>
                            </ul>
                        </div><!-- /.module-body -->
                    </div>
                </div>
            </div>
        </div>

        <div class="copyright-bar">
            <div class="container">
                <div class="col-xs-12 col-sm-6 no-padding social">
                    <ul class="link">
                        <li class="fb pull-left"><a target="_blank" rel="nofollow" href="#" title="Facebook"></a>
                        </li>
                        <li class="tw pull-left"><a target="_blank" rel="nofollow" href="#" title="Twitter"></a></li>
                        <li class="googleplus pull-left"><a target="_blank" rel="nofollow" href="#"
                                title="GooglePlus"></a></li>
                        <li class="rss pull-left"><a target="_blank" rel="nofollow" href="#" title="RSS"></a></li>
                        <li class="pintrest pull-left"><a target="_blank" rel="nofollow" href="#"
                                title="PInterest"></a>
                        </li>
                        <li class="linkedin pull-left"><a target="_blank" rel="nofollow" href="#" title="Linkedin"></a>
                        </li>
                        <li class="youtube pull-left"><a target="_blank" rel="nofollow" href="#" title="Youtube"></a>
                        </li>
                    </ul>
                </div>
                <div class="col-xs-12 col-sm-6 no-padding">
                    <div class="clearfix payment-methods">
                        <ul>
                            <li><img src="assets/images/payments/1.png" alt=""></li>
                            <li><img src="assets/images/payments/2.png" alt=""></li>
                            <li><img src="assets/images/payments/3.png" alt=""></li>
                            <li><img src="assets/images/payments/4.png" alt=""></li>
                            <li><img src="assets/images/payments/5.png" alt=""></li>
                        </ul>
                    </div><!-- /.payment-methods -->
                </div>
            </div>
        </div>
    </footer>
    <!-- ============================================================= FOOTER : END============================================================= -->
    {{-- ======================= product view  modal ======================== --}}
    <!-- Modal -->
    <div class="modal fade" id="cartModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel"><span id="pname"></span></h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"
                        id="closeModal">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="card" style="width:16rem;">
                                <img src="" class="card-img-top" id="pimage" alt="" style="height: 200px;">
                            </div>
                        </div>
                        <div class="col-md-4">
                            <ul class="list-group">
                                <li class="list-group-item">Price: <strong class="text-danger">$<span
                                            id="pprice"></span> </strong>
                                    <del id="oldprice">$</del>
                                </li>
                                <li class="list-group-item">Product Code: <strong id="pcode"></strong></li>
                                <li class="list-group-item">Category: <strong id="pcategory"></strong></li>
                                <li class="list-group-item">Brand: <strong id="pbrand"></strong> </li>
                                <li class="list-group-item">Stock: <span class="badge badge-pill badge-success"
                                        id="aviable" style="background:green; color:white;"></span>
                                    <span class="badge badge-pill badge-danger" id="stockout"
                                        style="background:red; color:white;"></span>
                                </li>
                            </ul>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="color">Select Color</label>
                                <select class="form-control" id="color" name="color">
                                </select>
                            </div>
                            <div class="form-group" id="sizeArea">
                                <label for="size">Select Size</label>
                                <select class="form-control" id="size" name="size">
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="qty">Quantity</label>
                                <input type="number" class="form-control" id="qty" value="1" min="1">
                            </div>
                            <input type="hidden" id="product_id">
                            <button type="submit" class="btn btn-danger" onclick="addToCart()">Add To Cart</button>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
    </div>

    <!-- JavaScripts placed at the end of the document so the pages load faster -->
    <script src="{{ asset('fontend') }}/assets/js/jquery-1.11.1.min.js"></script>
    <script src="{{ asset('fontend') }}/assets/js/bootstrap.min.js"></script>
    <script src="{{ asset('fontend') }}/assets/js/bootstrap-hover-dropdown.min.js"></script>
    <script src="{{ asset('fontend') }}/assets/js/owl.carousel.min.js"></script>
    <script src="{{ asset('fontend') }}/assets/js/echo.min.js"></script>
    <script src="{{ asset('fontend') }}/assets/js/jquery.easing-1.3.min.js"></script>
    <script src="{{ asset('fontend') }}/assets/js/bootstrap-slider.min.js"></script>
    <script src="{{ asset('fontend') }}/assets/js/jquery.rateit.min.js"></script>
    <script type="text/javascript" src="{{ asset('fontend') }}/assets/js/lightbox.min.js"></script>
    <script src="{{ asset('fontend') }}/assets/js/bootstrap-select.min.js"></script>
    <script src="{{ asset('fontend') }}/assets/js/wow.min.js"></script>
    <script src="{{ asset('fontend') }}/assets/js/scripts.js"></script>
    <script src="{{ asset('fontend') }}/assets/js/sweetalert2@8.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js" type="text/javascript">
    </script>

    <script type="text/javascript" src="{{ asset('common') }}/jquery.form-validator.min.js"></script>
    <script>
        $.validate({
            lang: 'en'
        });
    </script>
    <script type="text/javascript" src="{{ asset('backend') }}/lib/toastr/toastr.min.js"></script>

    <script>
        @if (Session::has('message'))
            var type ="{{ Session::get('alert-type', 'info') }}"
            switch(type){
            case 'info':
            toastr.info(" {{ Session::get('message') }} ");
            break;

            case 'success':
            toastr.success(" {{ Session::get('message') }} ");
            break;

            case 'warning':
            toastr.warning(" {{ Session::get('message') }} ");
            break;

            case 'error':
            toastr.error(" {{ Session::get('message') }} ");
            break;
            }
        @endif
    </script>

    <script type="text/javascript">
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        })

        //start product view with modal
        function productView(id) {
            $.ajax({
                type: 'GET',
                url: '/product/view/modal/' + id,
                dataType: 'json',
                success: function(data) {
                    $('#pname').text(data.product.product_name_en);
                    $('#price').text(data.product.selling_price);
                    $('#pcode').text(data.product.product_code);
                    $('#pcategory').text(data.product.category.category_name_en);
                    $('#pbrand').text(data.product.brand.brand_name_en);
                    $('#pimage').attr('src', '/' + data.product.product_thambnail);
                    $('#product_id').val(id);
                    $('#qty').val(1);
                    //product price
                    if (data.product.discount_price == null) {
                        $('#pprice').text('');
                        $('#oldprice').text('');
                        $('#pprice').text(data.product.selling_price);
                    } else {
                        $('#pprice').text(data.product.discount_price);
                        $('#oldprice').text(data.product.selling_price);
                    }

                    //stock
                    if (data.product.product_qty > 0) {
                        $('#aviable').text('');
                        $('#stockout').text('');
                        $('#aviable').text('aviable');
                    } else {
                        $('#aviable').text('');
                        $('#stockout').text('');
                        $('#stockout').text('stockout');
                    }

                    //color
                    $('select[name="color"]').empty();
                    $.each(data.color, function(key, value) {
                        $('select[name="color"]').append('<option value="' + value + '">' + value +
                            '</option>')
                    })
                    //size
                    $('select[name="size"]').empty();
                    $.each(data.size, function(key, value) {
                        $('select[name="size"]').append('<option value="' + value + '">' + value +
                            '</option>')
                        if (data.size == "") {
                            $('#sizeArea').hide();
                        } else {
                            $('#sizeArea').show();
                        }
                    })


                }
            })
        }
        //end product view with modal

        //Start add to cart product
        function addToCart() {
            var product_name = $('#pname').text();
            var id = $('#product_id').val();
            var color = $('#color option:selected').text();
            var size = $('#size option:selected').text();
            var quantity = $('#qty').val();

            $.ajax({
                type: "POST",
                dataType: 'json',
                data: {
                    color: color,
                    size: size,
                    quantity: quantity,
                    product_name: product_name
                },
                headers: {'X-CSRF-TOKEN': "{{ csrf_token() }}"},
                url: "/cart/data/store/" + id,
                success: function(data) {
                    miniCart();
                    $('#closeModal').click();
                    //  start message
                    const Toast = Swal.mixin({
                        toast: true,
                        position: 'top-end',
                        showConfirmButton: false,
                        timer: 3000
                    })

                    if ($.isEmptyObject(data.error)) {
                        Toast.fire({
                            type: 'success',
                            title: data.success
                        })
                    } else {
                        Toast.fire({
                            type: 'error',
                            title: data.error
                        })
                    }
                    //  end message
                }
            })
        }
        //End add to cart product
    </script>

    @yield('scripts')

    <script>
        function miniCart() {
            $.ajax({
                type: 'GET',
                url: '/product/mini/cart',
                dataType: 'json',
                success: function(response) {
                    $('span[id="cartSubTotal"]').text(response.cartTotal);
                    $('#cartQty').text(response.cartQty);
                    var miniCart = ""
                    $.each(response.carts, function(key, value) {
                        miniCart += `<div class="cart-item product-summary">
                    <div class="row">
                    <div class="col-xs-4">
                    <div class="image">
                        <a href="detail.html"><img src="/${value.options.image}" alt=""></a>
                    </div>
                    </div>
                    <div class="col-xs-7">
                    <h3 class="name"><a href="index8a95.html?page-detail">${value.name}</a></h3>
                    <div class="price">${value.price}$ * ${value.qty}</div>
                    </div>
                    <div class="col-xs-1 action">
                    <button type="submit" id="${value.rowId}" onclick="miniCartRemove(this.id)"><i class="fa fa-trash"></i></button>
                    </div>
                    </div>
                    </div><!-- /.cart-item -->
                    <div class="clearfix"></div> <hr>`});

                    $('#miniCart').html(miniCart);

                }
            })
        }
        miniCart();

        /// mini cart remove start
        function miniCartRemove(rowId) {
            $.ajax({
                type: 'GET',
                url: '/minicart/product-remove/' + rowId,
                dataType: 'json',
                success: function(data) {
                    miniCart();
                    //  start message
                    const Toast = Swal.mixin({
                        toast: true,
                        position: 'top-end',
                        showConfirmButton: false,
                        timer: 3000
                    })

                    if ($.isEmptyObject(data.error)) {
                        Toast.fire({
                            type: 'success',
                            title: data.success
                        })
                    } else {
                        Toast.fire({
                            type: 'error',
                            title: data.error
                        })
                    }
                    //  end message
                }
            });
        }
        // mini cart remove end
    </script>

    <script>
        function addToWishlist(product_id) {

            $.ajax({
                type: "POST",
                dataType: 'json',
                url: "{{ url('/add-to-wishlist/') }}/" + product_id,
                success: function(data) {
                    //  start message
                    const Toast = Swal.mixin({
                        toast: true,
                        position: 'top-end',
                        showConfirmButton: false,
                        timer: 3000
                    })

                    if ($.isEmptyObject(data.error)) {
                        Toast.fire({
                            type: 'success',
                            title: data.success
                        })
                    } else {
                        Toast.fire({
                            type: 'error',
                            title: data.error
                        })
                    }
                    //  end message
                }
            })
        }
    </script>


    {{-- =============wishlist page ================== --}}
    <script>
        function wishlist() {
            $.ajax({
                type: 'GET',
                url: "{{ url('/user/get-wishlist-product') }}",
                dataType: 'json',
                success: function(response) {
                    var rows = ""
                    $.each(response, function(key, value) {
                        rows += `<tr>
     <td class="col-md-2"><img src="/${value.product.product_thambnail}" alt="imga"></td>
     <td class="col-md-7">
      <div class="product-name"><a href="#">${value.product.product_name_en}</a></div>

      <div class="price">
                        ${value.product.discount_price == null
                            ? `$${value.product.selling_price}`
                            :
                            `$${value.product.discount_price} <span>$${value.product.selling_price}</span>`
                        }
      </div>
     </td>
     <td class="col-md-2">
      <button class="btn-upper btn btn-primary" type="button" title="Add Cart" data-toggle="modal" data-target="#cartModal" id="${value.product_id}" onclick="productView(this.id)">Add to cart</button>
     </td>
     <td class="col-md-1 close-btn">
      <button type="submit" class="" id="${value.id}" onclick="wishlistRemove(this.id)" ><i class="fa fa-times"></i></button>
     </td>
    </tr>`

                    });

                    $('#wishlist').html(rows);

                }
            })
        }
        wishlist();

        function wishlistRemove(id) {
            $.ajax({
                type: 'GET',
                url: "{{ url('/user/wishlist-remove/') }}/" + id,
                dataType: 'json',
                success: function(data) {
                    wishlist();
                    //  start message
                    const Toast = Swal.mixin({
                        toast: true,
                        position: 'top-end',
                        showConfirmButton: false,
                        timer: 3000
                    })

                    if ($.isEmptyObject(data.error)) {
                        Toast.fire({
                            type: 'success',
                            title: data.success
                        })
                    } else {
                        Toast.fire({
                            type: 'error',
                            title: data.error
                        })
                    }
                    //  end message
                }
            });
        }
    </script>
    {{-- //end wishlist --}}

    {{-- ================= start cart page ====================== --}}
    <script>
        function cart() {
            $.ajax({
                type: 'GET',
                url: "{{ url('/get-cart-product') }}",
                dataType: 'json',
                success: function(response) {
                    var rows = ""
                    $.each(response.carts, function(key, value) {
                        rows += `<tr>
     <td class="col-md-2"><img src="/${value.options.image}" alt="imga" style="height:60px; width:60px;"></td>
     <td class="col-md-2">
      <div class="product-name"><strong>${value.name}</strong></div>

      <strong>
                        $${value.price}
      </strong>
     </td>

                    <td class="col-md-2">

                        <strong>${value.options.color}</strong>
     </td>
                    <td class="col-md-2">
                        ${value.options.size == null
                            ? `<span >......</span>`
                            :
                            `<strong>${value.options.size}</strong>`
                        }

                    </td>

                    <td class="col-md-2">
                        ${value.qty > 1
                        ? ` <button type="submit" class="btn btn-success btn-sm" id="${value.rowId}" onclick="cartDecrement(this.id)">-</button>`
                        : ` <button type="submit" class="btn btn-success btn-sm" disabled>-</button>`
                        }

                        <input type="text" value="${value.qty}" min="1" max="100" disabled style="width:25px;">
                        <button type="submit" id="${value.rowId}" onclick="cartIncrement(this.id)" class="btn btn-danger btn-sm">+</button>
                    </td>

                    <td class="col-md-1">
                        <strong>$${value.subtotal}</strong>
                    </td>

     <td class="col-md-1 close-btn">
      <button type="submit" class="" id="${value.rowId}" onclick="CartRemove(this.id)" ><i class="fa fa-times"></i></button>
     </td>
    </tr>`

                    });

                    $('#cartPage').html(rows);

                }
            })
        }
        cart();

        function CartRemove(id) {
            $.ajax({
                type: 'GET',
                url: "{{ url('/cart-remove/') }}/" + id,
                dataType: 'json',
                success: function(data) {
                    cart();
                    miniCart();
                    couponCalculation();
                    $('#couponField').show();
                    $('#coupon_name').val('');
                    //  start message
                    const Toast = Swal.mixin({
                        toast: true,
                        position: 'top-end',
                        showConfirmButton: false,
                        timer: 3000
                    })

                    if ($.isEmptyObject(data.error)) {
                        Toast.fire({
                            type: 'success',
                            title: data.success
                        })
                    } else {
                        Toast.fire({
                            type: 'error',
                            title: data.error
                        })
                    }
                    //  end message
                }
            });
        }

        // ============ cart increment==============
        function cartIncrement(rowId) {
            $.ajax({
                type: 'GET',
                url: "{{ url('/cart-increment/') }}/" + rowId,
                dataType: 'json',
                success: function(data) {
                    couponCalculation();
                    cart();
                    miniCart();
                }
            });
        }
        // ============ cart increment end==============

        // ============ cart deccrement==============
        function cartDecrement(rowId) {
            $.ajax({
                type: 'GET',
                url: "{{ url('/cart-decrement/') }}/" + rowId,
                dataType: 'json',
                success: function(data) {
                    couponCalculation();
                    cart();
                    miniCart();
                }
            });
        }
    </script>
    {{-- ================= end cart page ====================== --}}
    {{-- ===================== coupon apply start =============== --}}
    <script>
        function applyCoupon() {
            var coupon_name = $('#coupon_name').val();
            $.ajax({
                type: 'POST',
                dataType: 'json',
                data: {
                    coupon_name: coupon_name
                },
                url: "{{ url('/coupon-apply') }}",
                success: function(data) {
                    couponCalculation();
                    if (data.validity == true) {
                        $('#couponField').hide();
                    }
                    //    $('#couponField').css("display","none");
                    //  start message
                    const Toast = Swal.mixin({
                        toast: true,
                        position: 'top-end',
                        showConfirmButton: false,
                        timer: 3000
                    })

                    if ($.isEmptyObject(data.error)) {
                        Toast.fire({
                            type: 'success',
                            title: data.success
                        })
                    } else {
                        $('#coupon_name').val('');
                        Toast.fire({
                            type: 'error',
                            title: data.error
                        })
                    }
                    //  end message
                }
            });
        }

        function couponCalculation() {
            $.ajax({
                type: 'GET',
                url: "{{ url('/coupon-calculation') }}",
                dataType: 'json',
                success: function(data) {
                    if (data.total) {
                        $('#couponCalField').html(`
                    <tr>
                    <th>
                        <div class="cart-sub-total">
                            Subtotal<span class="inner-left-md">$ ${data.total}</span>
                        </div>
                        <div class="cart-grand-total">
                            Grand Total<span class="inner-left-md">$${data.total}</span>
                        </div>

                    </th>
                </tr>
                `)
                    } else {
                        $('#couponCalField').html(`
                <tr>
    <th>
     <div class="cart-sub-total">
      Subtotal<span class="inner-left-md">$${data.subtotal}</span>
                    </div>
                    <div class="cart-sub-total">
      Coupon<span class="inner-left-md">${data.coupon_name} </span>
                        <button type="submit" onclick="couponRemove()"><i class="fa fa-times"></i></button>
                    </div>
                    <div class="cart-sub-total">
      Discount Amount<span class="inner-left-md">$${data.discount_amount}</span>
     </div>
     <div class="cart-grand-total">
      Grand Total<span class="inner-left-md">$${data.total_amount}</span>
                    </div>

    </th>
   </tr>
            `)
                    }
                }
            });
        }
        couponCalculation();
    </script>
    {{-- ===================== coupon apply end =============== --}}
    <script>
        //remove coupon
        function couponRemove() {
            $.ajax({
                type: 'GET',
                url: "{{ url('/coupon-remove') }}",
                dataType: 'json',
                success: function(data) {
                    couponCalculation();
                    $('#couponField').show();
                    // $('#couponField').css("display","");
                    $('#coupon_name').val('');
                    //  start message
                    const Toast = Swal.mixin({
                        toast: true,
                        position: 'top-end',
                        showConfirmButton: false,
                        timer: 3000
                    })

                    if ($.isEmptyObject(data.error)) {
                        Toast.fire({
                            type: 'success',
                            title: data.success
                        })
                    } else {
                        Toast.fire({
                            type: 'error',
                            title: data.error
                        })
                    }
                    //  end message
                }
            });
        }
    </script>

    <!-- If you want to use the popup integration, -->
    <script type="text/javascript">
        var obj = {};
        obj.cus_name = $('#customer_name').val();
        obj.cus_phone = $('#mobile').val();
        obj.cus_email = $('#email').val();
        obj.cus_addr1 = $('#address').val();
        obj.amount = $('#total_amount').val();
        obj.post_code = $('#post_code').val();
        obj.division_id = $('#division_id').val();
        obj.district_id = $('#district_id').val();
        obj.state_id = $('#state_id').val();
        obj.notes = $('#notes').val();

        $('#sslczPayBtn').prop('postdata', obj);

        (function(window, document) {
            var loader = function() {
                var script = document.createElement("script"),
                    tag = document.getElementsByTagName("script")[0];
                // script.src = "https://seamless-epay.sslcommerz.com/embed.min.js?" + Math.random().toString(36).substring(7); // USE THIS FOR LIVE
                script.src = "https://sandbox.sslcommerz.com/embed.min.js?" + Math.random().toString(36)
                    .substring(7); // USE THIS FOR SANDBOX
                tag.parentNode.insertBefore(script, tag);
            };

            window.addEventListener ? window.addEventListener("load", loader, false) : window.attachEvent("onload",
                loader);
        })(window, document);
    </script>

    <script>
        (function(window, document) {
            var loader = function() {
                var script = document.createElement("script"),
                    tag = document.getElementsByTagName("script")[0];
                script.src = "https://sandbox.sslcommerz.com/embed.min.js?" + Math.random().toString(36)
                    .substring(7);
                tag.parentNode.insertBefore(script, tag);
            };

            window.addEventListener ? window.addEventListener("load", loader, false) : window.attachEvent("onload",
                loader);
        })(window, document);
    </script>

    <script>
        $("body").on("keyup", "#search", function() {
            let searchData = $("#search").val();
            if (searchData.length > 0) {
                $.ajax({
                    type: 'POST',
                    url: "{{ url('/find-products') }}",
                    data: {
                        search: searchData
                    },
                    success: function(result) {
                        $('#suggestProduct').html(result)
                    }
                });
            }

            if (searchData.length < 1) $('#suggestProduct').html("");
        })
    </script>


    <script>
        function showSearchResult() {
            $('#suggestProduct').slideDown();
        }

        function hideSearchResult() {
            $('#suggestProduct').slideUp();
        }
    </script>
</body>

</html>
