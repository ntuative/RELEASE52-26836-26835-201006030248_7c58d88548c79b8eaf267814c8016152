package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class InternalWindowServices implements IInternalWindowServices
   {
       
      
      private var var_122:DisplayObject;
      
      private var var_2398:uint;
      
      private var var_948:IWindowToolTipAgentService;
      
      private var var_950:IWindowMouseScalingService;
      
      private var var_229:IWindowContext;
      
      private var var_947:IWindowFocusManagerService;
      
      private var var_946:IWindowMouseListenerService;
      
      private var var_949:IWindowMouseDraggingService;
      
      public function InternalWindowServices(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         var_2398 = 0;
         var_122 = param2;
         var_229 = param1;
         var_949 = new WindowMouseDragger(param2);
         var_950 = new WindowMouseScaler(param2);
         var_946 = new WindowMouseListener(param2);
         var_947 = new FocusManager(param2);
         var_948 = new WindowToolTipAgent(param2);
      }
      
      public function getMouseScalingService() : IWindowMouseScalingService
      {
         return var_950;
      }
      
      public function getFocusManagerService() : IWindowFocusManagerService
      {
         return var_947;
      }
      
      public function getToolTipAgentService() : IWindowToolTipAgentService
      {
         return var_948;
      }
      
      public function dispose() : void
      {
         if(var_949 != null)
         {
            var_949.dispose();
            var_949 = null;
         }
         if(var_950 != null)
         {
            var_950.dispose();
            var_950 = null;
         }
         if(var_946 != null)
         {
            var_946.dispose();
            var_946 = null;
         }
         if(var_947 != null)
         {
            var_947.dispose();
            var_947 = null;
         }
         if(var_948 != null)
         {
            var_948.dispose();
            var_948 = null;
         }
         var_229 = null;
      }
      
      public function getMouseListenerService() : IWindowMouseListenerService
      {
         return var_946;
      }
      
      public function getMouseDraggingService() : IWindowMouseDraggingService
      {
         return var_949;
      }
   }
}
