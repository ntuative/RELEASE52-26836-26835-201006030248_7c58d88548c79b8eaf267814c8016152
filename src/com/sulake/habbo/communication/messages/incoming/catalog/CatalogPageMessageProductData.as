package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_224:String = "e";
      
      public static const const_85:String = "i";
      
      public static const const_84:String = "s";
       
      
      private var var_1022:String;
      
      private var var_1225:String;
      
      private var var_1223:int;
      
      private var var_2132:int;
      
      private var var_1023:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         var_1225 = param1.readString();
         var_2132 = param1.readInteger();
         var_1022 = param1.readString();
         var_1023 = param1.readInteger();
         var_1223 = param1.readInteger();
      }
      
      public function get productCount() : int
      {
         return var_1023;
      }
      
      public function get productType() : String
      {
         return var_1225;
      }
      
      public function get expiration() : int
      {
         return var_1223;
      }
      
      public function get furniClassId() : int
      {
         return var_2132;
      }
      
      public function get extraParam() : String
      {
         return var_1022;
      }
   }
}
