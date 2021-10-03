package com.sulake.core.window.utils
{
   import com.sulake.core.runtime.IDisposable;
   
   public class TextMargins implements IMargins, IDisposable
   {
       
      
      private var _disposed:Boolean = false;
      
      private var var_942:int;
      
      private var _right:int;
      
      private var var_941:int;
      
      private var var_943:int;
      
      private var var_188:Function;
      
      public function TextMargins(param1:int, param2:int, param3:int, param4:int, param5:Function)
      {
         super();
         var_941 = param1;
         var_943 = param2;
         _right = param3;
         var_942 = param4;
         var_188 = param5 != null ? param5 : nullCallback;
      }
      
      public function set bottom(param1:int) : void
      {
         var_942 = param1;
         var_188(this);
      }
      
      public function get left() : int
      {
         return var_941;
      }
      
      public function get isZeroes() : Boolean
      {
         return var_941 == 0 && _right == 0 && var_943 == 0 && var_942 == 0;
      }
      
      public function get right() : int
      {
         return _right;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function set top(param1:int) : void
      {
         var_943 = param1;
         var_188(this);
      }
      
      public function get top() : int
      {
         return var_943;
      }
      
      public function set left(param1:int) : void
      {
         var_941 = param1;
         var_188(this);
      }
      
      public function get bottom() : int
      {
         return var_942;
      }
      
      public function clone(param1:Function) : TextMargins
      {
         return new TextMargins(var_941,var_943,_right,var_942,param1);
      }
      
      public function dispose() : void
      {
         var_188 = null;
         _disposed = true;
      }
      
      public function set right(param1:int) : void
      {
         _right = param1;
         var_188(this);
      }
      
      private function nullCallback(param1:IMargins) : void
      {
      }
   }
}
