package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1228:String = "WN_CREATED";
      
      public static const const_883:String = "WN_DISABLE";
      
      public static const const_1015:String = "WN_DEACTIVATED";
      
      public static const const_867:String = "WN_OPENED";
      
      public static const const_901:String = "WN_CLOSED";
      
      public static const const_915:String = "WN_DESTROY";
      
      public static const const_1702:String = "WN_ARRANGED";
      
      public static const const_462:String = "WN_PARENT_RESIZED";
      
      public static const const_853:String = "WN_ENABLE";
      
      public static const const_956:String = "WN_RELOCATE";
      
      public static const const_947:String = "WN_FOCUS";
      
      public static const const_896:String = "WN_PARENT_RELOCATED";
      
      public static const const_499:String = "WN_PARAM_UPDATED";
      
      public static const const_552:String = "WN_PARENT_ACTIVATED";
      
      public static const const_174:String = "WN_RESIZED";
      
      public static const const_967:String = "WN_CLOSE";
      
      public static const const_971:String = "WN_PARENT_REMOVED";
      
      public static const const_265:String = "WN_CHILD_RELOCATED";
      
      public static const const_716:String = "WN_ENABLED";
      
      public static const const_289:String = "WN_CHILD_RESIZED";
      
      public static const const_1017:String = "WN_MINIMIZED";
      
      public static const const_534:String = "WN_DISABLED";
      
      public static const const_235:String = "WN_CHILD_ACTIVATED";
      
      public static const const_439:String = "WN_STATE_UPDATED";
      
      public static const const_732:String = "WN_UNSELECTED";
      
      public static const const_454:String = "WN_STYLE_UPDATED";
      
      public static const const_1560:String = "WN_UPDATE";
      
      public static const const_382:String = "WN_PARENT_ADDED";
      
      public static const const_599:String = "WN_RESIZE";
      
      public static const const_579:String = "WN_CHILD_REMOVED";
      
      public static const const_1595:String = "";
      
      public static const const_1045:String = "WN_RESTORED";
      
      public static const const_315:String = "WN_SELECTED";
      
      public static const const_969:String = "WN_MINIMIZE";
      
      public static const const_1002:String = "WN_FOCUSED";
      
      public static const const_1241:String = "WN_LOCK";
      
      public static const const_312:String = "WN_CHILD_ADDED";
      
      public static const const_906:String = "WN_UNFOCUSED";
      
      public static const const_495:String = "WN_RELOCATED";
      
      public static const const_1014:String = "WN_DEACTIVATE";
      
      public static const const_1260:String = "WN_CRETAE";
      
      public static const const_892:String = "WN_RESTORE";
      
      public static const const_326:String = "WN_ACTVATED";
      
      public static const const_1383:String = "WN_LOCKED";
      
      public static const const_511:String = "WN_SELECT";
      
      public static const const_997:String = "WN_MAXIMIZE";
      
      public static const const_1010:String = "WN_OPEN";
      
      public static const const_578:String = "WN_UNSELECT";
      
      public static const const_1693:String = "WN_ARRANGE";
      
      public static const const_1240:String = "WN_UNLOCKED";
      
      public static const const_1692:String = "WN_UPDATED";
      
      public static const const_992:String = "WN_ACTIVATE";
      
      public static const const_1343:String = "WN_UNLOCK";
      
      public static const const_1001:String = "WN_MAXIMIZED";
      
      public static const const_890:String = "WN_DESTROYED";
      
      public static const const_888:String = "WN_UNFOCUS";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1663,cancelable);
      }
   }
}
