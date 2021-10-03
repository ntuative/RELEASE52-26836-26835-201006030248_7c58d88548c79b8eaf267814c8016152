package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var var_454:String;
      
      private var var_2394:String;
      
      private var var_2391:int;
      
      private var var_2393:int;
      
      private var var_631:String;
      
      private var var_1200:String;
      
      private var _name:String;
      
      private var var_518:int;
      
      private var var_893:int;
      
      private var var_2395:int;
      
      private var _respectTotal:int;
      
      private var var_2392:String;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function get directMail() : int
      {
         return this.var_2393;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get realName() : String
      {
         return this.var_1200;
      }
      
      public function get customData() : String
      {
         return this.var_2394;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_518;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2391;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2392;
      }
      
      public function get figure() : String
      {
         return this.var_454;
      }
      
      public function get respectTotal() : int
      {
         return this._respectTotal;
      }
      
      public function get sex() : String
      {
         return this.var_631;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_454 = param1.readString();
         this.var_631 = param1.readString();
         this.var_2394 = param1.readString();
         this.var_1200 = param1.readString();
         this.var_2395 = param1.readInteger();
         this.var_2392 = param1.readString();
         this.var_2391 = param1.readInteger();
         this.var_2393 = param1.readInteger();
         this._respectTotal = param1.readInteger();
         this.var_893 = param1.readInteger();
         this.var_518 = param1.readInteger();
         return true;
      }
      
      public function get tickets() : int
      {
         return this.var_2395;
      }
      
      public function get respectLeft() : int
      {
         return this.var_893;
      }
   }
}
