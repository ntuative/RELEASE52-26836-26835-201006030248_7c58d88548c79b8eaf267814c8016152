package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1908:Boolean = false;
      
      private var var_1905:int = 0;
      
      private var var_1556:int = 0;
      
      private var var_1907:int = 0;
      
      private var var_1906:Boolean = false;
      
      private var var_1457:int = 0;
      
      private var var_1555:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function set creditBalance(param1:int) : void
      {
         var_1457 = Math.max(0,param1);
      }
      
      public function get clubPastPeriods() : int
      {
         return var_1905;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return var_1908;
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         var_1908 = param1;
      }
      
      public function get isVIP() : Boolean
      {
         return var_1906;
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         var_1905 = Math.max(0,param1);
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1556 = Math.max(0,param1);
      }
      
      public function get creditBalance() : int
      {
         return var_1457;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         var_1906 = param1;
      }
      
      public function set pixelBalance(param1:int) : void
      {
         var_1907 = Math.max(0,param1);
      }
      
      public function get clubDays() : int
      {
         return var_1556;
      }
      
      public function get pixelBalance() : int
      {
         return var_1907;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1555 = Math.max(0,param1);
      }
      
      public function get clubPeriods() : int
      {
         return var_1555;
      }
   }
}
