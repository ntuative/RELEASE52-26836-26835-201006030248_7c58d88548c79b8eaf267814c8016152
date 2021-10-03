package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_2319:int;
      
      private var var_392:Boolean;
      
      private var var_2320:Boolean;
      
      private var var_970:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2320 = param1.readBoolean();
         if(var_2320)
         {
            var_2319 = param1.readInteger();
            var_392 = param1.readBoolean();
         }
         else
         {
            var_970 = new PublicRoomShortData(param1);
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         if(var_970 != null)
         {
            var_970.dispose();
            var_970 = null;
         }
         return true;
      }
      
      public function get guestRoomId() : int
      {
         return var_2319;
      }
      
      public function get owner() : Boolean
      {
         return var_392;
      }
      
      public function get guestRoom() : Boolean
      {
         return var_2320;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return var_970;
      }
   }
}
