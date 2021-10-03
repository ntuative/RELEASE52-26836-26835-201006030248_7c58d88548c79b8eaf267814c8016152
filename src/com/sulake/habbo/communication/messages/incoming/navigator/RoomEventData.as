package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_2105:String;
      
      private var var_391:int;
      
      private var var_2163:String;
      
      private var var_2166:String;
      
      private var var_2164:int;
      
      private var var_2162:String;
      
      private var var_2165:int;
      
      private var var_660:Array;
      
      private var var_1063:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         var_660 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_1063 = false;
            return;
         }
         this.var_1063 = true;
         var_2164 = int(_loc2_);
         var_2163 = param1.readString();
         var_391 = int(param1.readString());
         var_2165 = param1.readInteger();
         var_2105 = param1.readString();
         var_2166 = param1.readString();
         var_2162 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            var_660.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function get eventType() : int
      {
         return var_2165;
      }
      
      public function get eventName() : String
      {
         return var_2105;
      }
      
      public function get eventDescription() : String
      {
         return var_2166;
      }
      
      public function get ownerAvatarName() : String
      {
         return var_2163;
      }
      
      public function get tags() : Array
      {
         return var_660;
      }
      
      public function get creationTime() : String
      {
         return var_2162;
      }
      
      public function get exists() : Boolean
      {
         return var_1063;
      }
      
      public function get ownerAvatarId() : int
      {
         return var_2164;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         this.var_660 = null;
      }
      
      public function get flatId() : int
      {
         return var_391;
      }
   }
}
