package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_290:String = "WE_CHILD_RESIZED";
      
      public static const const_1231:String = "WE_CLOSE";
      
      public static const const_1243:String = "WE_DESTROY";
      
      public static const const_122:String = "WE_CHANGE";
      
      public static const const_1292:String = "WE_RESIZE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_1657:String = "WE_PARENT_RESIZE";
      
      public static const const_98:String = "WE_UPDATE";
      
      public static const const_1205:String = "WE_MAXIMIZE";
      
      public static const const_431:String = "WE_DESTROYED";
      
      public static const const_846:String = "WE_UNSELECT";
      
      public static const const_1190:String = "WE_MAXIMIZED";
      
      public static const const_1488:String = "WE_UNLOCKED";
      
      public static const const_420:String = "WE_CHILD_REMOVED";
      
      public static const const_193:String = "WE_OK";
      
      public static const const_48:String = "WE_RESIZED";
      
      public static const const_1400:String = "WE_ACTIVATE";
      
      public static const const_281:String = "WE_ENABLED";
      
      public static const const_426:String = "WE_CHILD_RELOCATED";
      
      public static const const_1185:String = "WE_CREATE";
      
      public static const const_762:String = "WE_SELECT";
      
      public static const const_161:String = "";
      
      public static const const_1635:String = "WE_LOCKED";
      
      public static const const_1624:String = "WE_PARENT_RELOCATE";
      
      public static const const_1494:String = "WE_CHILD_REMOVE";
      
      public static const const_1512:String = "WE_CHILD_RELOCATE";
      
      public static const const_1600:String = "WE_LOCK";
      
      public static const const_239:String = "WE_FOCUSED";
      
      public static const const_567:String = "WE_UNSELECTED";
      
      public static const const_826:String = "WE_DEACTIVATED";
      
      public static const const_1225:String = "WE_MINIMIZED";
      
      public static const const_1546:String = "WE_ARRANGED";
      
      public static const const_1650:String = "WE_UNLOCK";
      
      public static const const_1569:String = "WE_ATTACH";
      
      public static const const_1232:String = "WE_OPEN";
      
      public static const const_1220:String = "WE_RESTORE";
      
      public static const const_1498:String = "WE_PARENT_RELOCATED";
      
      public static const const_1200:String = "WE_RELOCATE";
      
      public static const const_1548:String = "WE_CHILD_RESIZE";
      
      public static const const_1677:String = "WE_ARRANGE";
      
      public static const const_1312:String = "WE_OPENED";
      
      public static const const_1402:String = "WE_CLOSED";
      
      public static const const_1479:String = "WE_DETACHED";
      
      public static const const_1564:String = "WE_UPDATED";
      
      public static const const_1245:String = "WE_UNFOCUSED";
      
      public static const const_393:String = "WE_RELOCATED";
      
      public static const const_1235:String = "WE_DEACTIVATE";
      
      public static const const_249:String = "WE_DISABLED";
      
      public static const const_621:String = "WE_CANCEL";
      
      public static const const_731:String = "WE_ENABLE";
      
      public static const const_1373:String = "WE_ACTIVATED";
      
      public static const const_1324:String = "WE_FOCUS";
      
      public static const const_1641:String = "WE_DETACH";
      
      public static const const_1188:String = "WE_RESTORED";
      
      public static const const_1430:String = "WE_UNFOCUS";
      
      public static const const_64:String = "WE_SELECTED";
      
      public static const const_1409:String = "WE_PARENT_RESIZED";
      
      public static const const_1378:String = "WE_CREATED";
      
      public static const const_1523:String = "WE_ATTACHED";
      
      public static const const_1367:String = "WE_MINIMIZE";
      
      public static const WINDOW_EVENT_DISABLE:String = "WE_DISABLE";
       
      
      protected var _type:String = "";
      
      protected var var_1663:IWindow;
      
      protected var _window:IWindow;
      
      protected var var_1427:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         _type = param1;
         _window = param2;
         var_1663 = param3;
         var_1427 = false;
         super(param1,param4,param5);
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return var_1427;
      }
      
      public function get related() : IWindow
      {
         return var_1663;
      }
      
      public function get window() : IWindow
      {
         return _window;
      }
      
      public function set type(param1:String) : void
      {
         _type = param1;
      }
      
      override public function get type() : String
      {
         return _type;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(_type,window,related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            var_1427 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
   }
}
