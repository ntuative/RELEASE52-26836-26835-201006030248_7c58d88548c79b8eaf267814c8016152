package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class LayerData
   {
      
      public static const const_453:int = 255;
      
      public static const INK_DARKEN:int = 3;
      
      public static const const_433:int = 0;
      
      public static const const_870:int = 2;
      
      public static const const_966:int = 1;
      
      public static const const_659:Boolean = false;
      
      public static const const_679:String = "";
      
      public static const const_498:int = 0;
      
      public static const const_402:int = 0;
      
      public static const const_423:int = 0;
       
      
      private var var_1958:int = 0;
      
      private var var_1697:String = "";
      
      private var var_1569:int = 0;
      
      private var var_1956:int = 0;
      
      private var var_1955:Number = 0;
      
      private var var_1746:int = 255;
      
      private var var_1957:Boolean = false;
      
      public function LayerData()
      {
         super();
      }
      
      public function get yOffset() : int
      {
         return var_1958;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            tag = param1.tag;
            ink = param1.ink;
            alpha = param1.alpha;
            ignoreMouse = param1.ignoreMouse;
            xOffset = param1.xOffset;
            yOffset = param1.yOffset;
            zOffset = param1.zOffset;
         }
      }
      
      public function set ink(param1:int) : void
      {
         var_1569 = param1;
      }
      
      public function get zOffset() : Number
      {
         return var_1955;
      }
      
      public function set xOffset(param1:int) : void
      {
         var_1956 = param1;
      }
      
      public function set yOffset(param1:int) : void
      {
         var_1958 = param1;
      }
      
      public function get tag() : String
      {
         return var_1697;
      }
      
      public function get alpha() : int
      {
         return var_1746;
      }
      
      public function get ink() : int
      {
         return var_1569;
      }
      
      public function set zOffset(param1:Number) : void
      {
         var_1955 = param1;
      }
      
      public function get xOffset() : int
      {
         return var_1956;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         var_1957 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return var_1957;
      }
      
      public function set tag(param1:String) : void
      {
         var_1697 = param1;
      }
      
      public function set alpha(param1:int) : void
      {
         var_1746 = param1;
      }
   }
}
