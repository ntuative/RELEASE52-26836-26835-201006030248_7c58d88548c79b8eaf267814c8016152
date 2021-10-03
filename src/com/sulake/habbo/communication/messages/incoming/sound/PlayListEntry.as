package com.sulake.habbo.communication.messages.incoming.sound
{
   public class PlayListEntry
   {
       
      
      private var var_1792:int;
      
      private var var_1790:int = 0;
      
      private var var_1791:String;
      
      private var var_1789:int;
      
      private var var_1788:String;
      
      public function PlayListEntry(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         var_1792 = param1;
         var_1789 = param2;
         var_1788 = param3;
         var_1791 = param4;
      }
      
      public function get length() : int
      {
         return var_1789;
      }
      
      public function get name() : String
      {
         return var_1788;
      }
      
      public function get creator() : String
      {
         return var_1791;
      }
      
      public function get startPlayHeadPos() : int
      {
         return var_1790;
      }
      
      public function get id() : int
      {
         return var_1792;
      }
      
      public function set startPlayHeadPos(param1:int) : void
      {
         var_1790 = param1;
      }
   }
}
