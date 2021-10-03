package com.sulake.core.localization
{
   public class LocalizationDefinition implements ILocalizationDefinition
   {
       
      
      private var _name:String;
      
      private var var_1460:String;
      
      private var var_665:String;
      
      private var var_1461:String;
      
      private var var_1459:String;
      
      public function LocalizationDefinition(param1:String, param2:String, param3:String)
      {
         super();
         var _loc4_:Array = param1.split("_");
         var_1459 = _loc4_[0];
         var _loc5_:Array = String(_loc4_[1]).split(".");
         var_1460 = _loc5_[0];
         var_1461 = _loc5_[1];
         _name = param2;
         var_665 = param3;
      }
      
      public function get countryCode() : String
      {
         return var_1460;
      }
      
      public function get languageCode() : String
      {
         return var_1459;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get url() : String
      {
         return var_665;
      }
      
      public function get encoding() : String
      {
         return var_1461;
      }
      
      public function get id() : String
      {
         return var_1459 + "_" + var_1460 + "." + var_1461;
      }
   }
}
