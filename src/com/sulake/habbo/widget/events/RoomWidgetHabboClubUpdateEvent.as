package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_240:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_1990:Boolean = false;
      
      private var var_1988:int = 0;
      
      private var var_1987:int = 0;
      
      private var var_1986:int;
      
      private var var_1989:int = 0;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_240,param6,param7);
         var_1989 = param1;
         var_1987 = param2;
         var_1988 = param3;
         var_1990 = param4;
         var_1986 = param5;
      }
      
      public function get clubLevel() : int
      {
         return var_1986;
      }
      
      public function get pastPeriods() : int
      {
         return var_1988;
      }
      
      public function get periodsLeft() : int
      {
         return var_1987;
      }
      
      public function get daysLeft() : int
      {
         return var_1989;
      }
      
      public function get allowClubDances() : Boolean
      {
         return var_1990;
      }
   }
}
