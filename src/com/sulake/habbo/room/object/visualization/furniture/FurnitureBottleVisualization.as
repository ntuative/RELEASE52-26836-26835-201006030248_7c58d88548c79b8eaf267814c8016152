package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureBottleVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1077:int = -1;
      
      private static const const_801:int = 20;
      
      private static const const_525:int = 9;
       
      
      private var var_572:Boolean = false;
      
      private var var_238:Array;
      
      public function FurnitureBottleVisualization()
      {
         var_238 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            if(!var_572)
            {
               var_572 = true;
               var_238 = new Array();
               var_238.push(const_1077);
               return;
            }
         }
         if(param1 >= 0 && param1 <= 7)
         {
            if(var_572)
            {
               var_572 = false;
               var_238 = new Array();
               var_238.push(const_801);
               var_238.push(const_525 + param1);
               var_238.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(0))
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
