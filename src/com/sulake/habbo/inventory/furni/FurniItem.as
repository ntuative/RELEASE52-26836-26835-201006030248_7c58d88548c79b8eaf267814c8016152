package com.sulake.habbo.inventory.furni
{
   import flash.display.BitmapData;
   
   public class FurniItem
   {
       
      
      private var _isSelected:Boolean = false;
      
      private var var_1674:int;
      
      private var var_1672:Boolean;
      
      private var var_1792:int;
      
      private var var_1440:String;
      
      private var var_1835:Boolean = false;
      
      private var var_1677:int;
      
      private var var_466:int;
      
      private var var_1026:String;
      
      private var var_1642:String;
      
      private var _image:BitmapData;
      
      private var _objId:int;
      
      private var var_1415:int;
      
      private var var_1676:Boolean;
      
      private var var_1834:int;
      
      public function FurniItem(param1:int, param2:String, param3:int, param4:int, param5:String, param6:Boolean, param7:Boolean, param8:int, param9:String, param10:int)
      {
         super();
         var_1674 = param1;
         var_1026 = param2;
         _objId = param3;
         var_1415 = param4;
         var_1440 = param5;
         var_1672 = param6;
         var_1676 = param7;
         var_1677 = param8;
         var_1642 = param9;
         var_1792 = param10;
         var_466 = -1;
      }
      
      public function get songId() : int
      {
         return var_1792;
      }
      
      public function get iconCallbackId() : int
      {
         return var_466;
      }
      
      public function get expiryTime() : int
      {
         return var_1677;
      }
      
      public function set prevCallbackId(param1:int) : void
      {
         var_1834 = param1;
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         var_1835 = param1;
      }
      
      public function set iconCallbackId(param1:int) : void
      {
         var_466 = param1;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1676;
      }
      
      public function get slotId() : String
      {
         return var_1642;
      }
      
      public function get classId() : int
      {
         return var_1415;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1672;
      }
      
      public function get stuffData() : String
      {
         return var_1440;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
      }
      
      public function get stripId() : int
      {
         return var_1674;
      }
      
      public function get isLocked() : Boolean
      {
         return var_1835;
      }
      
      public function get prevCallbackId() : int
      {
         return var_1834;
      }
      
      public function get iconImage() : BitmapData
      {
         return _image;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get itemType() : String
      {
         return var_1026;
      }
   }
}
