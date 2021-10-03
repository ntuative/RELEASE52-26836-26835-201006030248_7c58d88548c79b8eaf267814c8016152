package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_368:Number = 0.5;
      
      private static const const_782:int = 3;
      
      private static const const_1083:Number = 1;
       
      
      private var var_1843:Boolean = false;
      
      private var var_1849:Boolean = false;
      
      private var var_1020:int = 0;
      
      private var var_260:Vector3d = null;
      
      private var var_1847:int = 0;
      
      private var var_1844:int = 0;
      
      private var var_1842:Boolean = false;
      
      private var var_1840:int = -2;
      
      private var var_1845:Boolean = false;
      
      private var var_1846:int = 0;
      
      private var var_1848:int = -1;
      
      private var var_396:Vector3d = null;
      
      private var var_1841:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get roomWd() : int
      {
         return var_1847;
      }
      
      public function get targetId() : int
      {
         return var_1848;
      }
      
      public function set roomHt(param1:int) : void
      {
         var_1846 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         var_1847 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         var_1843 = param1;
      }
      
      public function set targetId(param1:int) : void
      {
         var_1848 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         var_1849 = param1;
      }
      
      public function dispose() : void
      {
         var_396 = null;
         var_260 = null;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(var_396 == null)
         {
            var_396 = new Vector3d();
         }
         var_396.assign(param1);
         var_1020 = 0;
      }
      
      public function get targetCategory() : int
      {
         return var_1840;
      }
      
      public function get screenHt() : int
      {
         return var_1841;
      }
      
      public function set screenWd(param1:int) : void
      {
         var_1844 = param1;
      }
      
      public function get location() : IVector3d
      {
         return var_260;
      }
      
      public function set screenHt(param1:int) : void
      {
         var_1841 = param1;
      }
      
      public function get roomHt() : int
      {
         return var_1846;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return var_1843;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return var_1849;
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:* = null;
         if(var_396 != null && var_260 != null)
         {
            ++var_1020;
            _loc2_ = Vector3d.dif(var_396,var_260);
            if(_loc2_.length <= const_368)
            {
               var_260 = var_396;
               var_396 = null;
            }
            else
            {
               _loc2_.div(_loc2_.length);
               if(_loc2_.length < const_368 * (const_782 + 1))
               {
                  _loc2_.mul(const_368);
               }
               else if(var_1020 <= const_782)
               {
                  _loc2_.mul(const_368);
               }
               else
               {
                  _loc2_.mul(const_1083);
               }
               var_260 = Vector3d.sum(var_260,_loc2_);
            }
         }
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         var_1842 = param1;
      }
      
      public function get screenWd() : int
      {
         return var_1844;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         var_1845 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         var_1840 = param1;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(var_260 != null)
         {
            return;
         }
         var_260 = new Vector3d();
         var_260.assign(param1);
      }
      
      public function get centeredLocX() : Boolean
      {
         return var_1842;
      }
      
      public function get centeredLocY() : Boolean
      {
         return var_1845;
      }
   }
}
