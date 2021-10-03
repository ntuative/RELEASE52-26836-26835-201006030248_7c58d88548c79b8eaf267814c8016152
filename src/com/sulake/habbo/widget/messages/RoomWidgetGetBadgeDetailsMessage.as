package com.sulake.habbo.widget.messages
{
   public class RoomWidgetGetBadgeDetailsMessage extends RoomWidgetMessage
   {
      
      public static const const_582:String = "RWGOI_MESSAGE_GET_BADGE_DETAILS";
       
      
      private var var_989:int = 0;
      
      public function RoomWidgetGetBadgeDetailsMessage(param1:int)
      {
         super(const_582);
         var_989 = param1;
      }
      
      public function get groupId() : int
      {
         return var_989;
      }
   }
}
