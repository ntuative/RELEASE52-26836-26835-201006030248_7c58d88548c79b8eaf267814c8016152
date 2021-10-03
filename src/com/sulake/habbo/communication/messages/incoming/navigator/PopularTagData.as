package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class PopularTagData
   {
       
      
      private var var_1671:int;
      
      private var var_1973:String;
      
      public function PopularTagData(param1:IMessageDataWrapper)
      {
         super();
         var_1973 = param1.readString();
         var_1671 = param1.readInteger();
      }
      
      public function get tagName() : String
      {
         return var_1973;
      }
      
      public function get userCount() : int
      {
         return var_1671;
      }
   }
}
