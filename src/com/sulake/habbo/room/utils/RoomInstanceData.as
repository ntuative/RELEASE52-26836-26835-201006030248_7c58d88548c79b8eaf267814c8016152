package com.sulake.habbo.room.utils
{
   public class RoomInstanceData
   {
       
      
      private var var_910:LegacyWallGeometry = null;
      
      private var var_627:SelectedRoomObjectData = null;
      
      private var _roomCategory:int = 0;
      
      private var var_629:TileHeightMap = null;
      
      private var var_2117:String = null;
      
      private var _roomId:int = 0;
      
      private var var_628:SelectedRoomObjectData = null;
      
      private var var_911:RoomCamera = null;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         super();
         _roomId = param1;
         _roomCategory = param2;
         var_910 = new LegacyWallGeometry();
         var_911 = new RoomCamera();
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(var_627 != null)
         {
            var_627.dispose();
         }
         var_627 = param1;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(var_629 != null)
         {
            var_629.dispose();
         }
         var_629 = param1;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function set worldType(param1:String) : void
      {
         var_2117 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return var_910;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return var_628;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return var_911;
      }
      
      public function dispose() : void
      {
         if(var_629 != null)
         {
            var_629.dispose();
            var_629 = null;
         }
         if(var_910 != null)
         {
            var_910.dispose();
            var_910 = null;
         }
         if(var_911 != null)
         {
            var_911.dispose();
            var_911 = null;
         }
         if(var_627 != null)
         {
            var_627.dispose();
            var_627 = null;
         }
         if(var_628 != null)
         {
            var_628.dispose();
            var_628 = null;
         }
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return var_629;
      }
      
      public function get worldType() : String
      {
         return var_2117;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(var_628 != null)
         {
            var_628.dispose();
         }
         var_628 = param1;
      }
      
      public function get roomCategory() : int
      {
         return _roomCategory;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return var_627;
      }
   }
}
