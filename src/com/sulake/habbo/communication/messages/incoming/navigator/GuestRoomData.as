package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1671:int;
      
      private var var_1893:String;
      
      private var var_1887:int;
      
      private var var_1889:int;
      
      private var var_700:Boolean;
      
      private var var_1894:Boolean;
      
      private var var_391:int;
      
      private var var_1161:String;
      
      private var var_1892:int;
      
      private var var_1201:int;
      
      private var _ownerName:String;
      
      private var var_721:String;
      
      private var var_1890:int;
      
      private var var_1891:RoomThumbnailData;
      
      private var var_1888:Boolean;
      
      private var var_660:Array;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         var_660 = new Array();
         super();
         var_391 = param1.readInteger();
         var_700 = param1.readBoolean();
         var_721 = param1.readString();
         _ownerName = param1.readString();
         var_1892 = param1.readInteger();
         var_1671 = param1.readInteger();
         var_1890 = param1.readInteger();
         var_1161 = param1.readString();
         var_1887 = param1.readInteger();
         var_1888 = param1.readBoolean();
         var_1889 = param1.readInteger();
         var_1201 = param1.readInteger();
         var_1893 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            var_660.push(_loc4_);
            _loc3_++;
         }
         var_1891 = new RoomThumbnailData(param1);
         var_1894 = param1.readBoolean();
      }
      
      public function get maxUserCount() : int
      {
         return var_1890;
      }
      
      public function get roomName() : String
      {
         return var_721;
      }
      
      public function get userCount() : int
      {
         return var_1671;
      }
      
      public function get score() : int
      {
         return var_1889;
      }
      
      public function get eventCreationTime() : String
      {
         return var_1893;
      }
      
      public function get allowTrading() : Boolean
      {
         return var_1888;
      }
      
      public function get tags() : Array
      {
         return var_660;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1894;
      }
      
      public function get event() : Boolean
      {
         return var_700;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         this.var_660 = null;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get categoryId() : int
      {
         return var_1201;
      }
      
      public function get srchSpecPrm() : int
      {
         return var_1887;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return var_1891;
      }
      
      public function get doorMode() : int
      {
         return var_1892;
      }
      
      public function get flatId() : int
      {
         return var_391;
      }
      
      public function get description() : String
      {
         return var_1161;
      }
   }
}
