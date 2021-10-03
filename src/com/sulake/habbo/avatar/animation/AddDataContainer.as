package com.sulake.habbo.avatar.animation
{
   public class AddDataContainer
   {
       
      
      private var var_1495:String;
      
      private var var_1569:String;
      
      private var var_1036:String;
      
      private var var_431:Number = 1;
      
      private var _id:String;
      
      public function AddDataContainer(param1:XML)
      {
         super();
         _id = String(param1.@id);
         var_1495 = String(param1.@align);
         var_1036 = String(param1.@base);
         var_1569 = String(param1.@ink);
         var _loc2_:String = String(param1.@blend);
         if(_loc2_.length > 0)
         {
            var_431 = Number(_loc2_);
            if(var_431 > 1)
            {
               var_431 /= 100;
            }
         }
      }
      
      public function get align() : String
      {
         return var_1495;
      }
      
      public function get ink() : String
      {
         return var_1569;
      }
      
      public function get base() : String
      {
         return var_1036;
      }
      
      public function get isBlended() : Boolean
      {
         return var_431 != 1;
      }
      
      public function get blend() : Number
      {
         return var_431;
      }
      
      public function get id() : String
      {
         return _id;
      }
   }
}
