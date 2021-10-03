package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_2019:String;
      
      private var var_648:String;
      
      private var var_1642:int;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         var_1642 = param1.readInteger();
         var_2019 = param1.readString();
         var_648 = param1.readString();
      }
      
      public function get gender() : String
      {
         return var_648;
      }
      
      public function get figureString() : String
      {
         return var_2019;
      }
      
      public function get slotId() : int
      {
         return var_1642;
      }
   }
}
