package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var var_1412:int;
      
      private var var_1916:int;
      
      private var var_2202:int = -1;
      
      private var var_150:int;
      
      private var var_2040:int;
      
      private var _offerId:int;
      
      private var var_1413:int;
      
      private var _furniId:int;
      
      private var var_1440:String;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int, param9:int = -1)
      {
         super();
         _offerId = param1;
         _furniId = param2;
         var_2040 = param3;
         var_1440 = param4;
         var_1412 = param5;
         var_150 = param6;
         var_2202 = param7;
         var_1916 = param8;
         var_1413 = param9;
      }
      
      public function get status() : int
      {
         return var_150;
      }
      
      public function get price() : int
      {
         return var_1412;
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
      
      public function get furniType() : int
      {
         return var_2040;
      }
      
      public function get averagePrice() : int
      {
         return var_1916;
      }
      
      public function get furniId() : int
      {
         return _furniId;
      }
      
      public function get stuffData() : String
      {
         return var_1440;
      }
   }
}
