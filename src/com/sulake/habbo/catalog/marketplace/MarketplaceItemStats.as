package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_1519:Array;
      
      private var var_1916:int;
      
      private var var_1915:int;
      
      private var var_1913:int;
      
      private var var_1917:int;
      
      private var _dayOffsets:Array;
      
      private var var_1914:int;
      
      private var var_1520:Array;
      
      public function MarketplaceItemStats()
      {
         super();
      }
      
      public function get dayOffsets() : Array
      {
         return _dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return var_1519;
      }
      
      public function set averagePrices(param1:Array) : void
      {
         var_1519 = param1.slice();
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         _dayOffsets = param1.slice();
      }
      
      public function get furniTypeId() : int
      {
         return var_1915;
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         var_1520 = param1.slice();
      }
      
      public function set averagePrice(param1:int) : void
      {
         var_1916 = param1;
      }
      
      public function get historyLength() : int
      {
         return var_1913;
      }
      
      public function get furniCategoryId() : int
      {
         return var_1917;
      }
      
      public function get offerCount() : int
      {
         return var_1914;
      }
      
      public function set offerCount(param1:int) : void
      {
         var_1914 = param1;
      }
      
      public function get soldAmounts() : Array
      {
         return var_1520;
      }
      
      public function get averagePrice() : int
      {
         return var_1916;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         var_1917 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         var_1913 = param1;
      }
      
      public function set furniTypeId(param1:int) : void
      {
         var_1915 = param1;
      }
   }
}
