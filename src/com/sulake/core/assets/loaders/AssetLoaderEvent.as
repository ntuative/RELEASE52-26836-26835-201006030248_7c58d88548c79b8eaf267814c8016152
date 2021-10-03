package com.sulake.core.assets.loaders
{
   import flash.events.Event;
   
   public class AssetLoaderEvent extends Event
   {
      
      public static const const_944:String = "AssetLoaderEventUnload";
      
      public static const const_51:String = "AssetLoaderEventError";
      
      public static const const_855:String = "AssetLoaderEventOpen";
      
      public static const const_839:String = "AssetLoaderEventProgress";
      
      public static const const_1044:String = "AssetLoaderEventStatus";
      
      public static const const_36:String = "AssetLoaderEventComplete";
       
      
      private var var_150:int;
      
      public function AssetLoaderEvent(param1:String, param2:int)
      {
         var_150 = param2;
         super(param1,false,false);
      }
      
      public function get status() : int
      {
         return var_150;
      }
      
      override public function clone() : Event
      {
         return new AssetLoaderEvent(type,var_150);
      }
   }
}
