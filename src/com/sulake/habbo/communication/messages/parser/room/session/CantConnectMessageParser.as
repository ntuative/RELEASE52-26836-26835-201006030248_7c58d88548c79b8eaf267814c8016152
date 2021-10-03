package com.sulake.habbo.communication.messages.parser.room.session
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CantConnectMessageParser implements IMessageParser
   {
      
      public static const const_1671:int = 2;
      
      public static const const_1277:int = 4;
      
      public static const const_1414:int = 1;
      
      public static const const_1302:int = 3;
       
      
      private var var_1012:int = 0;
      
      private var var_822:String = "";
      
      public function CantConnectMessageParser()
      {
         super();
      }
      
      public function get reason() : int
      {
         return var_1012;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1012 = param1.readInteger();
         if(var_1012 == 3)
         {
            var_822 = param1.readString();
         }
         else
         {
            var_822 = "";
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         var_1012 = 0;
         var_822 = "";
         return true;
      }
      
      public function get parameter() : String
      {
         return var_822;
      }
   }
}
