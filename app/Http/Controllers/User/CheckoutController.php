<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Models\Order;
use App\Models\OrderItem;
use App\Models\Product;
use App\Models\ShipDistrict;
use App\Models\ShipState;
use Carbon\Carbon;
use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class CheckoutController extends Controller
{
    //
        public function getDistrictWithAjax($division_id){
            $ship = ShipDistrict::where('division_id',$division_id)->orderBy('district_name','ASC')->get();
            return json_encode($ship);
     }

    //  get state with ajax
    public function getStateWithAjax($district_id){
        $ship = ShipState::where('district_id',$district_id)->orderBy('state_name','ASC')->get();
        return json_encode($ship);
    }

    public function storeCheckout(Request $request){
        $data = array();
        $data['shipping_name'] = $request->shipping_name;
        $data['shipping_email'] = $request->shipping_email;
        $data['shipping_phone'] = $request->shipping_phone;
        $data['post_code'] = $request->post_code;
        $data['division_id'] = $request->division_id;
        $data['district_id'] = $request->district_id;
        $data['state_id'] = $request->state_id;
        $data['notes'] = $request->notes;
        $cartTotal = Cart::total();
        $carts = Cart::content();
        if (Session::has('coupon')) {
            $total_amount = Session::get('coupon')['total_amount'];
        }else {
            $total_amount = round(Cart::total());
        }

        if ($request->payment_method == 'stripe') {
            return view('fontend.payment.stripe',compact('data','cartTotal'));
        }elseif ($request->payment_method == 'sslHost') {
            return view('fontend.payment.hostedPayment',compact('data','total_amount','carts'));
        }elseif ($request->payment_method == 'sslEasy') {
            return view('fontend.payment.easyPayment',compact('data','total_amount','carts'));
        }else
        {
           
                $order_id = Order::insertGetId([
                    'user_id' => Auth::id(),
                    'division_id' => $request->division_id,
                    'district_id' => $request->district_id,
                    'state_id' => $request->state_id,
                    'name' => $request->shipping_name,
                    'email' => $request->shipping_email,
                    'phone' => $request->shipping_phone,
                    'post_code' => $request->post_code,
                    'notes' => $request->notes,
                    'payment_type' => 'Cash',
                    'payment_method' => 'Cash',
                    'transaction_id' => 'cash',
                    'currency' => 'Money',
                    'amount' => $total_amount,
                    'order_number' => 1,
                    'invoice_no' => 'SPM'.mt_rand(10000000,99999999),
                    'order_date' => Carbon::now()->format('d F Y'),
                    'order_month' => Carbon::now()->format('F'),
                    'order_year' => Carbon::now()->format('Y'),
                    'status' => 'Pending',
                    'created_at' => Carbon::now(),
                ]);

                $invoice = Order::findOrFail($order_id);

            //start send email
                // $data = [
                //     'invoice_no' => $invoice->invoice_no,
                //     'amount' => $total_amount,
                // ];

                // Mail::to($request->email)->send(new orderMail($data));

            //end send email

            $carts = Cart::content();
            foreach ($carts as $cart ) {
                OrderItem::insert([
                    'order_id' => $order_id,
                    'product_id' => $cart->id,
                    'color' => $cart->options->color,
                    'size' => $cart->options->size,
                    'qty' => $cart->qty,
                    'price' => $cart->price,
                    'created_at' => Carbon::now(),
                ]);
            }

            //product stock decrement
            foreach($carts as $pro){
                Product::where('id',$pro->id)->decrement('product_qty',$pro->qty);
            }

            if (Session::has('coupon')) {
                Session::forget('coupon');
            }

            Cart::destroy();

            $notification=array(
                'message'=>'Your Order Place Success',
                'alert-type'=>'success'
            );
            return Redirect()->route('user.dashboard')->with($notification);
        }
    }

}
