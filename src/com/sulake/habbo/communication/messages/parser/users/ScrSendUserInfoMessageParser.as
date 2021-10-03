package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_1209:int = 2;
      
      public static const const_1683:int = 1;
       
      
      private var var_1927:int;
      
      private var var_1933:int;
      
      private var var_1906:Boolean;
      
      private var var_1931:int;
      
      private var var_1289:String;
      
      private var var_1929:Boolean;
      
      private var var_1930:int;
      
      private var var_1932:int;
      
      private var var_1928:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return var_1933;
      }
      
      public function get isVIP() : Boolean
      {
         return var_1906;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return var_1932;
      }
      
      public function get memberPeriods() : int
      {
         return var_1931;
      }
      
      public function get productName() : String
      {
         return var_1289;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return var_1929;
      }
      
      public function get responseType() : int
      {
         return var_1927;
      }
      
      public function get pastClubDays() : int
      {
         return var_1928;
      }
      
      public function get pastVipDays() : int
      {
         return var_1930;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1289 = param1.readString();
         var_1933 = param1.readInteger();
         var_1931 = param1.readInteger();
         var_1932 = param1.readInteger();
         var_1927 = param1.readInteger();
         var_1929 = param1.readBoolean();
         var_1906 = param1.readBoolean();
         var_1928 = param1.readInteger();
         var_1930 = param1.readInteger();
         return true;
      }
   }
}
