package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubGiftData
   {
       
      
      private var var_1804:int;
      
      private var var_1806:Boolean;
      
      private var _offerId:int;
      
      private var var_1805:Boolean;
      
      public function ClubGiftData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_1806 = param1.readBoolean();
         var_1804 = param1.readInteger();
         var_1805 = param1.readBoolean();
      }
      
      public function get isSelectable() : Boolean
      {
         return var_1805;
      }
      
      public function get monthsRequired() : int
      {
         return var_1804;
      }
      
      public function get isVip() : Boolean
      {
         return var_1806;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
   }
}
