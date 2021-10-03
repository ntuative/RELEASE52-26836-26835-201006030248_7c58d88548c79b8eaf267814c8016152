package com.sulake.habbo.widget.events
{
   public class RoomWidgetStickieDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_703:String = "RWSDUE_STICKIE_DATA";
       
      
      private var var_203:String;
      
      private var var_702:String;
      
      private var var_1513:String;
      
      private var var_158:int = -1;
      
      private var var_29:Boolean;
      
      public function RoomWidgetStickieDataUpdateEvent(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Boolean, param7:Boolean = false, param8:Boolean = false)
      {
         super(param1,param7,param8);
         var_158 = param2;
         var_1513 = param3;
         var_203 = param4;
         var_702 = param5;
         var_29 = param6;
      }
      
      public function get objectType() : String
      {
         return var_1513;
      }
      
      public function get colorHex() : String
      {
         return var_702;
      }
      
      public function get text() : String
      {
         return var_203;
      }
      
      public function get objectId() : int
      {
         return var_158;
      }
      
      public function get controller() : Boolean
      {
         return var_29;
      }
   }
}
