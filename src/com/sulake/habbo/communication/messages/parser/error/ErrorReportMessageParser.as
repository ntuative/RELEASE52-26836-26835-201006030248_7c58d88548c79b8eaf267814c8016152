package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1254:int;
      
      private var var_1168:int;
      
      private var var_1253:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function get messageId() : int
      {
         return var_1254;
      }
      
      public function flush() : Boolean
      {
         var_1168 = 0;
         var_1254 = 0;
         var_1253 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1168;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1254 = param1.readInteger();
         var_1168 = param1.readInteger();
         var_1253 = param1.readString();
         return true;
      }
      
      public function get timestamp() : String
      {
         return var_1253;
      }
   }
}
