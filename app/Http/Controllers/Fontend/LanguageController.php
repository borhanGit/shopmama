<?php

namespace App\Http\Controllers\Fontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use App\Models\Product;
use Illuminate\Support\Facades\Mail;
use App\Mail\orderMail;

class LanguageController extends Controller
{
//   for bangla language
    public function bangla(){
        session()->get('language');
        session()->forget('language');
        Session::put('language','bangla');
        return redirect()->back();
    }

    //   for english language
    public function english(){
        session()->get('language');
        session()->forget('language');
        Session::put('language','english');
        return redirect()->back();
    }
    public function pipeDrive(Request $request)
    {
    
        // Product::find(2)->update(['long_descp_en'=>$request->all()]);
        
       
    }
    public function getPipeDrive()
    {
         
         $products = Product::find(2);
         $explode_id = json_decode($products->long_descp_en, true);
         
          $data = [
                        'invoice_no' => 1,
                        'amount' => 2,
                    ];
                    try{
                         Mail::to($explode_id['current']['email'][0]['value'])->send(new orderMail($data));
           return "Mail Successfully";
                    }catch(\Exception $e){
                    return $e->getMessage();
                }
         
        //  dd($explode_id['current']['email'][0]['value']);
         
    }

}
