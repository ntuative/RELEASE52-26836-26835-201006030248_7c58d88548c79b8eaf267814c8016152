package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1110:int = 31;
      
      private static const const_1077:int = 32;
      
      private static const const_526:int = 30;
      
      private static const const_801:int = 20;
      
      private static const const_525:int = 10;
       
      
      private var var_572:Boolean = false;
      
      private var var_238:Array;
      
      public function FurnitureValRandomizerVisualization()
      {
         var_238 = new Array();
         super();
         super.setAnimation(const_526);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
         {
            if(!var_572)
            {
               var_572 = true;
               var_238 = new Array();
               var_238.push(const_1110);
               var_238.push(const_1077);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_525)
         {
            if(var_572)
            {
               var_572 = false;
               var_238 = new Array();
               if(_direction == 2)
               {
                  var_238.push(const_801 + 5 - param1);
                  var_238.push(const_525 + 5 - param1);
               }
               else
               {
                  var_238.push(const_801 + param1);
                  var_238.push(const_525 + param1);
               }
               var_238.push(const_526);
               return;
            }
            super.setAnimation(const_526);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(11))
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
