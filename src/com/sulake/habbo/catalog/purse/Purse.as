package com.sulake.habbo.catalog.purse
{
   public class Purse implements IPurse
   {
       
      
      private var var_2022:int = 0;
      
      private var var_1556:int = 0;
      
      private var var_1906:Boolean = false;
      
      private var var_2021:int = 0;
      
      private var var_1930:int = 0;
      
      private var var_1555:int = 0;
      
      private var var_1928:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function get clubDays() : int
      {
         return var_1556;
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1556 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         var_1906 = param1;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         var_1928 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return var_1556 > 0 || var_1555 > 0;
      }
      
      public function get credits() : int
      {
         return var_2021;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         var_1930 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return var_1555;
      }
      
      public function get isVIP() : Boolean
      {
         return var_1906;
      }
      
      public function get pastClubDays() : int
      {
         return var_1928;
      }
      
      public function get pastVipDays() : int
      {
         return var_1930;
      }
      
      public function set pixels(param1:int) : void
      {
         var_2022 = param1;
      }
      
      public function get pixels() : int
      {
         return var_2022;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1555 = param1;
      }
      
      public function set credits(param1:int) : void
      {
         var_2021 = param1;
      }
   }
}
