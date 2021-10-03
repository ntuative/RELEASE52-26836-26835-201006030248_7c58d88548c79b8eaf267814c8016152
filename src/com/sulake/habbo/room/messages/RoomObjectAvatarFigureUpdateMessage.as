package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1860:String;
      
      private var var_454:String;
      
      private var var_648:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = null, param3:String = null)
      {
         super();
         var_454 = param1;
         var_648 = param2;
         var_1860 = param3;
      }
      
      public function get race() : String
      {
         return var_1860;
      }
      
      public function get figure() : String
      {
         return var_454;
      }
      
      public function get gender() : String
      {
         return var_648;
      }
   }
}
