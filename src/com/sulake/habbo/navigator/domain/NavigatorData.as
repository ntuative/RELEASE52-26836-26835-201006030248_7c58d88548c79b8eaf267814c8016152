package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.navigator.NavigatorSettingsMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1448:int = 10;
       
      
      private var var_1525:NavigatorSettingsMessageParser;
      
      private var var_1252:int;
      
      private var var_1939:int;
      
      private var var_1936:Boolean;
      
      private var var_1032:Array;
      
      private var var_851:Dictionary;
      
      private var var_1031:Array;
      
      private var var_2371:int;
      
      private var var_1935:int;
      
      private var var_1940:int;
      
      private var var_1934:int;
      
      private var var_600:PublicRoomShortData;
      
      private var var_403:RoomEventData;
      
      private var var_127:MsgWithRequestId;
      
      private var var_1938:Boolean;
      
      private var _navigator:HabboNavigator;
      
      private var var_1937:Boolean;
      
      private var var_197:GuestRoomData;
      
      private var var_709:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         var_1032 = new Array();
         var_1031 = new Array();
         var_851 = new Dictionary();
         super();
         _navigator = param1;
      }
      
      public function get createdFlatId() : int
      {
         return var_1939;
      }
      
      public function get eventMod() : Boolean
      {
         return var_1937;
      }
      
      public function startLoading() : void
      {
         this.var_709 = true;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return false;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         var_1937 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(var_403 != null)
         {
            var_403.dispose();
         }
         var_403 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return var_127 != null && var_127 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return var_127 != null && var_127 as GuestRoomSearchResultData != null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return var_127 as GuestRoomSearchResultData;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return var_197;
      }
      
      public function get allCategories() : Array
      {
         return var_1032;
      }
      
      public function onRoomExit() : void
      {
         if(var_403 != null)
         {
            var_403.dispose();
            var_403 = null;
         }
         if(var_600 != null)
         {
            var_600.dispose();
            var_600 = null;
         }
         if(var_197 != null)
         {
            var_197.dispose();
            var_197 = null;
         }
         _currentRoomOwner = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         disposeCurrentMsg();
         var_127 = param1;
         var_709 = false;
      }
      
      public function get settings() : NavigatorSettingsMessageParser
      {
         return var_1525;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         disposeCurrentMsg();
         var_127 = param1;
         var_709 = false;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         var_600 = null;
         var_197 = null;
         _currentRoomOwner = false;
         if(param1.guestRoom)
         {
            _currentRoomOwner = param1.owner;
         }
         else
         {
            var_600 = param1.publicSpace;
            var_403 = null;
         }
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return _currentRoomOwner;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2371 = param1.limit;
         this.var_1252 = param1.favouriteRoomIds.length;
         this.var_851 = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this.var_851[_loc2_] = "yes";
         }
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return var_127 as PopularRoomTagsData;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return var_600;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return var_1936;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         disposeCurrentMsg();
         var_127 = param1;
         var_709 = false;
      }
      
      public function set avatarId(param1:int) : void
      {
         var_1940 = param1;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return var_197 != null && _currentRoomOwner;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_709;
      }
      
      public function get visibleCategories() : Array
      {
         return var_1031;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         var_1032 = param1;
         var_1031 = new Array();
         for each(_loc2_ in var_1032)
         {
            if(_loc2_.visible)
            {
               var_1031.push(_loc2_);
            }
         }
      }
      
      public function get currentRoomRating() : int
      {
         return var_1935;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return var_1934;
      }
      
      public function set settings(param1:NavigatorSettingsMessageParser) : void
      {
         var_1525 = param1;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(var_127 == null)
         {
            return;
         }
         var_127.dispose();
         var_127 = null;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return var_403;
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         var_851[param1] = !!param2 ? "yes" : null;
         var_1252 += !!param2 ? 1 : -1;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return var_127 as OfficialRoomsData;
      }
      
      public function get avatarId() : int
      {
         return var_1940;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = 0;
         return false;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return var_127 != null && var_127 as OfficialRoomsData != null;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         var_1936 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         var_1935 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         var_1938 = param1;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(var_197 != null)
         {
            var_197.dispose();
         }
         var_197 = param1;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(var_197 == null)
         {
            return false;
         }
         var _loc1_:int = 0;
         return this.var_1525.homeRoomId == _loc1_;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return var_1252 >= var_2371;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         var_1934 = param1;
      }
      
      public function get hcMember() : Boolean
      {
         return var_1938;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return var_197 != null && !_currentRoomOwner;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         var_1939 = param1;
      }
   }
}
