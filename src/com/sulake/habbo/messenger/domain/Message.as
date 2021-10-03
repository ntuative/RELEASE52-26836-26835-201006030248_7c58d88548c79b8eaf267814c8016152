package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_693:int = 2;
      
      public static const const_917:int = 6;
      
      public static const const_648:int = 1;
      
      public static const const_588:int = 3;
      
      public static const const_889:int = 4;
      
      public static const const_562:int = 5;
       
      
      private var var_2201:String;
      
      private var var_1122:int;
      
      private var var_1744:String;
      
      private var _type:int;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         _type = param1;
         var_1122 = param2;
         var_1744 = param3;
         var_2201 = param4;
      }
      
      public function get time() : String
      {
         return var_2201;
      }
      
      public function get senderId() : int
      {
         return var_1122;
      }
      
      public function get messageText() : String
      {
         return var_1744;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
