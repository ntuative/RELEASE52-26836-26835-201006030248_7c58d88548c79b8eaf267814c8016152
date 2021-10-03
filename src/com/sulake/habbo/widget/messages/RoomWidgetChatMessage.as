package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatMessage extends RoomWidgetMessage
   {
      
      public static const const_139:int = 0;
      
      public static const const_132:int = 1;
      
      public static const const_116:int = 2;
      
      public static const const_594:String = "RWCM_MESSAGE_CHAT";
       
      
      private var var_1385:int = 0;
      
      private var var_1740:String = "";
      
      private var var_203:String = "";
      
      public function RoomWidgetChatMessage(param1:String, param2:String, param3:int = 0, param4:String = "")
      {
         super(param1);
         var_203 = param2;
         var_1385 = param3;
         var_1740 = param4;
      }
      
      public function get recipientName() : String
      {
         return var_1740;
      }
      
      public function get chatType() : int
      {
         return var_1385;
      }
      
      public function get text() : String
      {
         return var_203;
      }
   }
}
