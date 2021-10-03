package com.sulake.habbo.avatar.pets
{
   public class Breed extends PetEditorInfo implements IBreed
   {
       
      
      private var var_648:String;
      
      private var _id:int;
      
      private var var_2248:String = "";
      
      private var var_2249:int;
      
      private var var_2247:String;
      
      private var var_1982:Boolean;
      
      public function Breed(param1:XML)
      {
         super(param1);
         _id = parseInt(param1.@id);
         var_2249 = parseInt(param1.@pattern);
         var_648 = String(param1.@gender);
         var_1982 = Boolean(parseInt(param1.@colorable));
         var_2248 = String(param1.@localizationKey);
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get localizationKey() : String
      {
         return var_2248;
      }
      
      public function get isColorable() : Boolean
      {
         return var_1982;
      }
      
      public function get gender() : String
      {
         return var_648;
      }
      
      public function get patternId() : int
      {
         return var_2249;
      }
      
      public function get avatarFigureString() : String
      {
         return var_2247;
      }
      
      public function set avatarFigureString(param1:String) : void
      {
         var_2247 = param1;
      }
   }
}
