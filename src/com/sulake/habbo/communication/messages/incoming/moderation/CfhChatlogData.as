package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_2195:int;
      
      private var var_1017:int;
      
      private var var_2230:int;
      
      private var var_1626:int;
      
      private var var_120:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         var_1626 = param1.readInteger();
         var_2230 = param1.readInteger();
         var_1017 = param1.readInteger();
         var_2195 = param1.readInteger();
         var_120 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + var_1626);
      }
      
      public function get chatRecordId() : int
      {
         return var_2195;
      }
      
      public function get reportedUserId() : int
      {
         return var_1017;
      }
      
      public function get callerUserId() : int
      {
         return var_2230;
      }
      
      public function get callId() : int
      {
         return var_1626;
      }
      
      public function get room() : RoomChatlogData
      {
         return var_120;
      }
   }
}
