package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.parser.inventory.pets.PetData;
   
   public class PetRespectNotificationParser implements IMessageParser
   {
       
      
      private var var_1865:int;
      
      private var var_1243:PetData;
      
      private var var_2254:int;
      
      public function PetRespectNotificationParser()
      {
         super();
      }
      
      public function get respect() : int
      {
         return var_1865;
      }
      
      public function get petData() : PetData
      {
         return var_1243;
      }
      
      public function flush() : Boolean
      {
         var_1243 = null;
         return true;
      }
      
      public function get petOwnerId() : int
      {
         return var_2254;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1865 = param1.readInteger();
         var_2254 = param1.readInteger();
         var_1243 = new PetData(param1);
         return true;
      }
   }
}
