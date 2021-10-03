package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_721:String;
      
      private var var_2236:int;
      
      private var var_1523:Boolean;
      
      private var _roomId:int;
      
      private var var_2237:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         var_1523 = param1.readBoolean();
         _roomId = param1.readInteger();
         var_721 = param1.readString();
         var_2237 = param1.readInteger();
         var_2236 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return var_1523;
      }
      
      public function get roomName() : String
      {
         return var_721;
      }
      
      public function get enterMinute() : int
      {
         return var_2236;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get enterHour() : int
      {
         return var_2237;
      }
   }
}
