package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.utils.debug.GarbageMonitor;
   import com.sulake.habbo.communication.messages.outgoing.tracking.PerformanceLogMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.external.ExternalInterface;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.utils.getTimer;
   
   public class PerformanceTracker
   {
       
      
      private var var_1643:GarbageMonitor = null;
      
      private var var_1394:int = 0;
      
      private var var_1203:Boolean = false;
      
      private var var_1812:String = "";
      
      private var var_1644:String = "";
      
      private var var_378:Number = 0;
      
      private var var_1391:int = 10;
      
      private var var_2400:Array;
      
      private var var_670:int = 0;
      
      private var var_1393:int = 60;
      
      private var var_1131:int = 0;
      
      private var var_1130:int = 0;
      
      private var var_1807:String = "";
      
      private var var_2280:Number = 0;
      
      private var var_1390:int = 1000;
      
      private var var_2282:Boolean = true;
      
      private var var_2281:Number = 0.15;
      
      private var var_162:IHabboConfigurationManager = null;
      
      private var var_1810:String = "";
      
      private var var_1392:int = 0;
      
      private var _connection:IConnection = null;
      
      public function PerformanceTracker()
      {
         var_2400 = [];
         super();
         var_1644 = Capabilities.version;
         var_1812 = Capabilities.os;
         var_1203 = Capabilities.isDebugger;
         var_1810 = !true ? ExternalInterface.call("window.navigator.userAgent.toString") : "unknown";
         var_1643 = new GarbageMonitor();
         updateGarbageMonitor();
         var_1394 = getTimer();
      }
      
      private function updateGarbageMonitor() : Object
      {
         var _loc2_:* = null;
         var _loc1_:Array = var_1643.list;
         if(_loc1_ == null || _loc1_.length == 0)
         {
            _loc2_ = new GarbageTester("tester");
            var_1643.insert(_loc2_,"tester");
            return _loc2_;
         }
         return null;
      }
      
      public function dispose() : void
      {
      }
      
      public function get averageUpdateInterval() : int
      {
         return var_378;
      }
      
      private function differenceInPercents(param1:Number, param2:Number) : Number
      {
         if(param1 == param2)
         {
            return 0;
         }
         var _loc3_:Number = param1;
         var _loc4_:Number = param2;
         if(param2 > param1)
         {
            _loc3_ = param2;
            _loc4_ = param1;
         }
         return 100 * (1 - _loc4_ / _loc3_);
      }
      
      public function set reportInterval(param1:int) : void
      {
         var_1393 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         _connection = param1;
      }
      
      public function get flashVersion() : String
      {
         return var_1644;
      }
      
      public function update(param1:uint) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc2_:Object = updateGarbageMonitor();
         if(_loc2_ != null)
         {
            ++var_1130;
            Logger.log("Garbage collection");
         }
         var _loc3_:Boolean = false;
         if(param1 > var_1390)
         {
            ++var_1131;
            _loc3_ = true;
         }
         else
         {
            ++var_670;
            if(var_670 <= 1)
            {
               var_378 = param1;
            }
            else
            {
               _loc4_ = Number(var_670);
               var_378 = var_378 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
            }
         }
         if(getTimer() - var_1394 > var_1393 * 1000 && var_1392 < var_1391)
         {
            Logger.log("*** Performance tracker: average frame rate " + 1000 / var_378);
            _loc5_ = true;
            if(var_2282 && var_1392 > 0)
            {
               _loc6_ = differenceInPercents(var_2280,var_378);
               if(_loc6_ < var_2281)
               {
                  _loc5_ = false;
               }
            }
            var_1394 = getTimer();
            if(_loc5_ || _loc3_)
            {
               var_2280 = var_378;
               if(sendReport())
               {
                  ++var_1392;
               }
            }
         }
      }
      
      public function set reportLimit(param1:int) : void
      {
         var_1391 = param1;
      }
      
      public function set slowUpdateLimit(param1:int) : void
      {
         var_1390 = param1;
      }
      
      private function sendReport() : Boolean
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(_connection != null)
         {
            _loc1_ = null;
            _loc2_ = getTimer() / 1000;
            _loc3_ = -1;
            _loc4_ = 0;
            _loc1_ = new PerformanceLogMessageComposer(_loc2_,var_1810,var_1644,var_1812,var_1807,var_1203,_loc4_,_loc3_,var_1130,var_378,var_1131);
            _connection.send(_loc1_);
            var_1130 = 0;
            var_378 = 0;
            var_670 = 0;
            var_1131 = 0;
            return true;
         }
         return false;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         var_162 = param1;
         var_1393 = int(var_162.getKey("performancetest.interval","60"));
         var_1390 = int(var_162.getKey("performancetest.slowupdatelimit","1000"));
         var_1391 = int(var_162.getKey("performancetest.reportlimit","10"));
         var_2281 = Number(var_162.getKey("performancetest.distribution.deviancelimit.percent","10"));
         var_2282 = Boolean(int(var_162.getKey("performancetest.distribution.enabled","1")));
      }
   }
}
