package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1342:int = 4;
      
      public static const const_622:int = 3;
      
      public static const const_706:int = 2;
      
      public static const const_986:int = 1;
       
      
      private var var_1766:String;
      
      private var _disposed:Boolean;
      
      private var var_1671:int;
      
      private var var_1765:Boolean;
      
      private var var_902:String;
      
      private var var_823:PublicRoomData;
      
      private var var_1769:int;
      
      private var _index:int;
      
      private var var_1767:String;
      
      private var _type:int;
      
      private var var_1697:String;
      
      private var var_824:GuestRoomData;
      
      private var var_1768:String;
      
      private var _open:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         _index = param1.readInteger();
         var_1766 = param1.readString();
         var_1768 = param1.readString();
         var_1765 = param1.readInteger() == 1;
         var_1767 = param1.readString();
         var_902 = param1.readString();
         var_1769 = param1.readInteger();
         var_1671 = param1.readInteger();
         _type = param1.readInteger();
         if(_type == const_986)
         {
            var_1697 = param1.readString();
         }
         else if(_type == const_622)
         {
            var_823 = new PublicRoomData(param1);
         }
         else if(_type == const_706)
         {
            var_824 = new GuestRoomData(param1);
         }
      }
      
      public function get folderId() : int
      {
         return var_1769;
      }
      
      public function get popupCaption() : String
      {
         return var_1766;
      }
      
      public function get userCount() : int
      {
         return var_1671;
      }
      
      public function get open() : Boolean
      {
         return _open;
      }
      
      public function get showDetails() : Boolean
      {
         return var_1765;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_986)
         {
            return 0;
         }
         if(this.type == const_706)
         {
            return this.var_824.maxUserCount;
         }
         if(this.type == const_622)
         {
            return this.var_823.maxUsers;
         }
         return 0;
      }
      
      public function get popupDesc() : String
      {
         return var_1768;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(this.var_824 != null)
         {
            this.var_824.dispose();
            this.var_824 = null;
         }
         if(this.var_823 != null)
         {
            this.var_823.dispose();
            this.var_823 = null;
         }
      }
      
      public function get index() : int
      {
         return _index;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return var_824;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get picText() : String
      {
         return var_1767;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return var_823;
      }
      
      public function get picRef() : String
      {
         return var_902;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get tag() : String
      {
         return var_1697;
      }
      
      public function toggleOpen() : void
      {
         _open = !_open;
      }
   }
}
