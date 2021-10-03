package com.sulake.habbo.room.object
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomPlaneData
   {
      
      public static const const_1372:int = 4;
      
      public static const const_157:int = 2;
      
      public static const const_294:int = 3;
      
      public static const const_182:int = 1;
      
      public static const const_945:int = 0;
       
      
      private var var_75:Vector3d = null;
      
      private var var_513:Vector3d = null;
      
      private var var_164:Array;
      
      private var var_270:Vector3d = null;
      
      private var _type:int = 0;
      
      private var var_269:Vector3d = null;
      
      private var var_1954:Vector3d = null;
      
      private var var_1257:Array;
      
      public function RoomPlaneData(param1:int, param2:IVector3d, param3:IVector3d, param4:IVector3d, param5:Array)
      {
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:int = 0;
         var _loc12_:* = null;
         var _loc13_:* = null;
         var_1257 = [];
         var_164 = [];
         super();
         var_75 = new Vector3d();
         var_75.assign(param2);
         var_269 = new Vector3d();
         var_269.assign(param3);
         var_270 = new Vector3d();
         var_270.assign(param4);
         _type = param1;
         if(param3 != null && param4 != null)
         {
            var_513 = Vector3d.crossProduct(param3,param4);
            _loc6_ = 0;
            _loc7_ = 0;
            _loc8_ = 0;
            _loc9_ = 0;
            _loc10_ = 0;
            if(true || true)
            {
               _loc9_ = 0;
               _loc10_ = 0;
               _loc6_ = Number(360 + Math.atan2(_loc10_,_loc9_) / 0 * 180);
               if(_loc6_ >= 360)
               {
                  _loc6_ -= 360;
               }
               _loc9_ = Number(Math.sqrt(0 * 0 + 0 * 0));
               _loc10_ = 0;
               _loc7_ = Number(360 + Math.atan2(_loc10_,_loc9_) / 0 * 180);
               if(_loc7_ >= 360)
               {
                  _loc7_ -= 360;
               }
            }
            else if(false)
            {
               _loc7_ = 90;
            }
            else
            {
               _loc7_ = 270;
            }
            var_1954 = new Vector3d(_loc6_,_loc7_,_loc8_);
         }
         if(param5 != null && param5.length > 0)
         {
            _loc11_ = 0;
            while(_loc11_ < param5.length)
            {
               _loc12_ = param5[_loc11_];
               if(_loc12_ != null && _loc12_.length > 0)
               {
                  _loc13_ = new Vector3d();
                  _loc13_.assign(_loc12_);
                  _loc13_.mul(1 / _loc13_.length);
                  var_1257.push(_loc13_);
               }
               _loc11_++;
            }
         }
      }
      
      public function get loc() : IVector3d
      {
         return var_75;
      }
      
      public function get maskCount() : int
      {
         return var_164.length;
      }
      
      public function getSecondaryNormal(param1:int) : IVector3d
      {
         if(param1 < 0 || param1 >= secondaryNormalCount)
         {
            return null;
         }
         var _loc2_:Vector3d = new Vector3d();
         _loc2_.assign(var_1257[param1] as IVector3d);
         return _loc2_;
      }
      
      public function getMaskLeftSideLength(param1:int) : Number
      {
         var _loc2_:RoomPlaneMaskData = getMask(param1);
         if(_loc2_ != null)
         {
            return _loc2_.leftSideLength;
         }
         return -1;
      }
      
      public function get rightSide() : IVector3d
      {
         return var_270;
      }
      
      public function getMaskRightSideLength(param1:int) : Number
      {
         var _loc2_:RoomPlaneMaskData = getMask(param1);
         if(_loc2_ != null)
         {
            return _loc2_.rightSideLength;
         }
         return -1;
      }
      
      public function get normalDirection() : IVector3d
      {
         return var_1954;
      }
      
      public function get secondaryNormalCount() : int
      {
         return var_1257.length;
      }
      
      private function getMask(param1:int) : RoomPlaneMaskData
      {
         if(param1 < 0 || param1 >= maskCount)
         {
            return null;
         }
         return var_164[param1];
      }
      
      public function get normal() : IVector3d
      {
         return var_513;
      }
      
      public function addMask(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:RoomPlaneMaskData = new RoomPlaneMaskData(param1,param2,param3,param4);
         var_164.push(_loc5_);
      }
      
      public function getMaskLeftSideLoc(param1:int) : Number
      {
         var _loc2_:RoomPlaneMaskData = getMask(param1);
         if(_loc2_ != null)
         {
            return _loc2_.leftSideLoc;
         }
         return -1;
      }
      
      public function getMaskRightSideLoc(param1:int) : Number
      {
         var _loc2_:RoomPlaneMaskData = getMask(param1);
         if(_loc2_ != null)
         {
            return _loc2_.rightSideLoc;
         }
         return -1;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get leftSide() : IVector3d
      {
         return var_269;
      }
   }
}
