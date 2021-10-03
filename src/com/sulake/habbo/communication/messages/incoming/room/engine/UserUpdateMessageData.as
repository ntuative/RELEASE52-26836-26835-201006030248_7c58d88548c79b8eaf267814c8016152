package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _y:Number = 0;
      
      private var var_83:Number = 0;
      
      private var var_236:int = 0;
      
      private var var_1753:int = 0;
      
      private var var_2101:Number = 0;
      
      private var var_2100:Number = 0;
      
      private var var_2102:Number = 0;
      
      private var var_2098:Number = 0;
      
      private var var_2099:Boolean = false;
      
      private var var_82:Number = 0;
      
      private var _id:int = 0;
      
      private var var_224:Array;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         var_224 = [];
         super();
         _id = param1;
         var_82 = param2;
         _y = param3;
         var_83 = param4;
         var_2098 = param5;
         var_236 = param6;
         var_1753 = param7;
         var_2101 = param8;
         var_2100 = param9;
         var_2102 = param10;
         var_2099 = param11;
         var_224 = param12;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_83;
      }
      
      public function get dir() : int
      {
         return var_236;
      }
      
      public function get localZ() : Number
      {
         return var_2098;
      }
      
      public function get isMoving() : Boolean
      {
         return var_2099;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get dirHead() : int
      {
         return var_1753;
      }
      
      public function get targetX() : Number
      {
         return var_2101;
      }
      
      public function get targetY() : Number
      {
         return var_2100;
      }
      
      public function get targetZ() : Number
      {
         return var_2102;
      }
      
      public function get x() : Number
      {
         return var_82;
      }
      
      public function get actions() : Array
      {
         return var_224.slice();
      }
   }
}
