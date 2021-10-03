package com.sulake.habbo.catalog.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOfferData
   {
       
      
      private var var_2304:int;
      
      private var var_1412:int;
      
      private var var_1916:int;
      
      private var var_2202:int = -1;
      
      private var var_150:int;
      
      private var var_2040:int;
      
      private var _image:BitmapData;
      
      private var _offerId:int;
      
      private var var_1413:int;
      
      private var _furniId:int;
      
      private var var_1440:String;
      
      public function MarketPlaceOfferData(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int = -1)
      {
         super();
         _offerId = param1;
         _furniId = param2;
         var_2040 = param3;
         var_1440 = param4;
         var_1412 = param5;
         var_150 = param6;
         var_1916 = param7;
         var_1413 = param8;
      }
      
      public function get furniId() : int
      {
         return _furniId;
      }
      
      public function get furniType() : int
      {
         return var_2040;
      }
      
      public function set imageCallback(param1:int) : void
      {
         var_2304 = param1;
      }
      
      public function get price() : int
      {
         return var_1412;
      }
      
      public function get stuffData() : String
      {
         return var_1440;
      }
      
      public function get imageCallback() : int
      {
         return var_2304;
      }
      
      public function get timeLeftMinutes() : int
      {
         return var_2202;
      }
      
      public function get offerCount() : int
      {
         return var_1413;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function set timeLeftMinutes(param1:int) : void
      {
         var_2202 = param1;
      }
      
      public function dispose() : void
      {
         if(_image)
         {
            _image.dispose();
            _image = null;
         }
      }
      
      public function set price(param1:int) : void
      {
         var_1412 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         var_1413 = param1;
      }
      
      public function get status() : int
      {
         return var_150;
      }
      
      public function get averagePrice() : int
      {
         return var_1916;
      }
      
      public function set offerId(param1:int) : void
      {
         _offerId = param1;
      }
      
      public function set image(param1:BitmapData) : void
      {
         if(_image != null)
         {
            _image.dispose();
         }
         _image = param1;
      }
   }
}
