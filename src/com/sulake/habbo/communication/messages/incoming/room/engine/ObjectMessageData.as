package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ObjectMessageData
   {
       
      
      private var var_1123:int = 0;
      
      private var _data:String = "";
      
      private var var_1528:int = -1;
      
      private var var_35:int = 0;
      
      private var _type:int = 0;
      
      private var var_1125:int = 0;
      
      private var var_2447:String = "";
      
      private var var_1677:int = 0;
      
      private var _id:int = 0;
      
      private var var_212:Boolean = false;
      
      private var var_236:int = 0;
      
      private var var_2097:String = null;
      
      private var var_82:Number = 0;
      
      private var _y:Number = 0;
      
      private var var_83:Number = 0;
      
      public function ObjectMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function set type(param1:int) : void
      {
         if(!var_212)
         {
            _type = param1;
         }
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_212)
         {
            _y = param1;
         }
      }
      
      public function get dir() : int
      {
         return var_236;
      }
      
      public function get extra() : int
      {
         return var_1528;
      }
      
      public function get state() : int
      {
         return var_35;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_212)
         {
            var_236 = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_212)
         {
            var_82 = param1;
         }
      }
      
      public function set extra(param1:int) : void
      {
         if(!var_212)
         {
            var_1528 = param1;
         }
      }
      
      public function get z() : Number
      {
         return var_83;
      }
      
      public function set state(param1:int) : void
      {
         if(!var_212)
         {
            var_35 = param1;
         }
      }
      
      public function get data() : String
      {
         return _data;
      }
      
      public function get expiryTime() : int
      {
         return var_1677;
      }
      
      public function get staticClass() : String
      {
         return var_2097;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function set expiryTime(param1:int) : void
      {
         if(!var_212)
         {
            var_1677 = param1;
         }
      }
      
      public function set data(param1:String) : void
      {
         if(!var_212)
         {
            _data = param1;
         }
      }
      
      public function set staticClass(param1:String) : void
      {
         if(!var_212)
         {
            var_2097 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_212 = true;
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!var_212)
         {
            var_1123 = param1;
         }
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!var_212)
         {
            var_1125 = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_212)
         {
            var_83 = param1;
         }
      }
      
      public function get sizeX() : int
      {
         return var_1123;
      }
      
      public function get x() : Number
      {
         return var_82;
      }
      
      public function get sizeY() : int
      {
         return var_1125;
      }
   }
}
