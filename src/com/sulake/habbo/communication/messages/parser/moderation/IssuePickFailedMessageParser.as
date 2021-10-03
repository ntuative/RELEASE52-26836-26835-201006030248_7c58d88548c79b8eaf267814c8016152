package com.sulake.habbo.communication.messages.parser.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class IssuePickFailedMessageParser implements IMessageParser
   {
       
      
      private var var_1709:String;
      
      private var var_1710:int;
      
      private var var_1711:int;
      
      public function IssuePickFailedMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1711 = param1.readInteger();
         var_1710 = param1.readInteger();
         var_1709 = param1.readString();
         return true;
      }
      
      public function get issueId() : int
      {
         return var_1711;
      }
      
      public function get pickerUserId() : int
      {
         return var_1710;
      }
      
      public function get pickerUserName() : String
      {
         return var_1709;
      }
   }
}
