package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var var_454:String;
      
      private var var_1198:String;
      
      private var var_1199:String;
      
      private var var_1201:int;
      
      private var var_648:int;
      
      private var var_1200:String;
      
      private var _name:String;
      
      private var var_1202:Boolean;
      
      private var var_692:Boolean;
      
      private var _id:int;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_648 = param1.readInteger();
         this.var_692 = param1.readBoolean();
         this.var_1202 = param1.readBoolean();
         this.var_454 = param1.readString();
         this.var_1201 = param1.readInteger();
         this.var_1199 = param1.readString();
         this.var_1198 = param1.readString();
         this.var_1200 = param1.readString();
      }
      
      public function get gender() : int
      {
         return var_648;
      }
      
      public function get realName() : String
      {
         return var_1200;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get motto() : String
      {
         return var_1199;
      }
      
      public function get categoryId() : int
      {
         return var_1201;
      }
      
      public function get online() : Boolean
      {
         return var_692;
      }
      
      public function get followingAllowed() : Boolean
      {
         return var_1202;
      }
      
      public function get lastAccess() : String
      {
         return var_1198;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get figure() : String
      {
         return var_454;
      }
   }
}
