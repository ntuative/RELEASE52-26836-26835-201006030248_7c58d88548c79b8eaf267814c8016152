package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2373:Boolean;
      
      private var var_2372:int;
      
      private var var_2375:Boolean;
      
      private var var_1487:String;
      
      private var var_1200:String;
      
      private var var_1940:int;
      
      private var var_1819:String;
      
      private var var_2374:String;
      
      private var var_1818:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1940 = param1.readInteger();
         this.var_1487 = param1.readString();
         this.var_1819 = param1.readString();
         this.var_2373 = param1.readBoolean();
         this.var_2375 = param1.readBoolean();
         param1.readString();
         this.var_2372 = param1.readInteger();
         this.var_1818 = param1.readString();
         this.var_2374 = param1.readString();
         this.var_1200 = param1.readString();
      }
      
      public function get realName() : String
      {
         return this.var_1200;
      }
      
      public function get avatarName() : String
      {
         return this.var_1487;
      }
      
      public function get avatarId() : int
      {
         return this.var_1940;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2373;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2374;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_1818;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2375;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_1819;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2372;
      }
   }
}
