package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1361:IID;
      
      private var _isDisposed:Boolean;
      
      private var var_921:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         var_1361 = param1;
         var_921 = new Array();
         _isDisposed = false;
      }
      
      public function get receivers() : Array
      {
         return var_921;
      }
      
      public function get identifier() : IID
      {
         return var_1361;
      }
      
      public function get disposed() : Boolean
      {
         return _isDisposed;
      }
      
      public function dispose() : void
      {
         if(!_isDisposed)
         {
            _isDisposed = true;
            var_1361 = null;
            while(false)
            {
               var_921.pop();
            }
            var_921 = null;
         }
      }
   }
}
