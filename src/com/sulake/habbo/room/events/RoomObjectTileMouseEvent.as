package com.sulake.habbo.room.events
{
   import com.sulake.room.events.RoomObjectMouseEvent;
   
   public class RoomObjectTileMouseEvent extends RoomObjectMouseEvent
   {
       
      
      private var var_1882:Number;
      
      private var var_1880:Number;
      
      private var var_1881:Number;
      
      public function RoomObjectTileMouseEvent(param1:String, param2:int, param3:String, param4:Number, param5:Number, param6:Number, param7:Boolean = false, param8:Boolean = false)
      {
         super(param1,param2,param3,param7,param8);
         var_1882 = param4;
         var_1880 = param5;
         var_1881 = param6;
      }
      
      public function get tileX() : Number
      {
         return var_1882;
      }
      
      public function get tileY() : Number
      {
         return var_1880;
      }
      
      public function get tileZ() : Number
      {
         return var_1881;
      }
   }
}
