package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_1785:Array;
      
      private var var_1786:String;
      
      private var var_1787:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         var_1786 = param1;
         var_1785 = param2;
         var_1787 = param3;
      }
      
      public function get menuId() : String
      {
         return var_1786;
      }
      
      public function get yieldList() : Array
      {
         return var_1785;
      }
      
      public function get lockToIcon() : Boolean
      {
         return var_1787;
      }
   }
}
