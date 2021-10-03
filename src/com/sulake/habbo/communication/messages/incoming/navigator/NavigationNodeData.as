package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class NavigationNodeData
   {
       
      
      private var var_1276:int;
      
      private var var_1484:String;
      
      public function NavigationNodeData(param1:int, param2:String)
      {
         super();
         var_1276 = param1;
         var_1484 = param2;
         Logger.log("READ NODE: " + var_1276 + ", " + var_1484);
      }
      
      public function get nodeName() : String
      {
         return var_1484;
      }
      
      public function get nodeId() : int
      {
         return var_1276;
      }
   }
}
