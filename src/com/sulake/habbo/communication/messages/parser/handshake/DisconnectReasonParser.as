package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class DisconnectReasonParser implements IMessageParser
   {
       
      
      private var var_1012:int;
      
      public function DisconnectReasonParser()
      {
         super();
         var_1012 = -1;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1012 = param1.readInteger();
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get reason() : int
      {
         return var_1012;
      }
   }
}
