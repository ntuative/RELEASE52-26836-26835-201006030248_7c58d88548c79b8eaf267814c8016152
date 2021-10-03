package com.sulake.habbo.navigator
{
   import com.sulake.core.window.components.ITextWindow;
   
   public class CutToWidth implements BinarySearchTest
   {
       
      
      private var var_406:int;
      
      private var var_173:String;
      
      private var var_203:ITextWindow;
      
      public function CutToWidth()
      {
         super();
      }
      
      public function beforeSearch(param1:String, param2:ITextWindow, param3:int) : void
      {
         var_173 = param1;
         var_203 = param2;
         var_406 = param3;
      }
      
      public function test(param1:int) : Boolean
      {
         var_203.text = var_173.substring(0,param1) + "...";
         return var_203.textWidth > var_406;
      }
   }
}
