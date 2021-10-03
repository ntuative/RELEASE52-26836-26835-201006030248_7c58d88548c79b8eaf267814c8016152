package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_656:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_536:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_656);
         var_536 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return var_536;
      }
   }
}
