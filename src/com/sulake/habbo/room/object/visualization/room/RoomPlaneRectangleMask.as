package com.sulake.habbo.room.object.visualization.room
{
   public class RoomPlaneRectangleMask
   {
       
      
      private var var_1902:Number = 0.0;
      
      private var var_1903:Number = 0.0;
      
      private var var_1904:Number = 0.0;
      
      private var var_1901:Number = 0.0;
      
      public function RoomPlaneRectangleMask(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         var_1903 = param1;
         var_1904 = param2;
         var_1902 = param3;
         var_1901 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return var_1903;
      }
      
      public function get leftSideLength() : Number
      {
         return var_1902;
      }
      
      public function get rightSideLoc() : Number
      {
         return var_1904;
      }
      
      public function get rightSideLength() : Number
      {
         return var_1901;
      }
   }
}
