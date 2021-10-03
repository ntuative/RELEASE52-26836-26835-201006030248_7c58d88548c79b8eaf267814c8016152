package com.sulake.habbo.avatar.alias
{
   public class AssetAlias
   {
       
      
      private var var_999:Boolean;
      
      private var _name:String;
      
      private var var_2091:String;
      
      private var var_1000:Boolean;
      
      public function AssetAlias(param1:XML)
      {
         super();
         _name = String(param1.@name);
         var_2091 = String(param1.@link);
         var_1000 = Boolean(parseInt(param1.@fliph));
         var_999 = Boolean(parseInt(param1.@flipv));
      }
      
      public function get flipH() : Boolean
      {
         return var_1000;
      }
      
      public function get flipV() : Boolean
      {
         return var_999;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get link() : String
      {
         return var_2091;
      }
   }
}
