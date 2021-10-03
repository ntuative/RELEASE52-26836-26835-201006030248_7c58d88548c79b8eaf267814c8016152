package com.sulake.core.runtime.exceptions
{
   public class Exception extends Error
   {
       
      
      private var var_1611:String;
      
      public function Exception(param1:String, param2:String = "")
      {
         var_1611 = param2;
         super(param1);
      }
      
      override public function getStackTrace() : String
      {
         return var_1611 != "" ? var_1611 : super.getStackTrace();
      }
      
      public function toString() : String
      {
         return "Exception: " + super.message;
      }
   }
}
