package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1339:int;
      
      private var var_1139:String;
      
      private var var_691:Array;
      
      private var var_1089:Array;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get votes() : Array
      {
         return var_691.slice();
      }
      
      public function flush() : Boolean
      {
         var_1139 = "";
         var_1089 = [];
         var_691 = [];
         var_1339 = 0;
         return true;
      }
      
      public function get totalVotes() : int
      {
         return var_1339;
      }
      
      public function get question() : String
      {
         return var_1139;
      }
      
      public function get choices() : Array
      {
         return var_1089.slice();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1139 = param1.readString();
         var_1089 = [];
         var_691 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            var_1089.push(param1.readString());
            var_691.push(param1.readInteger());
            _loc3_++;
         }
         var_1339 = param1.readInteger();
         return true;
      }
   }
}
