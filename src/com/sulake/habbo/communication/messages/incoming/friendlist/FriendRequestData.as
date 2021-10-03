package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendRequestData
   {
       
      
      private var var_2209:int;
      
      private var var_2208:String;
      
      private var var_1097:int;
      
      public function FriendRequestData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1097 = param1.readInteger();
         this.var_2208 = param1.readString();
         this.var_2209 = int(param1.readString());
      }
      
      public function get requestId() : int
      {
         return this.var_1097;
      }
      
      public function get requesterUserId() : int
      {
         return this.var_2209;
      }
      
      public function get requesterName() : String
      {
         return this.var_2208;
      }
   }
}
