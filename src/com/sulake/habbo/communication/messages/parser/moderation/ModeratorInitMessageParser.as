package com.sulake.habbo.communication.messages.parser.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.moderation.OffenceCategoryData;
   
   public class ModeratorInitMessageParser implements IMessageParser
   {
       
      
      private var _roomMessageTemplates:Array;
      
      private var var_2038:Boolean;
      
      private var var_1563:Array;
      
      private var var_2034:Boolean;
      
      private var var_2031:Boolean;
      
      private var var_2035:Boolean;
      
      private var var_160:Array;
      
      private var var_2037:Boolean;
      
      private var var_2033:Boolean;
      
      private var var_1562:Array;
      
      private var var_2036:Boolean;
      
      private var var_2032:Boolean;
      
      public function ModeratorInitMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get banPermission() : Boolean
      {
         return var_2032;
      }
      
      public function get roomKickPermission() : Boolean
      {
         return var_2038;
      }
      
      public function get alertPermission() : Boolean
      {
         return var_2034;
      }
      
      public function get cfhPermission() : Boolean
      {
         return var_2037;
      }
      
      public function get roomMessageTemplates() : Array
      {
         return _roomMessageTemplates;
      }
      
      public function get roomAlertPermission() : Boolean
      {
         return var_2033;
      }
      
      public function get messageTemplates() : Array
      {
         return var_1563;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:IssueInfoMessageParser = new IssueInfoMessageParser();
         var_160 = [];
         var_1563 = [];
         _roomMessageTemplates = [];
         var_1562 = [];
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(!_loc2_.parse(param1))
            {
               return false;
            }
            var_160.push(_loc2_.issueData);
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_1563.push(param1.readString());
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_1562.push(new OffenceCategoryData(param1));
            _loc4_++;
         }
         var_2037 = param1.readBoolean();
         var_2035 = param1.readBoolean();
         var_2034 = param1.readBoolean();
         var_2031 = param1.readBoolean();
         var_2032 = param1.readBoolean();
         var_2033 = param1.readBoolean();
         var_2038 = param1.readBoolean();
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            _roomMessageTemplates.push(param1.readString());
            _loc4_++;
         }
         var_2036 = param1.readBoolean();
         return true;
      }
      
      public function get kickPermission() : Boolean
      {
         return var_2031;
      }
      
      public function get offenceCategories() : Array
      {
         return var_1562;
      }
      
      public function get issues() : Array
      {
         return var_160;
      }
      
      public function get bobbaFilterPermission() : Boolean
      {
         return var_2036;
      }
      
      public function get chatlogsPermission() : Boolean
      {
         return var_2035;
      }
   }
}
