package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_1647:String;
      
      private var var_2315:int;
      
      private var var_2314:int;
      
      private var var_2317:int;
      
      private var var_2316:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         var_2315 = param1.readInteger();
         var_2317 = param1.readInteger();
         var_2314 = param1.readInteger();
         var_2316 = param1.readString();
         var_1647 = param1.readString();
      }
      
      public function get msg() : String
      {
         return var_1647;
      }
      
      public function get hour() : int
      {
         return var_2315;
      }
      
      public function get minute() : int
      {
         return var_2317;
      }
      
      public function get chatterName() : String
      {
         return var_2316;
      }
      
      public function get chatterId() : int
      {
         return var_2314;
      }
   }
}
