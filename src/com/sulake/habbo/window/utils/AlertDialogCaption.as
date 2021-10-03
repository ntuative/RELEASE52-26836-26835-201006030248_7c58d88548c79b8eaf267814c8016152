package com.sulake.habbo.window.utils
{
   class AlertDialogCaption implements ICaption
   {
       
      
      private var var_351:Boolean;
      
      private var var_203:String;
      
      private var var_1312:String;
      
      function AlertDialogCaption(param1:String, param2:String, param3:Boolean)
      {
         super();
         var_203 = param1;
         var_1312 = param2;
         var_351 = param3;
      }
      
      public function get toolTip() : String
      {
         return var_1312;
      }
      
      public function set visible(param1:Boolean) : void
      {
         var_351 = param1;
      }
      
      public function get text() : String
      {
         return var_203;
      }
      
      public function get visible() : Boolean
      {
         return var_351;
      }
      
      public function set toolTip(param1:String) : void
      {
         var_1312 = param1;
      }
      
      public function set text(param1:String) : void
      {
         var_203 = param1;
      }
   }
}
