package com.sulake.room.utils
{
   import com.sulake.core.utils.Map;
   import flash.geom.Point;
   
   public class RoomGeometry implements IRoomGeometry
   {
      
      public static const const_632:Number = 64;
      
      public static const const_882:Number = 32;
       
      
      private var var_75:Vector3d;
      
      private var var_434:Number = 1.0;
      
      private var var_435:Number = 1.0;
      
      private var _y:Vector3d;
      
      private var var_1598:Number = 1.0;
      
      private var var_78:int = 0;
      
      private var var_433:Map = null;
      
      private var var_1088:Vector3d;
      
      private var var_436:Number = 1.0;
      
      private var _width:Number;
      
      private var var_151:Number = 1.0;
      
      private var var_236:Vector3d;
      
      private var var_1600:Number = 1.0;
      
      private var var_2422:Number = 500.0;
      
      private var var_1599:Number = 1.0;
      
      private var var_82:Vector3d;
      
      private var var_83:Vector3d;
      
      private var var_2421:Number = -500.0;
      
      public function RoomGeometry(param1:Number, param2:IVector3d, param3:IVector3d, param4:IVector3d = null)
      {
         super();
         this.scale = param1;
         var_82 = new Vector3d();
         _y = new Vector3d();
         var_83 = new Vector3d();
         var_1088 = new Vector3d();
         var_1598 = 1;
         var_1599 = 1;
         x_scale = 1;
         y_scale = 1;
         var_1600 = Math.sqrt(0.5) / Math.sqrt(0.75);
         z_scale = 1;
         location = new Vector3d(param3.x,param3.y,param3.z);
         direction = new Vector3d(param2.x,param2.y,param2.z);
         if(param4 != null)
         {
            setDepthVector(param4);
         }
         else
         {
            setDepthVector(param2);
         }
         var_433 = new Map();
      }
      
      public static function getIntersectionVector(param1:IVector3d, param2:IVector3d, param3:IVector3d, param4:IVector3d) : IVector3d
      {
         var _loc5_:Number = Vector3d.dotProduct(param2,param4);
         if(Math.abs(_loc5_) < 0.00001)
         {
            return null;
         }
         var _loc6_:Vector3d = Vector3d.dif(param1,param3);
         var _loc7_:Number = -Vector3d.dotProduct(param4,_loc6_) / _loc5_;
         return Vector3d.sum(param1,Vector3d.product(param2,_loc7_));
      }
      
      public function set direction(param1:IVector3d) : void
      {
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:* = null;
         var _loc24_:* = null;
         var _loc25_:* = null;
         if(param1 == null)
         {
            return;
         }
         if(var_236 == null)
         {
            var_236 = new Vector3d();
         }
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var_236.assign(param1);
         if(var_236.x != _loc2_ || var_236.y != _loc3_ || var_236.z != _loc4_)
         {
            ++var_78;
         }
         var _loc5_:Vector3d = new Vector3d(0,1,0);
         var _loc6_:Vector3d = new Vector3d(0,0,1);
         var _loc7_:Vector3d = new Vector3d(1,0,0);
         var _loc8_:Number = param1.x / 180 * 0;
         var _loc9_:Number = param1.y / 180 * 0;
         var _loc10_:Number = param1.z / 180 * 0;
         var _loc11_:Number = Math.cos(_loc8_);
         var _loc12_:Number = Math.sin(_loc8_);
         var _loc13_:Vector3d = Vector3d.sum(Vector3d.product(_loc5_,_loc11_),Vector3d.product(_loc7_,-_loc12_));
         var _loc14_:Vector3d = new Vector3d(_loc6_.x,_loc6_.y,_loc6_.z);
         var _loc15_:Vector3d = Vector3d.sum(Vector3d.product(_loc5_,_loc12_),Vector3d.product(_loc7_,_loc11_));
         var _loc16_:Number = Math.cos(_loc9_);
         var _loc17_:Number = Math.sin(_loc9_);
         var _loc18_:Vector3d = new Vector3d(_loc13_.x,_loc13_.y,_loc13_.z);
         var _loc19_:Vector3d = Vector3d.sum(Vector3d.product(_loc14_,_loc16_),Vector3d.product(_loc15_,_loc17_));
         var _loc20_:Vector3d = Vector3d.sum(Vector3d.product(_loc14_,-_loc17_),Vector3d.product(_loc15_,_loc16_));
         if(_loc10_ != 0)
         {
            _loc21_ = Math.cos(_loc10_);
            _loc22_ = Math.sin(_loc10_);
            _loc23_ = Vector3d.sum(Vector3d.product(_loc18_,_loc21_),Vector3d.product(_loc19_,_loc22_));
            _loc24_ = Vector3d.sum(Vector3d.product(_loc18_,-_loc22_),Vector3d.product(_loc19_,_loc21_));
            _loc25_ = new Vector3d(_loc20_.x,_loc20_.y,_loc20_.z);
            var_82.assign(_loc23_);
            _y.assign(_loc24_);
            var_83.assign(_loc25_);
         }
         else
         {
            var_82.assign(_loc18_);
            _y.assign(_loc19_);
            var_83.assign(_loc20_);
         }
      }
      
      public function set z_scale(param1:Number) : void
      {
         if(var_435 != param1 * var_1600)
         {
            var_435 = param1 * var_1600;
            ++var_78;
         }
      }
      
      public function set x_scale(param1:Number) : void
      {
         if(var_434 != param1 * var_1598)
         {
            var_434 = param1 * var_1598;
            ++var_78;
         }
      }
      
      public function set scale(param1:Number) : void
      {
         if(param1 <= 1)
         {
            param1 = 1;
         }
         param1 *= Math.sqrt(0.5);
         if(param1 != var_151)
         {
            var_151 = param1;
            ++var_78;
         }
      }
      
      public function set y_scale(param1:Number) : void
      {
         if(var_436 != param1 * var_1599)
         {
            var_436 = param1 * var_1599;
            ++var_78;
         }
      }
      
      public function dispose() : void
      {
         var_82 = null;
         _y = null;
         var_83 = null;
         var_75 = null;
         var_236 = null;
         if(var_433 != null)
         {
            var_433.dispose();
            var_433 = null;
         }
      }
      
      public function setDisplacement(param1:IVector3d, param2:IVector3d) : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         if(param1 == null || param2 == null)
         {
            return;
         }
         if(var_433 != null)
         {
            _loc3_ = int(Math.round(param1.x)) + "_" + int(Math.round(param1.y)) + "_" + int(Math.round(param1.z));
            var_433.remove(_loc3_);
            _loc4_ = new Vector3d();
            _loc4_.assign(param2);
            var_433.add(_loc3_,_loc4_);
            ++var_78;
         }
      }
      
      public function get direction() : IVector3d
      {
         return new Vector3d(var_236.x,var_236.y,var_236.z);
      }
      
      public function setDepthVector(param1:IVector3d) : void
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:* = null;
         var _loc21_:* = null;
         var _loc22_:* = null;
         var _loc2_:Vector3d = new Vector3d(0,1,0);
         var _loc3_:Vector3d = new Vector3d(0,0,1);
         var _loc4_:Vector3d = new Vector3d(1,0,0);
         var _loc5_:Number = param1.x / 180 * 0;
         var _loc6_:Number = param1.y / 180 * 0;
         var _loc7_:Number = param1.z / 180 * 0;
         var _loc8_:Number = Math.cos(_loc5_);
         var _loc9_:Number = Math.sin(_loc5_);
         var _loc10_:Vector3d = Vector3d.sum(Vector3d.product(_loc2_,_loc8_),Vector3d.product(_loc4_,-_loc9_));
         var _loc11_:Vector3d = new Vector3d(_loc3_.x,_loc3_.y,_loc3_.z);
         var _loc12_:Vector3d = Vector3d.sum(Vector3d.product(_loc2_,_loc9_),Vector3d.product(_loc4_,_loc8_));
         var _loc13_:Number = Math.cos(_loc6_);
         var _loc14_:Number = Math.sin(_loc6_);
         var _loc15_:Vector3d = new Vector3d(_loc10_.x,_loc10_.y,_loc10_.z);
         var _loc16_:Vector3d = Vector3d.sum(Vector3d.product(_loc11_,_loc13_),Vector3d.product(_loc12_,_loc14_));
         var _loc17_:Vector3d = Vector3d.sum(Vector3d.product(_loc11_,-_loc14_),Vector3d.product(_loc12_,_loc13_));
         if(_loc7_ != 0)
         {
            _loc18_ = Math.cos(_loc7_);
            _loc19_ = Math.sin(_loc7_);
            _loc20_ = Vector3d.sum(Vector3d.product(_loc15_,_loc18_),Vector3d.product(_loc16_,_loc19_));
            _loc21_ = Vector3d.sum(Vector3d.product(_loc15_,-_loc19_),Vector3d.product(_loc16_,_loc18_));
            _loc22_ = new Vector3d(_loc17_.x,_loc17_.y,_loc17_.z);
            var_1088.assign(_loc22_);
         }
         else
         {
            var_1088.assign(_loc17_);
         }
         ++var_78;
      }
      
      public function getScreenPosition(param1:IVector3d) : IVector3d
      {
         var _loc2_:Vector3d = Vector3d.dif(param1,var_75);
         _loc2_.x *= var_434;
         _loc2_.y *= var_436;
         _loc2_.z *= var_435;
         var _loc3_:Number = Vector3d.scalarProjection(_loc2_,var_1088);
         if(_loc3_ < var_2421 || _loc3_ > var_2422)
         {
            return null;
         }
         var _loc4_:Number = Vector3d.scalarProjection(_loc2_,var_82);
         var _loc5_:Number = -Vector3d.scalarProjection(_loc2_,_y);
         _loc4_ *= var_151;
         _loc5_ *= var_151;
         var _loc6_:IVector3d = getDisplacenent(param1);
         if(_loc6_ != null)
         {
            _loc2_ = Vector3d.dif(param1,var_75);
            _loc2_.add(_loc6_);
            _loc2_.x *= var_434;
            _loc2_.y *= var_436;
            _loc2_.z *= var_435;
            _loc3_ = Vector3d.scalarProjection(_loc2_,var_1088);
         }
         return new Vector3d(_loc4_,_loc5_,_loc3_);
      }
      
      public function get location() : IVector3d
      {
         return new Vector3d(0 * var_434,0 * var_436,0 * var_435);
      }
      
      public function getCoordinatePosition(param1:IVector3d) : IVector3d
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc2_:Number = Vector3d.scalarProjection(param1,var_82);
         var _loc3_:Number = Vector3d.scalarProjection(param1,_y);
         var _loc4_:Number = Vector3d.scalarProjection(param1,var_83);
         return new Vector3d(_loc2_,_loc3_,_loc4_);
      }
      
      public function get directionAxis() : IVector3d
      {
         return new Vector3d(var_83.x,var_83.y,var_83.z);
      }
      
      public function isZoomedIn() : Boolean
      {
         return scale == const_632;
      }
      
      public function get scale() : Number
      {
         return var_151 / Math.sqrt(0.5);
      }
      
      public function get updateId() : int
      {
         return var_78;
      }
      
      public function performZoom() : void
      {
         if(isZoomedIn())
         {
            scale = const_882;
         }
         else
         {
            scale = const_632;
         }
      }
      
      public function getScreenPoint(param1:IVector3d) : Point
      {
         var _loc2_:IVector3d = getScreenPosition(param1);
         if(_loc2_ == null)
         {
            return null;
         }
         return new Point(_loc2_.x,_loc2_.y);
      }
      
      public function performZoomOut() : void
      {
         scale = const_882;
      }
      
      public function adjustLocation(param1:IVector3d, param2:Number) : void
      {
         if(param1 == null || var_83 == null)
         {
            return;
         }
         var _loc3_:Vector3d = Vector3d.product(var_83,param2);
         var _loc4_:Vector3d = new Vector3d(param1.x + _loc3_.x,param1.y + _loc3_.y,param1.z + _loc3_.z);
         location = _loc4_;
      }
      
      public function set location(param1:IVector3d) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(var_75 == null)
         {
            var_75 = new Vector3d();
         }
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var_75.assign(param1);
         var_75.x = 0 / var_434;
         var_75.y = 0 / var_436;
         var_75.z = 0 / var_435;
         if(var_75.x != _loc2_ || var_75.y != _loc3_ || var_75.z != _loc4_)
         {
            ++var_78;
         }
      }
      
      private function getDisplacenent(param1:IVector3d) : IVector3d
      {
         var _loc2_:* = null;
         if(var_433 != null)
         {
            _loc2_ = int(Math.round(param1.x)) + "_" + int(Math.round(param1.y)) + "_" + int(Math.round(param1.z));
            return var_433.getValue(_loc2_);
         }
         return null;
      }
      
      public function getPlanePosition(param1:Point, param2:IVector3d, param3:IVector3d, param4:IVector3d) : Point
      {
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc5_:Number = param1.x / var_151;
         var _loc6_:Number = -param1.y / var_151;
         var _loc7_:IVector3d = Vector3d.sum(Vector3d.product(var_82,_loc5_),Vector3d.product(_y,_loc6_));
         var _loc8_:Vector3d = new Vector3d(0 * var_434,0 * var_436,0 * var_435);
         var _loc9_:IVector3d = Vector3d.sum(_loc8_,_loc7_);
         var _loc10_:IVector3d = var_83;
         var _loc11_:Vector3d = new Vector3d(param2.x * var_434,param2.y * var_436,param2.z * var_435);
         var _loc12_:Vector3d = new Vector3d(param3.x * var_434,param3.y * var_436,param3.z * var_435);
         var _loc13_:Vector3d = new Vector3d(param4.x * var_434,param4.y * var_436,param4.z * var_435);
         var _loc14_:IVector3d = Vector3d.crossProduct(_loc12_,_loc13_);
         var _loc15_:Vector3d = RoomGeometry.getIntersectionVector(_loc9_,_loc10_,_loc11_,_loc14_) as Vector3d;
         if(_loc15_ != null)
         {
            _loc15_.sub(_loc11_);
            _loc16_ = Vector3d.scalarProjection(_loc15_,param3) / _loc12_.length * param3.length;
            _loc17_ = Vector3d.scalarProjection(_loc15_,param4) / _loc13_.length * param4.length;
            return new Point(_loc16_,_loc17_);
         }
         return null;
      }
   }
}
