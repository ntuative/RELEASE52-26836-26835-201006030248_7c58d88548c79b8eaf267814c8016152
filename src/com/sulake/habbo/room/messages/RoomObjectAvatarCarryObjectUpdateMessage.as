package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarCarryObjectUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1026:int;
      
      private var var_1234:String;
      
      public function RoomObjectAvatarCarryObjectUpdateMessage(param1:int, param2:String)
      {
         super();
         var_1026 = param1;
         var_1234 = param2;
      }
      
      public function get itemType() : int
      {
         return var_1026;
      }
      
      public function get itemName() : String
      {
         return var_1234;
      }
   }
}
