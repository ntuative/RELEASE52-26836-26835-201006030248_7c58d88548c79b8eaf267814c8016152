package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetExperienceParser implements IMessageParser
   {
       
      
      private var var_1693:int = 0;
      
      private var _roomId:int = 0;
      
      private var _petRoomIndex:int = -1;
      
      private var var_1166:int = -1;
      
      private var _roomCategory:int = 0;
      
      public function PetExperienceParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         var_1166 = param1.readInteger();
         _petRoomIndex = param1.readInteger();
         var_1693 = param1.readInteger();
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get gainedExperience() : int
      {
         return var_1693;
      }
      
      public function get petRoomIndex() : int
      {
         return _petRoomIndex;
      }
      
      public function get roomCategory() : int
      {
         return _roomCategory;
      }
      
      public function get petId() : int
      {
         return var_1166;
      }
   }
}
