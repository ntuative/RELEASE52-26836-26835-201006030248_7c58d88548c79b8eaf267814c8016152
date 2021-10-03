package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var var_1773:Boolean = false;
      
      private var var_1778:Boolean = false;
      
      private var var_1772:String = "";
      
      private var _type:String = "";
      
      private var var_1779:Boolean = false;
      
      private var var_1775:Number = 0;
      
      private var var_1774:Number = 0;
      
      private var var_1771:Number = 0;
      
      private var var_1777:String = "";
      
      private var var_1770:Number = 0;
      
      private var var_1776:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:Number, param5:Number, param6:Number = 0, param7:Number = 0, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false)
      {
         super();
         _type = param1;
         var_1777 = param2;
         var_1772 = param3;
         var_1774 = param4;
         var_1771 = param5;
         var_1775 = param6;
         var_1770 = param7;
         var_1776 = param8;
         var_1778 = param9;
         var_1779 = param10;
         var_1773 = param11;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_1776;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_1773;
      }
      
      public function get localX() : Number
      {
         return var_1775;
      }
      
      public function get localY() : Number
      {
         return var_1770;
      }
      
      public function get canvasId() : String
      {
         return var_1777;
      }
      
      public function get altKey() : Boolean
      {
         return var_1778;
      }
      
      public function get spriteTag() : String
      {
         return var_1772;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get screenX() : Number
      {
         return var_1774;
      }
      
      public function get screenY() : Number
      {
         return var_1771;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_1779;
      }
   }
}
