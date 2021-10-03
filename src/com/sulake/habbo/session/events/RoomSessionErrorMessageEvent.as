package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionErrorMessageEvent extends RoomSessionEvent
   {
      
      public static const const_164:String = "RSEME_MAX_PETS";
      
      public static const const_640:String = "RSEME_PETS_FORBIDDEN_IN_FLAT";
      
      public static const const_217:String = "RSEME_KICKED";
      
      public static const const_638:String = "RSEME_PETS_FORBIDDEN_IN_HOTEL";
      
      public static const const_205:String = "RSEME_MAX_STICKIES";
      
      public static const const_828:String = "RSEME_DOOR_OTHER_DELETED";
      
      public static const const_730:String = "RSEME_NO_FREE_TILES_FOR_PET";
      
      public static const const_244:String = "RSEME_GUIDE_EXISTS";
      
      public static const const_206:String = "RSEME_MAX_SOUND";
      
      public static const const_236:String = "RSEME_MAX_FURNITURE";
      
      public static const const_209:String = "RSEME_GUIDE_BUSY";
      
      public static const const_232:String = "RSEME_INVALID_ITEM_LOC";
      
      public static const const_233:String = "RSEME_MAX_QUEUE";
      
      public static const const_756:String = "RSEME_CANT_SET_NOT_OWNER";
      
      public static const const_662:String = "RSEME_SELECTED_TILE_NOT_FREE_FOR_PET";
      
      public static const const_928:String = "RSEME_DOOR_NOT_INSTALLED";
      
      public static const const_211:String = "RSEME_CANT_TRADE_STUFF";
       
      
      private var _message:String;
      
      public function RoomSessionErrorMessageEvent(param1:String, param2:IRoomSession, param3:String = null, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param2,param4,param5);
         _message = param3;
      }
      
      public function get message() : String
      {
         return _message;
      }
   }
}
