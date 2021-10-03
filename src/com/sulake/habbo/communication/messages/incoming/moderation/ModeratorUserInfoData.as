package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var var_1832:int;
      
      private var var_1828:int;
      
      private var var_1831:int;
      
      private var _userName:String;
      
      private var var_1830:int;
      
      private var var_1829:int;
      
      private var var_1833:int;
      
      private var _userId:int;
      
      private var var_692:Boolean;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         _userId = param1.readInteger();
         _userName = param1.readString();
         var_1829 = param1.readInteger();
         var_1830 = param1.readInteger();
         var_692 = param1.readBoolean();
         var_1831 = param1.readInteger();
         var_1828 = param1.readInteger();
         var_1832 = param1.readInteger();
         var_1833 = param1.readInteger();
      }
      
      public function get banCount() : int
      {
         return var_1833;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
      
      public function get online() : Boolean
      {
         return var_692;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return var_1830;
      }
      
      public function get abusiveCfhCount() : int
      {
         return var_1828;
      }
      
      public function get cautionCount() : int
      {
         return var_1832;
      }
      
      public function get cfhCount() : int
      {
         return var_1831;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return var_1829;
      }
      
      public function get userName() : String
      {
         return _userName;
      }
   }
}
