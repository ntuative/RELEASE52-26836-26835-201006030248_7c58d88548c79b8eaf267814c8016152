package com.sulake.habbo.widget.events
{
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class RoomWidgetRoomViewUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_587:String = "RWRVUE_ROOM_VIEW_POSITION_CHANGED";
      
      public static const const_725:String = "RWRVUE_ROOM_VIEW_SCALE_CHANGED";
      
      public static const const_270:String = "RWRVUE_ROOM_VIEW_SIZE_CHANGED";
       
      
      private var var_1483:Point;
      
      private var var_1482:Rectangle;
      
      private var var_151:Number = 0.0;
      
      public function RoomWidgetRoomViewUpdateEvent(param1:String, param2:Rectangle = null, param3:Point = null, param4:Number = 0.0, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         var_1482 = param2;
         var_1483 = param3;
         var_151 = param4;
      }
      
      public function get rect() : Rectangle
      {
         if(var_1482 != null)
         {
            return var_1482.clone();
         }
         return null;
      }
      
      public function get scale() : Number
      {
         return var_151;
      }
      
      public function get positionDelta() : Point
      {
         if(var_1483 != null)
         {
            return var_1483.clone();
         }
         return null;
      }
   }
}
