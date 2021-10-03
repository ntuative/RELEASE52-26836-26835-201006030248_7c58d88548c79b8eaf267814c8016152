package com.sulake.habbo.avatar.wardrobe
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.avatar.HabboAvatarEditor;
   import com.sulake.habbo.avatar.IAvatarImage;
   import com.sulake.habbo.avatar.IOutfit;
   import com.sulake.habbo.avatar.enum.AvatarScaleType;
   import com.sulake.habbo.avatar.enum.AvatarSetType;
   import com.sulake.habbo.avatar.figuredata.FigureData;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   
   public class WardrobeSlot implements IOutfit
   {
       
      
      private var var_454:String;
      
      private var _view:IWindowContainer;
      
      private var var_322:IBitmapWrapperWindow;
      
      private var var_1642:int;
      
      private var var_648:String;
      
      private var var_1389:Boolean;
      
      private var var_29:HabboAvatarEditor;
      
      public function WardrobeSlot(param1:HabboAvatarEditor, param2:int, param3:Boolean, param4:String = null, param5:String = null)
      {
         super();
         var_29 = param1;
         var_1642 = param2;
         createView();
         update(param4,param5,param3);
      }
      
      private function createView() : void
      {
         var _loc1_:XmlAsset = var_29.assets.getAssetByName("wardrobe_slot") as XmlAsset;
         if(!_loc1_)
         {
            return;
         }
         _view = var_29.windowManager.buildFromXML(_loc1_.content as XML) as IWindowContainer;
         _view.procedure = eventHandler;
         _view.visible = false;
         var_322 = _view.findChildByName("image") as IBitmapWrapperWindow;
      }
      
      public function update(param1:String, param2:String, param3:Boolean) : void
      {
         switch(param2)
         {
            case FigureData.const_74:
            case "m":
            case "M":
               param2 = "null";
               break;
            case FigureData.const_76:
            case "f":
            case "F":
               param2 = "null";
         }
         var_454 = param1;
         var_648 = param2;
         var_1389 = param3;
         updateView();
      }
      
      public function updateView() : void
      {
         var _loc1_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc2_:Boolean = true;
         if(var_454 && var_1389)
         {
            _loc5_ = var_29.avatarRenderManager.createAvatarImage(figure,AvatarScaleType.SMALL,var_648);
            if(_loc5_)
            {
               _loc5_.setDirection(AvatarSetType.const_38,parseInt(FigureData.const_767));
               _loc1_ = _loc5_.getCroppedImage(AvatarSetType.const_38);
               _loc5_.dispose();
            }
         }
         else
         {
            _loc6_ = var_29.assets.getAssetByName("wardrobe_empty_slot") as BitmapDataAsset;
            if(_loc6_)
            {
               _loc1_ = _loc6_.content as BitmapData;
               _loc2_ = false;
            }
         }
         if(!_loc1_)
         {
            return;
         }
         if(var_322)
         {
            if(false)
            {
               var_322.bitmap.dispose();
            }
            var_322.bitmap = new BitmapData(var_322.width,var_322.height,true,0);
            _loc7_ = (0 - _loc1_.width) / 2;
            _loc8_ = (0 - _loc1_.height) / 2;
            var_322.bitmap.draw(_loc1_,new Matrix(1,0,0,1,_loc7_,_loc8_));
         }
         if(_loc2_)
         {
            _loc1_.dispose();
         }
         var _loc3_:IContainerButtonWindow = _view.findChildByName("set_button") as IContainerButtonWindow;
         if(_loc3_)
         {
            _loc3_.visible = var_1389;
         }
         var _loc4_:IContainerButtonWindow = _view.findChildByName("get_button") as IContainerButtonWindow;
         if(_loc4_)
         {
            _loc4_.visible = var_1389 && var_454 != null;
         }
      }
      
      public function get gender() : String
      {
         return var_648;
      }
      
      public function get id() : int
      {
         return var_1642;
      }
      
      public function dispose() : void
      {
         var_29 = null;
         var_454 = null;
         var_648 = null;
         var_322 = null;
         if(_view)
         {
            _view.dispose();
            _view = null;
         }
      }
      
      public function get figure() : String
      {
         return var_454;
      }
      
      public function get view() : IWindowContainer
      {
         return _view;
      }
      
      private function eventHandler(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         switch(param2.name)
         {
            case "set_button":
               var_454 = var_29.figureData.getFigureString();
               var_648 = var_29.gender;
               var_29.handler.saveWardrobeOutfit(var_1642,this);
               updateView();
               break;
            case "get_button":
               if(var_454)
               {
                  var_29.loadAvatarInEditor(var_454,var_648,var_29.clubMemberLevel);
               }
         }
      }
   }
}
