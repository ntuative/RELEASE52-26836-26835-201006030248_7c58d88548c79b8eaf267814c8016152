package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_454:String;
      
      private var var_1867:int;
      
      private var var_2118:String;
      
      private var var_1029:int;
      
      private var var_1166:int;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return var_1166;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1166 = param1.readInteger();
         var_2118 = param1.readString();
         var_1867 = param1.readInteger();
         var_454 = param1.readString();
         var_1029 = param1.readInteger();
         return true;
      }
      
      public function get petName() : String
      {
         return var_2118;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get figure() : String
      {
         return var_454;
      }
      
      public function get petType() : int
      {
         return var_1029;
      }
      
      public function get level() : int
      {
         return var_1867;
      }
   }
}
