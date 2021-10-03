package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_1758:int;
      
      private var var_1760:String;
      
      private var var_1759:int;
      
      private var _disposed:Boolean;
      
      private var var_1762:int;
      
      private var var_1761:String;
      
      private var var_1276:int;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         var_1761 = param1.readString();
         var_1758 = param1.readInteger();
         var_1759 = param1.readInteger();
         var_1760 = param1.readString();
         var_1762 = param1.readInteger();
         var_1276 = param1.readInteger();
      }
      
      public function get maxUsers() : int
      {
         return var_1762;
      }
      
      public function get worldId() : int
      {
         return var_1759;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
      }
      
      public function get unitPropertySet() : String
      {
         return var_1761;
      }
      
      public function get unitPort() : int
      {
         return var_1758;
      }
      
      public function get castLibs() : String
      {
         return var_1760;
      }
      
      public function get nodeId() : int
      {
         return var_1276;
      }
   }
}
