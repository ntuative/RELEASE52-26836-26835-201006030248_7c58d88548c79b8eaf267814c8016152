package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_649:Array;
      
      private var var_1412:int;
      
      private var var_1504:Array;
      
      private var var_650:Array;
      
      private var var_1389:Boolean = false;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         var_1389 = _loc2_.isWrappingEnabled;
         var_1412 = _loc2_.wrappingPrice;
         var_1504 = _loc2_.stuffTypes;
         var_650 = _loc2_.boxTypes;
         var_649 = _loc2_.ribbonTypes;
      }
      
      public function get ribbonTypes() : Array
      {
         return var_649;
      }
      
      public function get stuffTypes() : Array
      {
         return var_1504;
      }
      
      public function get price() : int
      {
         return var_1412;
      }
      
      public function get boxTypes() : Array
      {
         return var_650;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1389;
      }
   }
}
