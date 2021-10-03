package com.sulake.habbo.widget.messages
{
   public class RoomWidgetSelectOutfitMessage extends RoomWidgetMessage
   {
      
      public static const const_1013:String = "select_outfit";
       
      
      private var var_1962:int;
      
      public function RoomWidgetSelectOutfitMessage(param1:int)
      {
         super(const_1013);
         var_1962 = param1;
      }
      
      public function get outfitId() : int
      {
         return var_1962;
      }
   }
}
