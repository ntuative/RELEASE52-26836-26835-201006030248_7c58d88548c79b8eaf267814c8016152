package com.sulake.habbo.communication.messages.outgoing.room.avatar
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LookToMessageComposer implements IMessageComposer
   {
       
      
      private var var_2298:int;
      
      private var var_2297:int;
      
      public function LookToMessageComposer(param1:int, param2:int)
      {
         super();
         var_2298 = param1;
         var_2297 = param2;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [var_2298,var_2297];
      }
   }
}
