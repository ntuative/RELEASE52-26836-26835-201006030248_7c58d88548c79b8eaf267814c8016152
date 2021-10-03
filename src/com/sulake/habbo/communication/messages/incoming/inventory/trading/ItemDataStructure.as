package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_1026:String;
      
      private var var_1815:int;
      
      private var var_1945:int;
      
      private var var_1528:int;
      
      private var var_1947:int;
      
      private var _category:int;
      
      private var var_2441:int;
      
      private var var_1950:int;
      
      private var var_1946:int;
      
      private var var_1949:int;
      
      private var var_1948:int;
      
      private var var_1944:Boolean;
      
      private var var_1440:String;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         var_1815 = param1;
         var_1026 = param2;
         var_1945 = param3;
         var_1949 = param4;
         _category = param5;
         var_1440 = param6;
         var_1528 = param7;
         var_1946 = param8;
         var_1950 = param9;
         var_1948 = param10;
         var_1947 = param11;
         var_1944 = param12;
      }
      
      public function get itemTypeID() : int
      {
         return var_1949;
      }
      
      public function get extra() : int
      {
         return var_1528;
      }
      
      public function get stuffData() : String
      {
         return var_1440;
      }
      
      public function get groupable() : Boolean
      {
         return var_1944;
      }
      
      public function get creationMonth() : int
      {
         return var_1948;
      }
      
      public function get roomItemID() : int
      {
         return var_1945;
      }
      
      public function get itemType() : String
      {
         return var_1026;
      }
      
      public function get itemID() : int
      {
         return var_1815;
      }
      
      public function get songID() : int
      {
         return var_1528;
      }
      
      public function get timeToExpiration() : int
      {
         return var_1946;
      }
      
      public function get creationYear() : int
      {
         return var_1947;
      }
      
      public function get creationDay() : int
      {
         return var_1950;
      }
      
      public function get category() : int
      {
         return _category;
      }
   }
}
