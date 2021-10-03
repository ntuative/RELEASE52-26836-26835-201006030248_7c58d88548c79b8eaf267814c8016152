package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetPresentDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_472:String = "RWPDUE_CONTENTS_CLUB";
      
      public static const const_476:String = "RWPDUE_CONTENTS_LANDSCAPE";
      
      public static const const_82:String = "RWPDUE_CONTENTS";
      
      public static const const_512:String = "RWPDUE_CONTENTS_WALLPAPER";
      
      public static const const_432:String = "RWPDUE_CONTENTS_FLOOR";
      
      public static const const_66:String = "RWPDUE_PACKAGEINFO";
       
      
      private var var_203:String;
      
      private var var_1784:BitmapData;
      
      private var var_158:int = -1;
      
      private var var_29:Boolean;
      
      public function RoomWidgetPresentDataUpdateEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:BitmapData = null, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_158 = param2;
         var_203 = param3;
         var_29 = param4;
         var_1784 = param5;
      }
      
      public function get iconBitmapData() : BitmapData
      {
         return var_1784;
      }
      
      public function get text() : String
      {
         return var_203;
      }
      
      public function get objectId() : int
      {
         return var_158;
      }
      
      public function get controller() : Boolean
      {
         return var_29;
      }
   }
}
