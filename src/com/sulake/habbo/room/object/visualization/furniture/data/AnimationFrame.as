package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class AnimationFrame
   {
      
      public static const const_751:int = -1;
      
      public static const const_1039:int = -1;
       
      
      private var _y:int = 0;
      
      private var var_2059:int = -1;
      
      private var var_82:int = 0;
      
      private var var_1295:int = 1;
      
      private var var_882:int = 1;
      
      private var var_2058:Boolean = false;
      
      private var var_2060:int = 0;
      
      private var _id:int = 0;
      
      public function AnimationFrame(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:int = -1, param7:int = 0)
      {
         super();
         _id = param1;
         var_82 = param2;
         _y = param3;
         var_2058 = param5;
         if(param4 < 0)
         {
            param4 = const_751;
         }
         var_882 = param4;
         var_1295 = param4;
         if(param6 >= 0)
         {
            var_2059 = param6;
            var_2060 = param7;
         }
      }
      
      public function get y() : int
      {
         return _y;
      }
      
      public function set remainingFrameRepeats(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(var_882 > 0 && param1 > var_882)
         {
            param1 = var_882;
         }
         var_1295 = param1;
      }
      
      public function get frameRepeats() : int
      {
         return var_882;
      }
      
      public function get activeSequenceOffset() : int
      {
         return var_2060;
      }
      
      public function get id() : int
      {
         if(_id >= 0)
         {
            return _id;
         }
         return -_id * Math.random();
      }
      
      public function get remainingFrameRepeats() : int
      {
         if(var_882 < 0)
         {
            return const_751;
         }
         return var_1295;
      }
      
      public function get activeSequence() : int
      {
         return var_2059;
      }
      
      public function get isLastFrame() : Boolean
      {
         return var_2058;
      }
      
      public function get x() : int
      {
         return var_82;
      }
   }
}
