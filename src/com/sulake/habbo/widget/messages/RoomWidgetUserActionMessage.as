package com.sulake.habbo.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_661:String = "RWUAM_RESPECT_USER";
      
      public static const const_745:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_628:String = "RWUAM_START_TRADING";
      
      public static const const_577:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_671:String = "RWUAM_WHISPER_USER";
      
      public static const const_616:String = "RWUAM_IGNORE_USER";
      
      public static const const_422:String = "RWUAM_REQUEST_PET_UPDATE";
      
      public static const const_581:String = "RWUAM_BAN_USER";
      
      public static const const_541:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_410:String = "RWUAM_KICK_USER";
      
      public static const const_610:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_631:String = " RWUAM_RESPECT_PET";
      
      public static const const_450:String = "RWUAM_KICK_BOT";
      
      public static const const_1374:String = "RWUAM_TRAIN_PET";
      
      public static const const_585:String = "RWUAM_PICKUP_PET";
      
      public static const const_652:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_729:String = "RWUAM_REPORT";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         _userId = param2;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
   }
}
