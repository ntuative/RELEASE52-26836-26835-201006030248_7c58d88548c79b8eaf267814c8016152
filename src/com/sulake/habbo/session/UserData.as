package com.sulake.habbo.session
{
   public class UserData implements IUserData
   {
       
      
      private var var_454:String = "";
      
      private var var_2203:String = "";
      
      private var var_2205:int = 0;
      
      private var var_2206:int = 0;
      
      private var _type:int = 0;
      
      private var var_2207:String = "";
      
      private var var_631:String = "";
      
      private var _id:int = -1;
      
      private var _name:String = "";
      
      private var var_2204:int = 0;
      
      public function UserData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set groupStatus(param1:int) : void
      {
         var_2205 = param1;
      }
      
      public function set groupID(param1:String) : void
      {
         var_2207 = param1;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set figure(param1:String) : void
      {
         var_454 = param1;
      }
      
      public function set sex(param1:String) : void
      {
         var_631 = param1;
      }
      
      public function get groupStatus() : int
      {
         return var_2205;
      }
      
      public function set webID(param1:int) : void
      {
         var_2204 = param1;
      }
      
      public function get groupID() : String
      {
         return var_2207;
      }
      
      public function set custom(param1:String) : void
      {
         var_2203 = param1;
      }
      
      public function get figure() : String
      {
         return var_454;
      }
      
      public function get sex() : String
      {
         return var_631;
      }
      
      public function get custom() : String
      {
         return var_2203;
      }
      
      public function get webID() : int
      {
         return var_2204;
      }
      
      public function set xp(param1:int) : void
      {
         var_2206 = param1;
      }
      
      public function set type(param1:int) : void
      {
         _type = param1;
      }
      
      public function get xp() : int
      {
         return var_2206;
      }
   }
}
