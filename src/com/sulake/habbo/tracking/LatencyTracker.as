package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.communication.messages.incoming.tracking.LatencyPingResponseMessageEvent;
   import com.sulake.habbo.communication.messages.outgoing.tracking.LatencyPingReportMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.tracking.LatencyPingRequestMessageComposer;
   import com.sulake.habbo.communication.messages.parser.tracking.LatencyPingResponseMessageParser;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.utils.getTimer;
   
   public class LatencyTracker
   {
       
      
      private var var_155:Array;
      
      private var var_35:Boolean = false;
      
      private var var_1509:int = 0;
      
      private var var_1506:int = 0;
      
      private var _communication:IHabboCommunicationManager;
      
      private var var_490:Map;
      
      private var var_1874:int = 0;
      
      private var var_1508:int = 0;
      
      private var var_162:IHabboConfigurationManager;
      
      private var var_1228:int = 0;
      
      private var _connection:IConnection;
      
      private var var_1507:int = 0;
      
      public function LatencyTracker()
      {
         super();
      }
      
      public function update(param1:uint) : void
      {
         if(!var_35)
         {
            return;
         }
         if(getTimer() - var_1509 > var_1506)
         {
            testLatency();
         }
      }
      
      private function testLatency() : void
      {
         var_1509 = getTimer();
         var_490.add(var_1228,var_1509);
         _connection.send(new LatencyPingRequestMessageComposer(var_1228));
         ++var_1228;
      }
      
      public function set communication(param1:IHabboCommunicationManager) : void
      {
         _communication = param1;
      }
      
      public function init() : void
      {
         if(var_162 == null || _communication == null || _connection == null)
         {
            return;
         }
         var_1506 = int(var_162.getKey("latencytest.interval"));
         var_1507 = int(var_162.getKey("latencytest.report.index"));
         var_1874 = int(var_162.getKey("latencytest.report.delta"));
         _communication.addHabboConnectionMessageEvent(new LatencyPingResponseMessageEvent(onPingResponse));
         if(var_1506 < 1)
         {
            return;
         }
         var_490 = new Map();
         var_155 = new Array();
         var_35 = true;
      }
      
      private function onPingResponse(param1:IMessageEvent) : void
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:* = null;
         if(var_490 == null || var_155 == null)
         {
            return;
         }
         var _loc2_:LatencyPingResponseMessageParser = (param1 as LatencyPingResponseMessageEvent).getParser();
         var _loc3_:int = var_490.getValue(_loc2_.requestId);
         var_490.remove(_loc2_.requestId);
         var _loc4_:int = getTimer() - _loc3_;
         var_155.push(_loc4_);
         if(var_155.length == var_1507 && var_1507 > 0)
         {
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            _loc8_ = 0;
            while(_loc8_ < var_155.length)
            {
               _loc5_ += var_155[_loc8_];
               _loc8_++;
            }
            _loc9_ = _loc5_ / 0;
            _loc8_ = 0;
            while(_loc8_ < var_155.length)
            {
               if(var_155[_loc8_] < _loc9_ * 2)
               {
                  _loc6_ += var_155[_loc8_];
                  _loc7_++;
               }
               _loc8_++;
            }
            if(_loc7_ == 0)
            {
               var_155 = [];
               return;
            }
            _loc10_ = _loc6_ / _loc7_;
            if(Math.abs(_loc9_ - var_1508) > var_1874 || var_1508 == 0)
            {
               var_1508 = _loc9_;
               _loc11_ = new LatencyPingReportMessageComposer(_loc9_,_loc10_,var_155.length);
               _connection.send(_loc11_);
            }
            var_155 = [];
         }
      }
      
      public function dispose() : void
      {
         var_35 = false;
         var_162 = null;
         _communication = null;
         _connection = null;
         if(var_490 != null)
         {
            var_490.dispose();
            var_490 = null;
         }
         var_155 = null;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         var_162 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         _connection = param1;
      }
   }
}
