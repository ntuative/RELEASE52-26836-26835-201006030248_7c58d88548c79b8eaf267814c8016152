package com.sulake.habbo.help.cfh.data
{
   public class CallForHelpData
   {
       
      
      private var var_1826:int;
      
      private var var_1211:String = "";
      
      private var var_1017:int;
      
      public function CallForHelpData()
      {
         super();
      }
      
      public function set reportedUserName(param1:String) : void
      {
         var_1211 = param1;
      }
      
      public function get topicIndex() : int
      {
         return var_1826;
      }
      
      public function set topicIndex(param1:int) : void
      {
         var_1826 = param1;
      }
      
      public function get reportedUserName() : String
      {
         return var_1211;
      }
      
      public function flush() : void
      {
         var_1017 = 0;
         var_1211 = "";
      }
      
      public function get userSelected() : Boolean
      {
         return var_1017 > 0;
      }
      
      public function set reportedUserId(param1:int) : void
      {
         var_1017 = param1;
      }
      
      public function getTopicKey(param1:int) : String
      {
         return (!!userSelected ? "help.cfh.topicwithharasser." : "help.cfh.topic.") + param1;
      }
      
      public function get reportedUserId() : int
      {
         return var_1017;
      }
   }
}
