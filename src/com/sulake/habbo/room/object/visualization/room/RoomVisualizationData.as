package com.sulake.habbo.room.object.visualization.room
{
   import com.sulake.habbo.room.object.visualization.room.mask.PlaneMaskManager;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.IPlaneRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.animated.LandscapeRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.FloorRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallAdRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallRasterizer;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.utils.IGraphicAssetCollection;
   
   public class RoomVisualizationData implements IRoomObjectVisualizationData
   {
       
      
      private var var_422:FloorRasterizer;
      
      private var var_890:Boolean = false;
      
      private var var_618:PlaneMaskManager;
      
      private var var_421:WallRasterizer;
      
      private var var_619:WallAdRasterizer;
      
      private var var_420:LandscapeRasterizer;
      
      public function RoomVisualizationData()
      {
         super();
         var_421 = new WallRasterizer();
         var_422 = new FloorRasterizer();
         var_619 = new WallAdRasterizer();
         var_420 = new LandscapeRasterizer();
         var_618 = new PlaneMaskManager();
      }
      
      public function get wallRasterizer() : IPlaneRasterizer
      {
         return var_421;
      }
      
      public function get wallAdRasterizr() : WallAdRasterizer
      {
         return var_619;
      }
      
      public function get floorRasterizer() : IPlaneRasterizer
      {
         return var_422;
      }
      
      public function get initialized() : Boolean
      {
         return var_890;
      }
      
      protected function reset() : void
      {
      }
      
      public function get maskManager() : PlaneMaskManager
      {
         return var_618;
      }
      
      public function dispose() : void
      {
         if(var_421 != null)
         {
            var_421.dispose();
            var_421 = null;
         }
         if(var_422 != null)
         {
            var_422.dispose();
            var_422 = null;
         }
         if(var_619 != null)
         {
            var_619.dispose();
            var_619 = null;
         }
         if(var_420 != null)
         {
            var_420.dispose();
            var_420 = null;
         }
         if(var_618 != null)
         {
            var_618.dispose();
            var_618 = null;
         }
      }
      
      public function initialize(param1:XML) : Boolean
      {
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         reset();
         if(param1 == null)
         {
            return false;
         }
         var _loc2_:XMLList = param1.wallData;
         if(_loc2_.length() > 0)
         {
            _loc7_ = _loc2_[0];
            var_421.initialize(_loc7_);
         }
         var _loc3_:XMLList = param1.floorData;
         if(_loc3_.length() > 0)
         {
            _loc8_ = _loc3_[0];
            var_422.initialize(_loc8_);
         }
         var _loc4_:XMLList = param1.wallAdData;
         if(_loc4_.length() > 0)
         {
            _loc9_ = _loc4_[0];
            var_619.initialize(_loc9_);
         }
         var _loc5_:XMLList = param1.landscapeData;
         if(_loc5_.length() > 0)
         {
            _loc10_ = _loc5_[0];
            var_420.initialize(_loc10_);
         }
         var _loc6_:XMLList = param1.maskData;
         if(_loc6_.length() > 0)
         {
            _loc11_ = _loc6_[0];
            var_618.initialize(_loc11_);
         }
         return true;
      }
      
      public function clearCache() : void
      {
         if(var_421 != null)
         {
            var_421.clearCache();
         }
         if(var_422 != null)
         {
            var_422.clearCache();
         }
         if(var_420 != null)
         {
            var_420.clearCache();
         }
      }
      
      public function get landscapeRasterizer() : IPlaneRasterizer
      {
         return var_420;
      }
      
      public function initializeAssetCollection(param1:IGraphicAssetCollection) : void
      {
         if(var_890)
         {
            return;
         }
         var_421.initializeAssetCollection(param1);
         var_422.initializeAssetCollection(param1);
         var_619.initializeAssetCollection(param1);
         var_420.initializeAssetCollection(param1);
         var_618.initializeAssetCollection(param1);
         var_890 = true;
      }
   }
}
