package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_245:String = "RWUIUE_PEER";
      
      public static const const_246:String = "RWUIUE_OWN_USER";
      
      public static const TRADE_REASON_NO_OWN_RIGHT:int = 1;
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_1304:String = "BOT";
      
      public static const const_874:int = 2;
      
      public static const const_1309:int = 0;
      
      public static const const_873:int = 3;
       
      
      private var var_454:String = "";
      
      private var var_1199:String = "";
      
      private var var_2218:Boolean = false;
      
      private var var_2206:int = 0;
      
      private var var_1921:int = 0;
      
      private var var_2220:Boolean = false;
      
      private var var_1200:String = "";
      
      private var var_2216:Boolean = false;
      
      private var var_893:int = 0;
      
      private var var_2215:Boolean = true;
      
      private var var_989:int = 0;
      
      private var var_2217:Boolean = false;
      
      private var var_1303:Boolean = false;
      
      private var var_2221:Boolean = false;
      
      private var var_1922:int = 0;
      
      private var var_2219:Boolean = false;
      
      private var _image:BitmapData = null;
      
      private var var_267:Array;
      
      private var var_1305:Boolean = false;
      
      private var _name:String = "";
      
      private var var_2204:int = 0;
      
      private var var_2222:Boolean = false;
      
      private var var_2214:int = 0;
      
      private var var_1923:String = "";
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var_267 = [];
         super(param1,param2,param3);
      }
      
      public function get userRoomId() : int
      {
         return var_1921;
      }
      
      public function set userRoomId(param1:int) : void
      {
         var_1921 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return var_2218;
      }
      
      public function get canBeKicked() : Boolean
      {
         return var_2215;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         var_2215 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         var_2216 = param1;
      }
      
      public function get motto() : String
      {
         return var_1199;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         var_2217 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return var_1303;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set motto(param1:String) : void
      {
         var_1199 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return var_2222;
      }
      
      public function get groupBadgeId() : String
      {
         return var_1923;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         var_1303 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return var_2219;
      }
      
      public function set carryItem(param1:int) : void
      {
         var_1922 = param1;
      }
      
      public function get badges() : Array
      {
         return var_267;
      }
      
      public function get amIController() : Boolean
      {
         return var_2220;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         var_2220 = param1;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         var_2222 = param1;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         var_2214 = param1;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         var_1923 = param1;
      }
      
      public function set realName(param1:String) : void
      {
         var_1200 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return var_2216;
      }
      
      public function set figure(param1:String) : void
      {
         var_454 = param1;
      }
      
      public function get carryItem() : int
      {
         return var_1922;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return var_1305;
      }
      
      public function get isIgnored() : Boolean
      {
         return var_2217;
      }
      
      public function set respectLeft(param1:int) : void
      {
         var_893 = param1;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get canTradeReason() : int
      {
         return var_2214;
      }
      
      public function get realName() : String
      {
         return var_1200;
      }
      
      public function get figure() : String
      {
         return var_454;
      }
      
      public function set webID(param1:int) : void
      {
         var_2204 = param1;
      }
      
      public function set badges(param1:Array) : void
      {
         var_267 = param1;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         var_2221 = param1;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         var_2219 = param1;
      }
      
      public function get respectLeft() : int
      {
         return var_893;
      }
      
      public function get webID() : int
      {
         return var_2204;
      }
      
      public function set groupId(param1:int) : void
      {
         var_989 = param1;
      }
      
      public function get xp() : int
      {
         return var_2206;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         var_2218 = param1;
      }
      
      public function get groupId() : int
      {
         return var_989;
      }
      
      public function get canTrade() : Boolean
      {
         return var_2221;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         var_1305 = param1;
      }
      
      public function set xp(param1:int) : void
      {
         var_2206 = param1;
      }
   }
}
