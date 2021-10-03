package com.sulake.habbo.avatar.animation
{
   public class SpriteDataContainer implements ISpriteDataContainer
   {
       
      
      private var _id:String;
      
      private var var_1781:IAnimation;
      
      private var var_1783:Boolean;
      
      private var var_1569:int;
      
      private var var_1197:Array;
      
      private var var_1782:String;
      
      private var _dx:Array;
      
      private var var_1196:Array;
      
      public function SpriteDataContainer(param1:IAnimation, param2:XML)
      {
         var _loc3_:* = null;
         var _loc4_:int = 0;
         super();
         var_1781 = param1;
         _id = String(param2.@id);
         var_1569 = parseInt(param2.@ink);
         var_1782 = String(param2.@member);
         var_1783 = Boolean(parseInt(param2.@directions));
         _dx = [];
         var_1196 = [];
         var_1197 = [];
         for each(_loc3_ in param2.direction)
         {
            _loc4_ = parseInt(_loc3_.@id);
            _dx[_loc4_] = parseInt(_loc3_.@dx);
            var_1196[_loc4_] = parseInt(_loc3_.@dy);
            var_1197[_loc4_] = parseInt(_loc3_.@dz);
         }
      }
      
      public function get animation() : IAnimation
      {
         return var_1781;
      }
      
      public function get hasDirections() : Boolean
      {
         return var_1783;
      }
      
      public function get member() : String
      {
         return var_1782;
      }
      
      public function get id() : String
      {
         return _id;
      }
      
      public function getDirectionOffsetZ(param1:int) : int
      {
         if(param1 < var_1197.length)
         {
            return var_1197[param1];
         }
         return 0;
      }
      
      public function getDirectionOffsetX(param1:int) : int
      {
         if(param1 < _dx.length)
         {
            return _dx[param1];
         }
         return 0;
      }
      
      public function getDirectionOffsetY(param1:int) : int
      {
         if(param1 < var_1196.length)
         {
            return var_1196[param1];
         }
         return 0;
      }
      
      public function get ink() : int
      {
         return var_1569;
      }
   }
}
