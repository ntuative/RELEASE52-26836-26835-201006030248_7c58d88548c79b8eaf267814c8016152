package com.sulake.habbo.communication.messages.incoming.roomsettings
{
   public class RoomSettingsData
   {
      
      public static const const_441:int = 0;
      
      public static const const_134:int = 2;
      
      public static const const_165:int = 1;
      
      public static const const_548:Array = ["open","closed","password"];
       
      
      private var _name:String;
      
      private var var_2042:Boolean;
      
      private var var_2044:Boolean;
      
      private var var_2266:int;
      
      private var var_2043:Array;
      
      private var var_2265:int;
      
      private var var_1894:Boolean;
      
      private var var_1161:String;
      
      private var var_2045:int;
      
      private var var_2041:Boolean;
      
      private var var_1892:int;
      
      private var var_1201:int;
      
      private var _roomId:int;
      
      private var var_660:Array;
      
      public function RoomSettingsData()
      {
         super();
      }
      
      public function get maximumVisitors() : int
      {
         return var_2045;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         var_2045 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         var_2041 = param1;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function get tags() : Array
      {
         return var_660;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1894;
      }
      
      public function set controllerCount(param1:int) : void
      {
         var_2265 = param1;
      }
      
      public function set roomId(param1:int) : void
      {
         _roomId = param1;
      }
      
      public function set controllers(param1:Array) : void
      {
         var_2043 = param1;
      }
      
      public function set tags(param1:Array) : void
      {
         var_660 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return var_2042;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return var_2044;
      }
      
      public function get maximumVisitorsLimit() : int
      {
         return var_2266;
      }
      
      public function get categoryId() : int
      {
         return var_1201;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         var_1894 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return var_2041;
      }
      
      public function get controllerCount() : int
      {
         return var_2265;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get controllers() : Array
      {
         return var_2043;
      }
      
      public function set doorMode(param1:int) : void
      {
         var_1892 = param1;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         var_2042 = param1;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         var_2044 = param1;
      }
      
      public function set maximumVisitorsLimit(param1:int) : void
      {
         var_2266 = param1;
      }
      
      public function get doorMode() : int
      {
         return var_1892;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1201 = param1;
      }
      
      public function set description(param1:String) : void
      {
         var_1161 = param1;
      }
      
      public function get description() : String
      {
         return var_1161;
      }
   }
}
