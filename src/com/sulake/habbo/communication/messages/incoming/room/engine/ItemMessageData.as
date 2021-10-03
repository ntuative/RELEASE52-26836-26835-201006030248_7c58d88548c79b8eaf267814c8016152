package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var var_83:Number = 0;
      
      private var _data:String = "";
      
      private var var_1528:int = 0;
      
      private var var_35:int = 0;
      
      private var _type:int = 0;
      
      private var _y:Number = 0;
      
      private var var_2051:Boolean = false;
      
      private var var_2447:String = "";
      
      private var _id:int = 0;
      
      private var var_212:Boolean = false;
      
      private var var_236:String = "";
      
      private var var_2053:int = 0;
      
      private var var_2052:int = 0;
      
      private var var_1775:int = 0;
      
      private var var_1770:int = 0;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         _id = param1;
         _type = param2;
         var_2051 = param3;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_212)
         {
            _y = param1;
         }
      }
      
      public function get isOldFormat() : Boolean
      {
         return var_2051;
      }
      
      public function set type(param1:int) : void
      {
         if(!var_212)
         {
            _type = param1;
         }
      }
      
      public function get dir() : String
      {
         return var_236;
      }
      
      public function get state() : int
      {
         return var_35;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!var_212)
         {
            var_1775 = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!var_212)
         {
            var_2053 = param1;
         }
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!var_212)
         {
            var_2052 = param1;
         }
      }
      
      public function set dir(param1:String) : void
      {
         if(!var_212)
         {
            var_236 = param1;
         }
      }
      
      public function get data() : String
      {
         return _data;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!var_212)
         {
            var_1770 = param1;
         }
      }
      
      public function set state(param1:int) : void
      {
         if(!var_212)
         {
            var_35 = param1;
         }
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get localX() : Number
      {
         return var_1775;
      }
      
      public function set data(param1:String) : void
      {
         if(!var_212)
         {
            _data = param1;
         }
      }
      
      public function get wallX() : Number
      {
         return var_2053;
      }
      
      public function get wallY() : Number
      {
         return var_2052;
      }
      
      public function get localY() : Number
      {
         return var_1770;
      }
      
      public function setReadOnly() : void
      {
         var_212 = true;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_83;
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_212)
         {
            var_83 = param1;
         }
      }
   }
}
