package com.sulake.habbo.room.events
{
   public class RoomEngineDimmerStateEvent extends RoomEngineEvent
   {
      
      public static const const_61:String = "REDSE_ROOM_COLOR";
       
      
      private var var_1044:int;
      
      private var _color:uint;
      
      private var var_1043:int;
      
      private var var_1801:int;
      
      private var var_35:int;
      
      public function RoomEngineDimmerStateEvent(param1:int, param2:int, param3:int, param4:int, param5:int, param6:uint, param7:uint, param8:Boolean = false, param9:Boolean = false)
      {
         super(const_61,param1,param2,param8,param9);
         var_35 = param3;
         var_1801 = param4;
         var_1044 = param5;
         _color = param6;
         var_1043 = param7;
      }
      
      public function get brightness() : uint
      {
         return var_1043;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get effectId() : int
      {
         return var_1044;
      }
      
      public function get state() : int
      {
         return var_35;
      }
      
      public function get presetId() : int
      {
         return var_1801;
      }
   }
}
