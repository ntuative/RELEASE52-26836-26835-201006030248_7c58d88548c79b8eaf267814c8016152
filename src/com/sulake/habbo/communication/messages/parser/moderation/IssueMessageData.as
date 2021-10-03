package com.sulake.habbo.communication.messages.parser.moderation
{
   import flash.utils.getTimer;
   
   public class IssueMessageData
   {
      
      public static const const_151:int = 1;
      
      public static const const_1207:int = 3;
      
      public static const const_468:int = 2;
       
      
      private var var_2191:int;
      
      private var var_1758:int;
      
      private var var_2194:int;
      
      private var var_1759:int;
      
      private var var_35:int;
      
      private var var_391:int;
      
      private var var_1364:int;
      
      private var var_1711:int;
      
      private var var_1017:int;
      
      private var _roomResources:String;
      
      private var var_2195:int;
      
      private var var_2189:int;
      
      private var var_2190:String;
      
      private var var_1709:String;
      
      private var var_2196:int = 0;
      
      private var var_1211:String;
      
      private var _message:String;
      
      private var var_2197:int;
      
      private var var_2193:String;
      
      private var var_1201:int;
      
      private var var_721:String;
      
      private var var_2192:String;
      
      private var var_1554:int;
      
      public function IssueMessageData()
      {
         super();
      }
      
      public function set reportedUserId(param1:int) : void
      {
         var_1017 = param1;
      }
      
      public function set temporalPriority(param1:int) : void
      {
         var_2196 = param1;
      }
      
      public function get reporterUserId() : int
      {
         return var_2189;
      }
      
      public function set roomName(param1:String) : void
      {
         var_721 = param1;
      }
      
      public function set chatRecordId(param1:int) : void
      {
         var_2195 = param1;
      }
      
      public function get state() : int
      {
         return var_35;
      }
      
      public function get roomResources() : String
      {
         return _roomResources;
      }
      
      public function set roomResources(param1:String) : void
      {
         _roomResources = param1;
      }
      
      public function get roomName() : String
      {
         return var_721;
      }
      
      public function get message() : String
      {
         return _message;
      }
      
      public function set worldId(param1:int) : void
      {
         var_1759 = param1;
      }
      
      public function set state(param1:int) : void
      {
         var_35 = param1;
      }
      
      public function get unitPort() : int
      {
         return var_1758;
      }
      
      public function get priority() : int
      {
         return var_2191 + var_2196;
      }
      
      public function set issueId(param1:int) : void
      {
         var_1711 = param1;
      }
      
      public function get pickerUserName() : String
      {
         return var_1709;
      }
      
      public function getOpenTime() : String
      {
         var _loc1_:int = (getTimer() - var_1554) / 1000;
         var _loc2_:int = _loc1_ % 60;
         var _loc3_:int = _loc1_ / 60;
         var _loc4_:int = _loc3_ % 60;
         var _loc5_:int = _loc3_ / 60;
         var _loc6_:String = _loc2_ < 10 ? "0" + _loc2_ : "" + _loc2_;
         var _loc7_:String = _loc4_ < 10 ? "0" + _loc4_ : "" + _loc4_;
         var _loc8_:String = _loc5_ < 10 ? "0" + _loc5_ : "" + _loc5_;
         return _loc8_ + ":" + _loc7_ + ":" + _loc6_;
      }
      
      public function get categoryId() : int
      {
         return var_1201;
      }
      
      public function set reporterUserId(param1:int) : void
      {
         var_2189 = param1;
      }
      
      public function get roomType() : int
      {
         return var_1364;
      }
      
      public function set flatType(param1:String) : void
      {
         var_2190 = param1;
      }
      
      public function get chatRecordId() : int
      {
         return var_2195;
      }
      
      public function set message(param1:String) : void
      {
         _message = param1;
      }
      
      public function get worldId() : int
      {
         return var_1759;
      }
      
      public function set flatOwnerName(param1:String) : void
      {
         var_2192 = param1;
      }
      
      public function set reportedUserName(param1:String) : void
      {
         var_1211 = param1;
      }
      
      public function get issueId() : int
      {
         return var_1711;
      }
      
      public function set priority(param1:int) : void
      {
         var_2191 = param1;
      }
      
      public function set unitPort(param1:int) : void
      {
         var_1758 = param1;
      }
      
      public function get flatType() : String
      {
         return var_2190;
      }
      
      public function set reportedCategoryId(param1:int) : void
      {
         var_2194 = param1;
      }
      
      public function set pickerUserName(param1:String) : void
      {
         var_1709 = param1;
      }
      
      public function set pickerUserId(param1:int) : void
      {
         var_2197 = param1;
      }
      
      public function get reportedUserName() : String
      {
         return var_1211;
      }
      
      public function set roomType(param1:int) : void
      {
         var_1364 = param1;
      }
      
      public function get reportedCategoryId() : int
      {
         return var_2194;
      }
      
      public function set flatId(param1:int) : void
      {
         var_391 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1201 = param1;
      }
      
      public function set timeStamp(param1:int) : void
      {
         var_1554 = param1;
      }
      
      public function get pickerUserId() : int
      {
         return var_2197;
      }
      
      public function set reporterUserName(param1:String) : void
      {
         var_2193 = param1;
      }
      
      public function get timeStamp() : int
      {
         return var_1554;
      }
      
      public function get reportedUserId() : int
      {
         return var_1017;
      }
      
      public function get flatId() : int
      {
         return var_391;
      }
      
      public function get flatOwnerName() : String
      {
         return var_2192;
      }
      
      public function get reporterUserName() : String
      {
         return var_2193;
      }
   }
}
