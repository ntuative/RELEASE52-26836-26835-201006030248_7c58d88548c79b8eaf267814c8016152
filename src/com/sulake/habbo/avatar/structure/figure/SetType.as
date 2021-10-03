package com.sulake.habbo.avatar.structure.figure
{
   import com.sulake.core.utils.Map;
   
   public class SetType implements ISetType
   {
       
      
      private var var_321:Map;
      
      private var var_2255:Boolean;
      
      private var var_2256:int;
      
      private var _type:String;
      
      public function SetType(param1:XML)
      {
         super();
         _type = String(param1.@type);
         var_2256 = parseInt(param1.@paletteid);
         var_2255 = Boolean(parseInt(param1.@mandatory));
         var_321 = new Map();
         append(param1);
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function cleanUp(param1:XML) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         for each(_loc2_ in param1["set"])
         {
            _loc3_ = String(_loc2_.@id);
            _loc4_ = var_321.getValue(_loc3_);
            if(_loc4_ != null)
            {
               _loc4_.dispose();
               var_321.remove(_loc3_);
            }
         }
      }
      
      public function getPartSet(param1:int) : IFigurePartSet
      {
         return var_321.getValue(String(param1));
      }
      
      public function getDefaultPartSet(param1:String) : IFigurePartSet
      {
         var _loc4_:int = 0;
         var _loc5_:* = null;
         var _loc2_:Array = var_321.getKeys();
         var _loc3_:int = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = _loc2_[_loc3_];
            _loc5_ = var_321.getValue(_loc4_);
            if(_loc5_ && _loc5_.clubLevel == 0 && _loc5_.gender == param1)
            {
               return _loc5_;
            }
            _loc3_--;
         }
         return null;
      }
      
      public function get isMandatory() : Boolean
      {
         return var_2255;
      }
      
      public function get paletteID() : int
      {
         return var_2256;
      }
      
      public function append(param1:XML) : void
      {
         var _loc2_:* = null;
         for each(_loc2_ in param1["set"])
         {
            var_321.add(String(_loc2_.@id),new FigurePartSet(_loc2_));
         }
      }
      
      public function get partSets() : Map
      {
         return var_321;
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_321.getValues())
         {
            _loc1_.dispose();
         }
         var_321.dispose();
         var_321 = null;
      }
   }
}
