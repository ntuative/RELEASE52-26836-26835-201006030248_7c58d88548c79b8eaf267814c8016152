package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var var_1698:int;
      
      private var var_1412:int;
      
      private var var_1703:int;
      
      private var _offerId:int;
      
      private var var_1699:int;
      
      private var var_1700:int;
      
      private var var_1702:Boolean;
      
      private var var_1701:int;
      
      private var var_1704:Boolean;
      
      private var var_1323:String;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_1323 = param1.readString();
         var_1412 = param1.readInteger();
         var_1704 = param1.readBoolean();
         var_1702 = param1.readBoolean();
         var_1703 = param1.readInteger();
         var_1701 = param1.readInteger();
         var_1699 = param1.readInteger();
         var_1698 = param1.readInteger();
         var_1700 = param1.readInteger();
      }
      
      public function get year() : int
      {
         return var_1699;
      }
      
      public function get month() : int
      {
         return var_1698;
      }
      
      public function get price() : int
      {
         return var_1412;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get periods() : int
      {
         return var_1703;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return var_1701;
      }
      
      public function get upgrade() : Boolean
      {
         return var_1704;
      }
      
      public function get day() : int
      {
         return var_1700;
      }
      
      public function get vip() : Boolean
      {
         return var_1702;
      }
      
      public function get productCode() : String
      {
         return var_1323;
      }
   }
}
