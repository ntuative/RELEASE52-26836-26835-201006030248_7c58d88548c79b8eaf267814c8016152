package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1545:int = 9;
      
      public static const const_1647:int = 4;
      
      public static const const_1484:int = 1;
      
      public static const const_1425:int = 10;
      
      public static const const_1486:int = 2;
      
      public static const const_1271:int = 7;
      
      public static const const_1258:int = 11;
      
      public static const const_1555:int = 3;
      
      public static const const_1321:int = 8;
      
      public static const const_1410:int = 5;
      
      public static const const_1636:int = 6;
      
      public static const const_1329:int = 12;
       
      
      private var var_2302:String;
      
      private var _roomId:int;
      
      private var var_1168:int;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get info() : String
      {
         return var_2302;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         _roomId = param1.readInteger();
         var_1168 = param1.readInteger();
         var_2302 = param1.readString();
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1168;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
   }
}
