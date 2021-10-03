package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_1440:String;
      
      private var var_1026:String;
      
      private var var_1675:Boolean;
      
      private var var_1528:int;
      
      private var var_1674:int;
      
      private var var_1673:Boolean;
      
      private var var_1642:String = "";
      
      private var var_1672:Boolean;
      
      private var _category:int;
      
      private var _objId:int;
      
      private var var_1415:int;
      
      private var var_1676:Boolean;
      
      private var var_1792:int = -1;
      
      private var var_1677:int;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         var_1674 = param1;
         var_1026 = param2;
         _objId = param3;
         var_1415 = param4;
         _category = param5;
         var_1440 = param6;
         var_1675 = param7;
         var_1672 = param8;
         var_1676 = param9;
         var_1673 = param10;
         var_1677 = param11;
      }
      
      public function get slotId() : String
      {
         return var_1642;
      }
      
      public function get extra() : int
      {
         return var_1528;
      }
      
      public function get classId() : int
      {
         return var_1415;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get isSellable() : Boolean
      {
         return var_1673;
      }
      
      public function get isGroupable() : Boolean
      {
         return var_1675;
      }
      
      public function get stripId() : int
      {
         return var_1674;
      }
      
      public function get stuffData() : String
      {
         return var_1440;
      }
      
      public function get songId() : int
      {
         return var_1792;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         var_1642 = param1;
         var_1528 = param2;
      }
      
      public function get itemType() : String
      {
         return var_1026;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get expiryTime() : int
      {
         return var_1677;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1676;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1672;
      }
   }
}
