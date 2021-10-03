package com.sulake.habbo.widget.infostand
{
   import com.sulake.habbo.widget.events.RoomWidgetPetInfoUpdateEvent;
   import flash.display.BitmapData;
   
   public class InfoStandPetData
   {
       
      
      private var var_1867:int;
      
      private var var_1862:int;
      
      private var var_2009:int;
      
      private var _type:int;
      
      private var var_1166:int = -1;
      
      private var var_2012:int;
      
      private var _nutrition:int;
      
      private var var_2014:int;
      
      private var _energy:int;
      
      private var var_1860:int;
      
      private var var_2011:int;
      
      private var var_2015:int;
      
      private var var_1864:int;
      
      private var _petRespect:int;
      
      private var _canOwnerBeKicked:Boolean;
      
      private var _image:BitmapData;
      
      private var _ownerName:String;
      
      private var var_2010:Boolean;
      
      private var _name:String = "";
      
      private var var_1669:int;
      
      public function InfoStandPetData()
      {
         super();
      }
      
      public function get isOwnPet() : Boolean
      {
         return var_2010;
      }
      
      public function get level() : int
      {
         return var_1867;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get experienceMax() : int
      {
         return var_2014;
      }
      
      public function get id() : int
      {
         return var_1166;
      }
      
      public function get nutritionMax() : int
      {
         return var_2009;
      }
      
      public function get ownerId() : int
      {
         return var_1669;
      }
      
      public function setData(param1:RoomWidgetPetInfoUpdateEvent) : void
      {
         _name = param1.name;
         var_1166 = param1.id;
         _type = param1.petType;
         var_1860 = param1.petRace;
         _image = param1.image;
         var_2010 = param1.isOwnPet;
         var_1669 = param1.ownerId;
         _ownerName = param1.ownerName;
         _canOwnerBeKicked = param1.canOwnerBeKicked;
         var_1867 = param1.level;
         var_2012 = param1.levelMax;
         var_1862 = param1.experience;
         var_2014 = param1.experienceMax;
         _energy = param1.energy;
         var_2011 = param1.energyMax;
         _nutrition = param1.nutrition;
         var_2009 = param1.nutritionMax;
         _petRespect = param1.petRespect;
         var_2015 = param1.roomIndex;
         var_1864 = param1.age;
      }
      
      public function get roomIndex() : int
      {
         return var_2015;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get energyMax() : int
      {
         return var_2011;
      }
      
      public function get levelMax() : int
      {
         return var_2012;
      }
      
      public function get petRespect() : int
      {
         return _petRespect;
      }
      
      public function get race() : int
      {
         return var_1860;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get canOwnerBeKicked() : Boolean
      {
         return _canOwnerBeKicked;
      }
      
      public function get experience() : int
      {
         return var_1862;
      }
      
      public function get age() : int
      {
         return var_1864;
      }
   }
}
