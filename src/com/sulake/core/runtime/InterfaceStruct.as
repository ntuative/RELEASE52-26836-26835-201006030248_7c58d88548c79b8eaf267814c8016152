package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_413:uint;
      
      private var var_1052:IUnknown;
      
      private var var_1278:String;
      
      private var var_1051:IID;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         var_1051 = param1;
         var_1278 = getQualifiedClassName(var_1051);
         var_1052 = param2;
         var_413 = 0;
      }
      
      public function get iid() : IID
      {
         return var_1051;
      }
      
      public function get disposed() : Boolean
      {
         return var_1052 == null;
      }
      
      public function get references() : uint
      {
         return var_413;
      }
      
      public function release() : uint
      {
         return references > 0 ? uint(--var_413) : uint(0);
      }
      
      public function get unknown() : IUnknown
      {
         return var_1052;
      }
      
      public function get iis() : String
      {
         return var_1278;
      }
      
      public function reserve() : uint
      {
         return ++var_413;
      }
      
      public function dispose() : void
      {
         var_1051 = null;
         var_1278 = null;
         var_1052 = null;
         var_413 = 0;
      }
   }
}
