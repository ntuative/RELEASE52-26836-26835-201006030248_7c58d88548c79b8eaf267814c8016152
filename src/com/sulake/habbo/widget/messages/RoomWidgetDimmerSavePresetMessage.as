package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_678:String = "RWSDPM_SAVE_PRESET";
       
      
      private var _color:uint;
      
      private var var_2169:int;
      
      private var var_2167:int;
      
      private var var_2284:Boolean;
      
      private var var_1043:int;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_678);
         var_2167 = param1;
         var_2169 = param2;
         _color = param3;
         var_1043 = param4;
         var_2284 = param5;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get effectTypeId() : int
      {
         return var_2169;
      }
      
      public function get presetNumber() : int
      {
         return var_2167;
      }
      
      public function get brightness() : int
      {
         return var_1043;
      }
      
      public function get apply() : Boolean
      {
         return var_2284;
      }
   }
}
