package com.sulake.core.window.graphics
{
   import com.sulake.core.assets.IAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.enum.WindowState;
   import com.sulake.core.window.graphics.renderer.BitmapDataRenderer;
   import com.sulake.core.window.graphics.renderer.BitmapSkinRenderer;
   import com.sulake.core.window.graphics.renderer.FillSkinRenderer;
   import com.sulake.core.window.graphics.renderer.ISkinRenderer;
   import com.sulake.core.window.graphics.renderer.NullSkinRenderer;
   import com.sulake.core.window.graphics.renderer.ShapeSkinRenderer;
   import com.sulake.core.window.graphics.renderer.SkinRenderer;
   import com.sulake.core.window.graphics.renderer.TextSkinRenderer;
   import com.sulake.core.window.utils.DefaultAttStruct;
   import com.sulake.core.window.utils.StateCodeTable;
   import com.sulake.core.window.utils.TypeCodeTable;
   import flash.utils.Dictionary;
   
   public class SkinContainer implements ISkinContainer
   {
      
      protected static var var_387:Array;
      
      private static const const_807:uint = 8;
       
      
      private var var_2146:Dictionary;
      
      private var var_1608:Dictionary;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var var_748:Dictionary;
      
      private var var_2147:Dictionary;
      
      private var var_528:Dictionary;
      
      private var var_1346:Dictionary;
      
      private var var_749:Dictionary;
      
      public function SkinContainer(param1:XML, param2:IAssetLibrary)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = 0;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc13_:* = null;
         var _loc14_:* = null;
         var _loc15_:* = null;
         var _loc16_:* = null;
         var _loc17_:* = null;
         var _loc18_:* = null;
         var _loc19_:* = null;
         var _loc20_:* = null;
         var _loc21_:int = 0;
         super();
         _assetLibrary = param2;
         var_748 = new Dictionary();
         var_749 = new Dictionary();
         var_1608 = new Dictionary();
         var_2147 = new Dictionary();
         TypeCodeTable.fillTables(var_1608,var_2147);
         var_1346 = new Dictionary();
         var_2146 = new Dictionary();
         StateCodeTable.fillTables(var_1346,var_2146);
         var_528 = new Dictionary();
         var_528["skin"] = BitmapSkinRenderer;
         var_528["bitmap"] = BitmapDataRenderer;
         var_528["fill"] = FillSkinRenderer;
         var_528["text"] = TextSkinRenderer;
         var_528["shape"] = ShapeSkinRenderer;
         var_528["unknown"] = SkinRenderer;
         var_528["null"] = NullSkinRenderer;
         if(var_387 == null)
         {
            var_387 = new Array();
            var_387.push(WindowState.const_69);
            var_387.push(WindowState.const_72);
            var_387.push(WindowState.const_97);
            var_387.push(WindowState.WINDOW_STATE_SELECTED);
            var_387.push(WindowState.const_86);
            var_387.push(WindowState.const_81);
            var_387.push(WindowState.const_103);
            var_387.push(WindowState.const_89);
         }
         var _loc3_:Array = new Array();
         for(_loc4_ in var_1346)
         {
            _loc3_.push(var_1346[_loc4_]);
         }
         if(param1 != null)
         {
            _loc5_ = param1.child("component");
            _loc6_ = uint(_loc5_.length());
            if(_loc6_ > 0)
            {
               _loc21_ = 0;
               while(_loc21_ < _loc6_)
               {
                  _loc7_ = _loc5_[_loc21_];
                  _loc9_ = _loc7_.attribute("type");
                  _loc10_ = _loc7_.attribute("style");
                  _loc11_ = uint(_loc7_.attribute("blend") as uint);
                  _loc12_ = uint(_loc7_.attribute("color") as uint);
                  _loc13_ = _loc7_.attribute("skin");
                  _loc16_ = _loc7_.attribute("layout");
                  _loc18_ = _loc7_.attribute("renderer");
                  _loc8_ = _loc7_.child("states");
                  _loc19_ = var_528[_loc18_];
                  _loc17_ = new _loc19_(_loc3_);
                  _loc14_ = _assetLibrary.getAssetByName(_loc13_);
                  _loc15_ = !!_loc14_ ? _loc14_.content as XML : null;
                  if(_loc15_ != null)
                  {
                     BitmapSkinParser.parseSkinDescription(_loc15_,_loc8_,_loc17_,_loc16_,_assetLibrary);
                  }
                  _loc20_ = new DefaultAttStruct();
                  _loc20_.treshold = !!_loc7_.@treshold[0] ? uint(uint(_loc7_.@treshold[0])) : uint(10);
                  _loc20_.background = !!_loc7_.@background[0] ? _loc7_.@background[0] == "true" : false;
                  _loc20_.blend = !!_loc7_.@blend[0] ? Number(Number(_loc7_.@blend[0])) : Number(1);
                  _loc20_.color = !!_loc7_.@color[0] ? uint(uint(_loc7_.@color[0])) : uint(16777215);
                  addSkinRenderer(var_1608[_loc9_],uint(_loc10_),_loc17_,_loc20_);
                  _loc21_++;
               }
            }
         }
      }
      
      public function get assets() : IAssetLibrary
      {
         return _assetLibrary;
      }
      
      public function getDefaultAttributesByTypeAndStyle(param1:uint, param2:uint) : DefaultAttStruct
      {
         var _loc3_:Array = var_749[param1];
         return _loc3_ != null ? _loc3_[param2] : null;
      }
      
      public function dispose() : void
      {
         var_748 = null;
         var_749 = null;
         _assetLibrary = null;
      }
      
      public function getSkinRendererByTypeAndStyle(param1:uint, param2:uint) : ISkinRenderer
      {
         var _loc3_:Array = var_748[param1];
         return _loc3_ != null ? _loc3_[param2] : null;
      }
      
      public function addSkinRenderer(param1:uint, param2:uint, param3:ISkinRenderer, param4:DefaultAttStruct) : void
      {
         if(true)
         {
            var_748[param1] = new Array(SkinContainer.const_807);
         }
         var_748[param1][param2] = param3;
         if(true)
         {
            var_749[param1] = new Array(SkinContainer.const_807);
         }
         var_749[param1][param2] = param4;
      }
      
      public function getTheActualState(param1:uint, param2:uint, param3:uint) : uint
      {
         var _loc5_:int = 0;
         var _loc4_:ISkinRenderer = getSkinRendererByTypeAndStyle(param1,param2);
         if(_loc4_ != null)
         {
            for each(_loc5_ in var_387)
            {
               if((param3 & _loc5_) == _loc5_)
               {
                  if(_loc4_.isStateDrawable(_loc5_))
                  {
                     return _loc5_;
                  }
               }
            }
         }
         return 0;
      }
   }
}
