package com.sulake.habbo.room.messages
{
   import com.sulake.room.messages.RoomObjectUpdateMessage;
   
   public class RoomObjectDataUpdateMessage extends RoomObjectUpdateMessage
   {
       
      
      private var var_1528:Number = NaN;
      
      private var var_35:int;
      
      private var _data:String;
      
      public function RoomObjectDataUpdateMessage(param1:int, param2:String, param3:Number = NaN)
      {
         super(null,null);
         var_35 = param1;
         _data = param2;
         var_1528 = param3;
      }
      
      public function get extra() : Number
      {
         return var_1528;
      }
      
      public function get state() : int
      {
         return var_35;
      }
      
      public function get data() : String
      {
         return _data;
      }
   }
}
