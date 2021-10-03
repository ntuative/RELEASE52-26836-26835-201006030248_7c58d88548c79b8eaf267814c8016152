package com.sulake.habbo.communication.messages.outgoing.handshake
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class VersionCheckMessageComposer implements IMessageComposer
   {
       
      
      private var var_1726:String;
      
      private var var_1236:String;
      
      private var var_1727:int;
      
      public function VersionCheckMessageComposer(param1:int, param2:String, param3:String)
      {
         super();
         var_1727 = param1;
         var_1236 = param2;
         var_1726 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1727,var_1236,var_1726];
      }
      
      public function dispose() : void
      {
      }
   }
}
