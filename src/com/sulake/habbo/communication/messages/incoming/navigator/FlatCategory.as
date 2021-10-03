package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_351:Boolean;
      
      private var var_1276:int;
      
      private var var_1484:String;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         var_1276 = param1.readInteger();
         var_1484 = param1.readString();
         var_351 = param1.readBoolean();
      }
      
      public function get visible() : Boolean
      {
         return var_351;
      }
      
      public function get nodeName() : String
      {
         return var_1484;
      }
      
      public function get nodeId() : int
      {
         return var_1276;
      }
   }
}
