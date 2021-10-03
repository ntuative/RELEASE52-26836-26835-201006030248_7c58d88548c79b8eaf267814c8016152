package com.sulake.habbo.avatar.pets
{
   public class PetEditorInfo
   {
       
      
      private var var_1919:Boolean;
      
      private var var_1805:Boolean;
      
      public function PetEditorInfo(param1:XML)
      {
         super();
         var_1919 = Boolean(parseInt(param1.@club));
         var_1805 = Boolean(parseInt(param1.@selectable));
      }
      
      public function get isClub() : Boolean
      {
         return var_1919;
      }
      
      public function get isSelectable() : Boolean
      {
         return var_1805;
      }
   }
}
