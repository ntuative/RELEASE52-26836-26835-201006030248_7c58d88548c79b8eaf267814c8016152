package com.sulake.habbo.communication.messages.parser.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendCategoryData;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendData;
   
   public class MessengerInitMessageParser implements IMessageParser
   {
       
      
      private var var_2359:int;
      
      private var var_2356:int;
      
      private var var_91:Array;
      
      private var var_222:Array;
      
      private var var_2361:int;
      
      private var var_2357:int;
      
      private var var_2358:int;
      
      private var var_2360:int;
      
      public function MessengerInitMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_91 = new Array();
         this.var_222 = new Array();
         return true;
      }
      
      public function get extendedFriendLimit() : int
      {
         return this.var_2359;
      }
      
      public function get friends() : Array
      {
         return this.var_222;
      }
      
      public function get normalFriendLimit() : int
      {
         return this.var_2361;
      }
      
      public function get categories() : Array
      {
         return this.var_91;
      }
      
      public function get friendRequestLimit() : int
      {
         return this.var_2356;
      }
      
      public function get userFriendLimit() : int
      {
         return this.var_2360;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc4_:int = 0;
         this.var_2360 = param1.readInteger();
         this.var_2361 = param1.readInteger();
         this.var_2359 = param1.readInteger();
         this.var_2358 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc2_)
         {
            this.var_91.push(new FriendCategoryData(param1));
            _loc4_++;
         }
         var _loc3_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            this.var_222.push(new FriendData(param1));
            _loc4_++;
         }
         this.var_2356 = param1.readInteger();
         this.var_2357 = param1.readInteger();
         return true;
      }
      
      public function get evenMoreExtendedFriendLimit() : int
      {
         return this.var_2358;
      }
      
      public function get friendRequestCount() : int
      {
         return this.var_2357;
      }
   }
}
