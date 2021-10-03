package com.sulake.habbo.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_131:String = "RWPUE_VOTE_RESULT";
      
      public static const const_117:String = "RWPUE_VOTE_QUESTION";
       
      
      private var var_1339:int;
      
      private var var_1139:String;
      
      private var var_691:Array;
      
      private var var_1089:Array;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_1139 = param2;
         var_1089 = param3;
         var_691 = param4;
         if(var_691 == null)
         {
            var_691 = [];
         }
         var_1339 = param5;
      }
      
      public function get votes() : Array
      {
         return var_691.slice();
      }
      
      public function get totalVotes() : int
      {
         return var_1339;
      }
      
      public function get question() : String
      {
         return var_1139;
      }
      
      public function get choices() : Array
      {
         return var_1089.slice();
      }
   }
}
