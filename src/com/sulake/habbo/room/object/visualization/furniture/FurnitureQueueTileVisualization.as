package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1143:int = 1;
      
      private static const const_1077:int = 3;
      
      private static const const_1141:int = 2;
      
      private static const const_1142:int = 15;
       
      
      private var var_924:int;
      
      private var var_238:Array;
      
      public function FurnitureQueueTileVisualization()
      {
         var_238 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1141)
         {
            var_238 = new Array();
            var_238.push(const_1143);
            var_924 = const_1142;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(var_924 > 0)
         {
            --var_924;
         }
         if(var_924 == 0)
         {
            if(false)
            {
               super.setAnimation(var_238.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
