package com.sulake.habbo.help
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IContext;
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.help.cfh.data.CallForHelpData;
   import com.sulake.habbo.help.cfh.data.UserRegistry;
   import com.sulake.habbo.help.enum.HabboHelpViewEnum;
   import com.sulake.habbo.help.help.HelpUI;
   import com.sulake.habbo.help.help.data.FaqIndex;
   import com.sulake.habbo.help.hotelmerge.HotelMergeUI;
   import com.sulake.habbo.help.tutorial.TutorialUI;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.session.IRoomSessionManager;
   import com.sulake.habbo.session.events.RoomSessionEvent;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.IHabboToolbar;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarSetIconEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.iid.IIDHabboCommunicationManager;
   import com.sulake.iid.IIDHabboConfigurationManager;
   import com.sulake.iid.IIDHabboLocalizationManager;
   import com.sulake.iid.IIDHabboRoomSessionManager;
   import com.sulake.iid.IIDHabboToolbar;
   import flash.utils.Dictionary;
   import iid.IIDHabboWindowManager;
   
   public class HabboHelp extends Component implements IHabboHelp
   {
       
      
      private var var_2039:UserRegistry;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var var_131:TutorialUI;
      
      private var var_726:IHabboLocalizationManager;
      
      private var _windowManager:IHabboWindowManager;
      
      private var var_58:HelpUI;
      
      private var var_725:IHabboConfigurationManager;
      
      private var var_194:IHabboToolbar;
      
      private var var_610:HotelMergeUI;
      
      private var var_314:IHabboCommunicationManager;
      
      private var var_870:FaqIndex;
      
      private var var_1925:String = "";
      
      private var var_1027:IncomingMessages;
      
      private var var_1283:CallForHelpData;
      
      public function HabboHelp(param1:IContext, param2:uint = 0, param3:IAssetLibrary = null)
      {
         var_1283 = new CallForHelpData();
         var_2039 = new UserRegistry();
         super(param1,param2,param3);
         _assetLibrary = param3;
         var_870 = new FaqIndex();
         queueInterface(new IIDHabboWindowManager(),onWindowManagerReady);
      }
      
      public function get toolbar() : IHabboToolbar
      {
         return var_194;
      }
      
      public function tellUI(param1:String, param2:* = null) : void
      {
         if(var_58 != null)
         {
            var_58.tellUI(param1,param2);
         }
      }
      
      private function toggleHelpUI() : void
      {
         if(var_58 == null)
         {
            if(!createHelpUI())
            {
               return;
            }
         }
         var_58.toggleUI();
      }
      
      public function removeTutorialUI() : void
      {
         if(var_131 != null)
         {
            var_131.dispose();
            var_131 = null;
         }
      }
      
      public function get ownUserName() : String
      {
         return var_1925;
      }
      
      public function get windowManager() : IHabboWindowManager
      {
         return _windowManager;
      }
      
      override public function dispose() : void
      {
         if(var_58 != null)
         {
            var_58.dispose();
            var_58 = null;
         }
         if(var_131 != null)
         {
            var_131.dispose();
            var_131 = null;
         }
         if(var_610)
         {
            var_610.dispose();
            var_610 = null;
         }
         if(var_870 != null)
         {
            var_870.dispose();
            var_870 = null;
         }
         var_1027 = null;
         if(var_194)
         {
            var_194.release(new IIDHabboToolbar());
            var_194 = null;
         }
         if(var_726)
         {
            var_726.release(new IIDHabboLocalizationManager());
            var_726 = null;
         }
         if(var_314)
         {
            var_314.release(new IIDHabboCommunicationManager());
            var_314 = null;
         }
         if(var_725)
         {
            var_725.release(new IIDHabboConfigurationManager());
            var_725 = null;
         }
         if(_windowManager)
         {
            _windowManager.release(new IIDHabboWindowManager());
            _windowManager = null;
         }
         super.dispose();
      }
      
      public function get localization() : IHabboLocalizationManager
      {
         return var_726;
      }
      
      private function onRoomSessionEvent(param1:RoomSessionEvent) : void
      {
         switch(param1.type)
         {
            case RoomSessionEvent.const_104:
               if(var_58 != null)
               {
                  var_58.setRoomSessionStatus(true);
               }
               if(var_131 != null)
               {
                  var_131.setRoomSessionStatus(true);
               }
               break;
            case RoomSessionEvent.const_107:
               if(var_58 != null)
               {
                  var_58.setRoomSessionStatus(false);
               }
               if(var_131 != null)
               {
                  var_131.setRoomSessionStatus(false);
               }
               userRegistry.unregisterRoom();
         }
      }
      
      public function enableCallForGuideBotUI() : void
      {
         if(var_58 != null)
         {
            var_58.updateCallForGuideBotUI(true);
         }
      }
      
      public function get userRegistry() : UserRegistry
      {
         return var_2039;
      }
      
      public function showCallForHelpResult(param1:String) : void
      {
         if(var_58 != null)
         {
            var_58.showCallForHelpResult(param1);
         }
      }
      
      public function initHotelMergeUI() : void
      {
         if(!var_610)
         {
            var_610 = new HotelMergeUI(this);
         }
         var_610.startNameChange();
      }
      
      private function createTutorialUI() : Boolean
      {
         if(var_131 == null && _assetLibrary != null && _windowManager != null)
         {
            var_131 = new TutorialUI(this);
         }
         return var_131 != null;
      }
      
      private function createHelpUI() : Boolean
      {
         if(var_58 == null && _assetLibrary != null && _windowManager != null)
         {
            var_58 = new HelpUI(this,_assetLibrary,_windowManager,var_726,var_194);
         }
         return var_58 != null;
      }
      
      public function get callForHelpData() : CallForHelpData
      {
         return var_1283;
      }
      
      public function reportUser(param1:int, param2:String) : void
      {
         var_1283.reportedUserId = param1;
         var_1283.reportedUserName = param2;
         var_58.showUI(HabboHelpViewEnum.const_323);
      }
      
      public function set ownUserName(param1:String) : void
      {
         var_1925 = param1;
      }
      
      private function setHabboToolbarIcon() : void
      {
         if(var_194 != null)
         {
            var_194.events.dispatchEvent(new HabboToolbarSetIconEvent(HabboToolbarSetIconEvent.const_120,HabboToolbarIconEnum.HELP));
         }
      }
      
      private function onWindowManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         _windowManager = IHabboWindowManager(param2);
         queueInterface(new IIDHabboCommunicationManager(),onCommunicationManagerReady);
      }
      
      private function onLocalizationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var_726 = IHabboLocalizationManager(param2);
         queueInterface(new IIDHabboConfigurationManager(),onConfigurationManagerReady);
      }
      
      public function updateTutorial(param1:Boolean, param2:Boolean, param3:Boolean) : void
      {
         if(param1 && param2 && param3)
         {
            removeTutorialUI();
            return;
         }
         if(var_131 == null)
         {
            if(!createTutorialUI())
            {
               return;
            }
         }
         var_131.update(param1,param2,param3);
      }
      
      private function onCommunicationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var_314 = IHabboCommunicationManager(param2);
         var_1027 = new IncomingMessages(this,var_314);
         queueInterface(new IIDHabboToolbar(),onToolbarReady);
      }
      
      public function showUI(param1:String = null) : void
      {
         if(var_58 != null)
         {
            var_58.showUI(param1);
         }
      }
      
      public function hideUI() : void
      {
         if(var_58 != null)
         {
            var_58.hideUI();
         }
      }
      
      public function sendMessage(param1:IMessageComposer) : void
      {
         if(var_314 != null && param1 != null)
         {
            var_314.getHabboMainConnection(null).send(param1);
         }
      }
      
      public function getFaq() : FaqIndex
      {
         return var_870;
      }
      
      public function disableCallForGuideBotUI() : void
      {
         if(var_58 != null)
         {
            var_58.updateCallForGuideBotUI(false);
         }
      }
      
      private function onToolbarReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var_194 = IHabboToolbar(param2);
         queueInterface(new IIDHabboLocalizationManager(),onLocalizationManagerReady);
      }
      
      private function onConfigurationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var_725 = IHabboConfigurationManager(param2);
         queueInterface(new IIDHabboRoomSessionManager(),onRoomSessionManagerReady);
      }
      
      public function get tutorialUI() : TutorialUI
      {
         return var_131;
      }
      
      private function onHabboToolbarEvent(param1:HabboToolbarEvent) : void
      {
         if(param1.type == HabboToolbarEvent.const_87)
         {
            setHabboToolbarIcon();
            return;
         }
         if(param1.type == HabboToolbarEvent.const_60)
         {
            if(param1.iconId == HabboToolbarIconEnum.HELP)
            {
               toggleHelpUI();
               return;
            }
         }
      }
      
      public function get hotelMergeUI() : HotelMergeUI
      {
         return var_610;
      }
      
      private function onRoomSessionManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var _loc3_:IRoomSessionManager = IRoomSessionManager(param2);
         _loc3_.events.addEventListener(RoomSessionEvent.const_104,onRoomSessionEvent);
         _loc3_.events.addEventListener(RoomSessionEvent.const_107,onRoomSessionEvent);
         var_194.events.addEventListener(HabboToolbarEvent.const_87,onHabboToolbarEvent);
         var_194.events.addEventListener(HabboToolbarEvent.const_60,onHabboToolbarEvent);
         createHelpUI();
         setHabboToolbarIcon();
      }
      
      public function showCallForHelpReply(param1:String) : void
      {
         if(var_58 != null)
         {
            var_58.showCallForHelpReply(param1);
         }
      }
      
      public function getConfigurationKey(param1:String, param2:String = null, param3:Dictionary = null) : String
      {
         if(var_725 == null)
         {
            return param1;
         }
         return var_725.getKey(param1,param2,param3);
      }
   }
}
