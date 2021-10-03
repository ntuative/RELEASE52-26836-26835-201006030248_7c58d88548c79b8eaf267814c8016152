package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomSettingsFlatInfo;
   
   public class FlatInfoMessageParser implements IMessageParser
   {
       
      
      private var var_235:RoomSettingsFlatInfo;
      
      public function FlatInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         var_235 = null;
         return true;
      }
      
      public function get flatInfo() : RoomSettingsFlatInfo
      {
         return var_235;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_235 = new RoomSettingsFlatInfo();
         var_235.allowFurniMoving = param1.readInteger() == 1;
         var_235.doorMode = param1.readInteger();
         var_235.id = param1.readInteger();
         var_235.ownerName = param1.readString();
         var_235.type = param1.readString();
         var_235.name = param1.readString();
         var_235.description = param1.readString();
         var_235.showOwnerName = param1.readInteger() == 1;
         var_235.allowTrading = param1.readInteger() == 1;
         var_235.categoryAlertKey = param1.readInteger() == 1;
         return true;
      }
   }
}
