package com.sulake.habbo.widget.messages
{
   public class RoomWidgetStickieSendUpdateMessage extends RoomWidgetMessage
   {
      
      public static const const_480:String = "RWSUM_STICKIE_SEND_UPDATE";
      
      public static const const_650:String = "RWSUM_STICKIE_SEND_DELETE";
       
      
      private var var_702:String;
      
      private var var_158:int;
      
      private var var_203:String;
      
      public function RoomWidgetStickieSendUpdateMessage(param1:String, param2:int, param3:String = "", param4:String = "")
      {
         super(param1);
         var_158 = param2;
         var_203 = param3;
         var_702 = param4;
      }
      
      public function get objectId() : int
      {
         return var_158;
      }
      
      public function get text() : String
      {
         return var_203;
      }
      
      public function get colorHex() : String
      {
         return var_702;
      }
   }
}
