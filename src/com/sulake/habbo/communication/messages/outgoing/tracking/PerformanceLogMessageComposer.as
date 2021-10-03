package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_1131:int = 0;
      
      private var var_1203:int = 0;
      
      private var var_1812:String = "";
      
      private var var_1130:int = 0;
      
      private var var_1807:String = "";
      
      private var var_1813:int = 0;
      
      private var var_1644:String = "";
      
      private var var_1811:int = 0;
      
      private var var_1808:int = 0;
      
      private var var_1810:String = "";
      
      private var var_1809:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         var_1811 = param1;
         var_1810 = param2;
         var_1644 = param3;
         var_1812 = param4;
         var_1807 = param5;
         if(param6)
         {
            var_1203 = 1;
         }
         else
         {
            var_1203 = 0;
         }
         var_1813 = param7;
         var_1808 = param8;
         var_1130 = param9;
         var_1809 = param10;
         var_1131 = param11;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1811,var_1810,var_1644,var_1812,var_1807,var_1203,var_1813,var_1808,var_1130,var_1809,var_1131];
      }
      
      public function dispose() : void
      {
      }
   }
}
