package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1867:int;
      
      private var var_1865:int;
      
      private var var_1862:int;
      
      private var var_2009:int;
      
      private var _nutrition:int;
      
      private var var_1166:int;
      
      private var var_2012:int;
      
      private var var_2014:int;
      
      private var _energy:int;
      
      private var var_1864:int;
      
      private var var_2011:int;
      
      private var _ownerName:String;
      
      private var var_1669:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get level() : int
      {
         return var_1867;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function set respect(param1:int) : void
      {
         var_1865 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         _energy = param1;
      }
      
      public function set level(param1:int) : void
      {
         var_1867 = param1;
      }
      
      public function get petId() : int
      {
         return var_1166;
      }
      
      public function get experienceMax() : int
      {
         return var_2014;
      }
      
      public function get nutritionMax() : int
      {
         return var_2009;
      }
      
      public function set levelMax(param1:int) : void
      {
         var_2012 = param1;
      }
      
      public function get ownerId() : int
      {
         return var_1669;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function set petId(param1:int) : void
      {
         var_1166 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         _nutrition = param1;
      }
      
      public function get energyMax() : int
      {
         return var_2011;
      }
      
      public function get respect() : int
      {
         return var_1865;
      }
      
      public function get levelMax() : int
      {
         return var_2012;
      }
      
      public function set ownerName(param1:String) : void
      {
         _ownerName = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         var_2014 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         var_1862 = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         var_2009 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         var_1669 = param1;
      }
      
      public function get experience() : int
      {
         return var_1862;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function set energyMax(param1:int) : void
      {
         var_2011 = param1;
      }
      
      public function set age(param1:int) : void
      {
         var_1864 = param1;
      }
      
      public function get age() : int
      {
         return var_1864;
      }
   }
}
