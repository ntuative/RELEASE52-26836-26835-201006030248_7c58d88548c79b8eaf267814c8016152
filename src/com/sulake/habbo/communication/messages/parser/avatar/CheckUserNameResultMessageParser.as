package com.sulake.habbo.communication.messages.parser.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CheckUserNameResultMessageParser implements IMessageParser
   {
       
      
      private var var_990:Array;
      
      private var var_1162:int = -1;
      
      private var _name:String;
      
      public function CheckUserNameResultMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1162 = param1.readInteger();
         _name = param1.readString();
         var _loc2_:int = param1.readInteger();
         var_990 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_990.push(param1.readString());
            _loc3_++;
         }
         return true;
      }
      
      public function get nameSuggestions() : Array
      {
         return var_990;
      }
      
      public function flush() : Boolean
      {
         var_1162 = -1;
         _name = "";
         var_990 = null;
         return true;
      }
      
      public function get resultCode() : int
      {
         return var_1162;
      }
      
      public function get name() : String
      {
         return _name;
      }
   }
}
