package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var var_2169:int;
      
      private var var_2167:int;
      
      private var var_2171:Boolean;
      
      private var var_2168:String;
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_2170:int;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         _roomId = param6;
         _roomCategory = param7;
         var_2167 = param1;
         var_2169 = param2;
         var_2168 = param3;
         var_2170 = param4;
         var_2171 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [var_2167,var_2169,var_2168,var_2170,int(var_2171)];
      }
      
      public function dispose() : void
      {
      }
   }
}
