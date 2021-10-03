package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CanCreateRoomMessageParser implements IMessageParser
   {
      
      public static const const_1535:int = 0;
      
      public static const const_1554:int = 1;
       
      
      private var var_2382:int;
      
      private var var_1162:int;
      
      public function CanCreateRoomMessageParser()
      {
         super();
      }
      
      public function get roomLimit() : int
      {
         return var_2382;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1162 = param1.readInteger();
         this.var_2382 = param1.readInteger();
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get resultCode() : int
      {
         return var_1162;
      }
   }
}
