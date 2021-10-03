package com.sulake.core.window
{
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.localization.ILocalizable;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.window.components.DesktopController;
   import com.sulake.core.window.components.IDesktopWindow;
   import com.sulake.core.window.components.IScrollableWindow;
   import com.sulake.core.window.components.IScrollbarWindow;
   import com.sulake.core.window.components.SubstituteParentController;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowState;
   import com.sulake.core.window.graphics.IGraphicContextHost;
   import com.sulake.core.window.graphics.IWindowRenderer;
   import com.sulake.core.window.utils.IInternalWindowServices;
   import com.sulake.core.window.utils.IMouseCursor;
   import com.sulake.core.window.utils.IWindowParser;
   import com.sulake.core.window.utils.InternalWindowServices;
   import com.sulake.core.window.utils.KeyboardEventQueue;
   import com.sulake.core.window.utils.MouseCursorControl;
   import com.sulake.core.window.utils.MouseEventQueue;
   import com.sulake.core.window.utils.WindowParser;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class WindowContext implements IWindowContext, IDisposable, IUpdateReceiver
   {
      
      public static var var_972:MouseEventQueue;
      
      public static var var_1661:IMouseCursor;
      
      public static const const_1516:int = 2;
      
      private static var var_1137:Factory;
      
      private static var var_145:IWindowRenderer;
      
      public static var var_1425:KeyboardEventQueue;
      
      public static const const_1682:int = 1;
      
      public static const ERROR_DURING_EVENT_HANDLING:int = 5;
      
      public static const const_1563:int = 0;
      
      public static const const_1645:int = 3;
      
      public static const const_1212:int = 4;
       
      
      protected var var_2351:IWindowFactory;
      
      private var _disposed:Boolean = false;
      
      private var var_787:WindowController;
      
      private var var_764:Date;
      
      protected var var_2350:IWindowParser;
      
      protected var var_987:Error;
      
      protected var var_2349:IInternalWindowServices;
      
      protected var var_99:WindowController;
      
      protected var var_1438:int = -1;
      
      protected var var_92:IDesktopWindow;
      
      private var var_1651:Boolean = false;
      
      protected var var_2428:Boolean = true;
      
      private var var_190:Boolean = false;
      
      protected var var_1157:SubstituteParentController;
      
      private var var_2404:Point;
      
      protected var var_334:DisplayObjectContainer;
      
      private var var_339:IWindowContextStateListener;
      
      private var _name:String;
      
      protected var _localization:ICoreLocalizationManager;
      
      private var var_651:Point;
      
      public function WindowContext(param1:String, param2:IWindowRenderer, param3:IWindowFactory, param4:ICoreLocalizationManager, param5:DisplayObjectContainer, param6:Rectangle, param7:IWindowContextStateListener)
      {
         var_651 = new Point();
         var_2404 = new Point();
         super();
         _name = param1;
         var_145 = param2;
         _localization = param4;
         var_334 = param5;
         var_2349 = new InternalWindowServices(this,param5);
         var_2351 = param3;
         var_2350 = new WindowParser(this);
         var_764 = new Date();
         if(var_1137 == null)
         {
            var_1137 = new Factory();
         }
         if(var_972 == null)
         {
            var_972 = new MouseEventQueue(param5);
         }
         if(var_1425 == null)
         {
            var_1425 = new KeyboardEventQueue(param5);
         }
         if(param6 == null)
         {
            param6 = new Rectangle(0,0,800,600);
         }
         var_92 = new DesktopController("_CONTEXT_DESKTOP_" + _name,this,param6);
         var_334.addChild(var_92.getDisplayObject());
         var_334.doubleClickEnabled = true;
         var_334.addEventListener(Event.RESIZE,stageResizedHandler);
         var_99 = WindowController(var_92);
         var_1157 = new SubstituteParentController(this);
         var_339 = param7;
      }
      
      public function destroy(param1:IWindow) : Boolean
      {
         if(param1 == var_92)
         {
            var_92 = null;
         }
         if(param1.state != WindowState.const_485)
         {
            param1.destroy();
         }
         return true;
      }
      
      public function create(param1:String, param2:String, param3:uint, param4:uint, param5:uint, param6:Rectangle, param7:Function, param8:IWindow, param9:uint, param10:Array = null, param11:Array = null) : IWindow
      {
         var _loc12_:Class = var_1137.getWindowClassByType(param3);
         if(_loc12_ == null)
         {
            handleError(WindowContext.const_1212,new Error("Failed to solve implementation for window \"" + param1 + "\"!"));
            return null;
         }
         if(param8 == null)
         {
            if(param5 & 0)
            {
               param8 = var_1157;
            }
         }
         var _loc13_:IWindow = new _loc12_(param1,param3,param4,param5,this,param6,param8 != null ? param8 : var_92,param7,param10,param11,param9);
         if(param2 && param2.length)
         {
            _loc13_.caption = param2;
         }
         return _loc13_;
      }
      
      public function getDesktopWindow() : IDesktopWindow
      {
         return var_92;
      }
      
      public function render(param1:uint) : void
      {
         var_1651 = true;
         var_145.update(param1);
         var_1651 = false;
      }
      
      public function dispose() : void
      {
         _disposed = true;
         var_334.removeEventListener(Event.RESIZE,stageResizedHandler);
         var_334.removeChild(IGraphicContextHost(var_92).getGraphicContext(true) as DisplayObject);
         var_92.destroy();
         var_92 = null;
         var_1157.destroy();
         var_1157 = null;
         var_1137 = null;
         var_145 = null;
         var_99 = null;
         var_764 = null;
         var_339 = null;
      }
      
      private function stageResizedHandler(param1:Event) : void
      {
         if(var_92 != null && true)
         {
            if(var_334 is Stage)
            {
               var_92.width = Stage(var_334).stageWidth;
               var_92.height = Stage(var_334).stageHeight;
            }
            else
            {
               var_92.width = var_334.width;
               var_92.height = var_334.height;
            }
         }
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function registerLocalizationListener(param1:String, param2:IWindow) : void
      {
         _localization.registerListener(param1,param2 as ILocalizable);
      }
      
      public function invalidate(param1:IWindow, param2:Rectangle, param3:uint) : Boolean
      {
         var_145.addToRenderQueue(WindowController(param1),param2,param3);
         return true;
      }
      
      public function getWindowParser() : IWindowParser
      {
         return var_2350;
      }
      
      public function removeLocalizationListener(param1:String, param2:IWindow) : void
      {
         _localization.removeListener(param1,param2 as ILocalizable);
      }
      
      public function getWindowFactory() : IWindowFactory
      {
         return var_2351;
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:* = null;
         var _loc3_:int = 0;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var_190 = true;
         if(var_987)
         {
            throw var_987;
         }
         var _loc6_:Point = new Point();
         var _loc7_:MouseEventQueue = WindowContext.var_972;
         _loc7_.begin();
         var_651.x = -1;
         var_651.y = -1;
         while(true)
         {
            _loc2_ = _loc7_.next() as MouseEvent;
            if(_loc2_ == null)
            {
               break;
            }
            if(_loc2_.stageX != var_651.x || _loc2_.stageY != var_651.y)
            {
               var_651.x = _loc2_.stageX;
               var_651.y = _loc2_.stageY;
               _loc5_ = new Array();
               var_92.groupChildrenUnderPoint(var_651,_loc5_);
            }
            _loc3_ = _loc5_ != null ? int(_loc5_.length) : 0;
            if(_loc3_ == 1)
            {
               if(_loc2_.type == MouseEvent.MOUSE_MOVE)
               {
                  if(var_99 != var_92 && true)
                  {
                     var_99.getGlobalPosition(_loc6_);
                     var_99.update(var_99,new MouseEvent(MouseEvent.MOUSE_OUT,false,false,_loc2_.stageX - _loc6_.x,_loc2_.stageY - _loc6_.y,null,_loc2_.altKey,_loc2_.ctrlKey,_loc2_.shiftKey,_loc2_.buttonDown,_loc2_.delta));
                     var_99 = WindowController(var_92);
                  }
               }
            }
            while(--_loc3_ > -1)
            {
               _loc4_ = passMouseEvent(WindowController(_loc5_[_loc3_]),_loc2_);
               if(_loc4_ != null && _loc4_.visible)
               {
                  if(_loc2_.type == MouseEvent.MOUSE_MOVE)
                  {
                     if(_loc4_ != var_99)
                     {
                        if(true)
                        {
                           var_99.getGlobalPosition(_loc6_);
                           var_99.update(var_99,new MouseEvent(MouseEvent.MOUSE_OUT,false,false,_loc2_.stageX - _loc6_.x,_loc2_.stageY - _loc6_.y,null,_loc2_.altKey,_loc2_.ctrlKey,_loc2_.shiftKey,_loc2_.buttonDown,_loc2_.delta));
                        }
                        if(!_loc4_.disposed)
                        {
                           _loc4_.getGlobalPosition(_loc6_);
                           _loc4_.update(_loc4_,new MouseEvent(MouseEvent.MOUSE_OVER,false,false,_loc2_.stageX - _loc6_.x,_loc2_.stageY - _loc6_.y,null,_loc2_.altKey,_loc2_.ctrlKey,_loc2_.shiftKey,_loc2_.buttonDown,_loc2_.delta));
                        }
                        if(!_loc4_.disposed)
                        {
                           var_99 = _loc4_;
                        }
                     }
                  }
                  else if(_loc2_.type == MouseEvent.MOUSE_UP || _loc2_.type == MouseEvent.CLICK)
                  {
                     if(var_99 && true)
                     {
                        if(var_339 != null)
                        {
                           var_339.mouseEventReceived(_loc2_.type,var_99);
                        }
                     }
                  }
                  if(_loc2_.altKey)
                  {
                     if(var_99)
                     {
                        Logger.log("HOVER: undefined");
                     }
                  }
                  if(_loc4_ != var_92)
                  {
                     _loc2_.stopPropagation();
                     _loc7_.remove();
                  }
                  break;
               }
            }
         }
         _loc7_.end();
         var_190 = false;
      }
      
      public function handleError(param1:int, param2:Error) : void
      {
         var_987 = param2;
         var_1438 = param1;
         if(var_2428)
         {
            throw param2;
         }
      }
      
      public function getLastError() : Error
      {
         return var_987;
      }
      
      public function getMouseCursor() : IMouseCursor
      {
         if(var_1661 == null)
         {
            var_1661 = new MouseCursorControl(var_334);
         }
         return var_1661;
      }
      
      public function flushError() : void
      {
         var_987 = null;
         var_1438 = -1;
      }
      
      public function getLastErrorCode() : int
      {
         return var_1438;
      }
      
      private function passMouseEvent(param1:WindowController, param2:MouseEvent) : WindowController
      {
         if(param1.disposed)
         {
            return null;
         }
         if(!param1.testParamFlag(WindowParam.const_52))
         {
            return null;
         }
         if(param1.testStateFlag(WindowState.const_72))
         {
            return null;
         }
         var _loc3_:Point = new Point(param2.stageX,param2.stageY);
         param1.convertPointFromGlobalToLocalSpace(_loc3_);
         var _loc4_:BitmapData = var_145.getDrawBufferForRenderable(param1);
         if(!param1.validateLocalPointIntersection(_loc3_,_loc4_))
         {
            return null;
         }
         if(param1.testParamFlag(WindowParam.const_460))
         {
            if(param1.parent != null)
            {
               return passMouseEvent(WindowController(param1.parent),param2);
            }
         }
         var _loc5_:Boolean = true;
         switch(param2.type)
         {
            case MouseEvent.MOUSE_DOWN:
               var_787 = param1;
               break;
            case MouseEvent.CLICK:
               if(var_787 != param1)
               {
                  _loc5_ = false;
               }
               else
               {
                  var_787 = null;
               }
               break;
            case MouseEvent.DOUBLE_CLICK:
               if(var_787 != param1)
               {
                  _loc5_ = false;
               }
               else
               {
                  var_787 = null;
               }
               break;
            case MouseEvent.MOUSE_WHEEL:
               if(!(param1 is IScrollableWindow) && !(param1 is IScrollbarWindow))
               {
                  return null;
               }
               break;
         }
         if(_loc5_)
         {
            if(!param1.update(param1,param2))
            {
               if(param1.parent)
               {
                  return passMouseEvent(WindowController(param1.parent),param2);
               }
            }
         }
         return param1;
      }
      
      public function findWindowByName(param1:String) : IWindow
      {
         return var_92.findChildByName(param1);
      }
      
      public function getWindowServices() : IInternalWindowServices
      {
         return var_2349;
      }
   }
}
