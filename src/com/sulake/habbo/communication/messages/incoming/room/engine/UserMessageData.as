package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1301:String = "F";
      
      public static const const_841:String = "M";
       
      
      private var var_82:Number = 0;
      
      private var var_454:String = "";
      
      private var var_2286:int = 0;
      
      private var var_2203:String = "";
      
      private var var_2205:int = 0;
      
      private var var_2206:int = 0;
      
      private var var_2207:String = "";
      
      private var var_631:String = "";
      
      private var _id:int = 0;
      
      private var var_212:Boolean = false;
      
      private var var_236:int = 0;
      
      private var var_2285:String = "";
      
      private var _name:String = "";
      
      private var var_2204:int = 0;
      
      private var _y:Number = 0;
      
      private var var_83:Number = 0;
      
      public function UserMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get z() : Number
      {
         return var_83;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get dir() : int
      {
         return var_236;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_212)
         {
            var_236 = param1;
         }
      }
      
      public function set name(param1:String) : void
      {
         if(!var_212)
         {
            _name = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get userType() : int
      {
         return var_2286;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!var_212)
         {
            var_2205 = param1;
         }
      }
      
      public function get subType() : String
      {
         return var_2285;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!var_212)
         {
            var_2207 = param1;
         }
      }
      
      public function set subType(param1:String) : void
      {
         if(!var_212)
         {
            var_2285 = param1;
         }
      }
      
      public function set xp(param1:int) : void
      {
         if(!var_212)
         {
            var_2206 = param1;
         }
      }
      
      public function set figure(param1:String) : void
      {
         if(!var_212)
         {
            var_454 = param1;
         }
      }
      
      public function set userType(param1:int) : void
      {
         if(!var_212)
         {
            var_2286 = param1;
         }
      }
      
      public function set sex(param1:String) : void
      {
         if(!var_212)
         {
            var_631 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return var_2205;
      }
      
      public function get groupID() : String
      {
         return var_2207;
      }
      
      public function set webID(param1:int) : void
      {
         if(!var_212)
         {
            var_2204 = param1;
         }
      }
      
      public function set custom(param1:String) : void
      {
         if(!var_212)
         {
            var_2203 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_212 = true;
      }
      
      public function get sex() : String
      {
         return var_631;
      }
      
      public function get figure() : String
      {
         return var_454;
      }
      
      public function get webID() : int
      {
         return var_2204;
      }
      
      public function get custom() : String
      {
         return var_2203;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_212)
         {
            _y = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_212)
         {
            var_83 = param1;
         }
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_212)
         {
            var_82 = param1;
         }
      }
      
      public function get x() : Number
      {
         return var_82;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get xp() : int
      {
         return var_2206;
      }
   }
}
