package com.sulake.habbo.widget.events
{
   public class RoomWidgetRoomQueueUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_490:String = "RWRQUE_SPECTATOR_QUEUE_STATUS";
      
      public static const const_341:String = "RWRQUE_VISITOR_QUEUE_STATUS";
       
      
      private var var_829:int;
      
      private var var_255:Boolean;
      
      private var var_2295:Boolean;
      
      private var var_1595:Boolean;
      
      public function RoomWidgetRoomQueueUpdateEvent(param1:String, param2:int, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_829 = param2;
         var_2295 = param3;
         var_255 = param4;
         var_1595 = param5;
      }
      
      public function get position() : int
      {
         return var_829;
      }
      
      public function get isActive() : Boolean
      {
         return var_255;
      }
      
      public function get isClubQueue() : Boolean
      {
         return var_1595;
      }
      
      public function get hasHabboClub() : Boolean
      {
         return var_2295;
      }
   }
}
