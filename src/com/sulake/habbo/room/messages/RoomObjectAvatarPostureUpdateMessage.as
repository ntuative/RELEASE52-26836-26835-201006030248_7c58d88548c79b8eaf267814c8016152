package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarPostureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1909:String;
      
      private var var_822:String;
      
      public function RoomObjectAvatarPostureUpdateMessage(param1:String, param2:String = "")
      {
         super();
         var_1909 = param1;
         var_822 = param2;
      }
      
      public function get postureType() : String
      {
         return var_1909;
      }
      
      public function get parameter() : String
      {
         return var_822;
      }
   }
}
