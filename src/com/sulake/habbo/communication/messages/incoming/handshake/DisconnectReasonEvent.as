package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_1704:int = 5;
      
      public static const const_1561:int = 113;
      
      public static const const_1533:int = 29;
      
      public static const const_1529:int = 0;
      
      public static const const_1510:int = 102;
      
      public static const const_1611:int = 25;
      
      public static const const_1577:int = 20;
      
      public static const const_1508:int = 116;
      
      public static const const_1551:int = 114;
      
      public static const const_1688:int = 101;
      
      public static const const_1570:int = 108;
      
      public static const const_1575:int = 112;
      
      public static const const_1562:int = 100;
      
      public static const const_1496:int = 24;
      
      public static const const_1263:int = 10;
      
      public static const const_1691:int = 111;
      
      public static const const_1601:int = 23;
      
      public static const const_1574:int = 26;
      
      public static const const_1274:int = 2;
      
      public static const const_1648:int = 22;
      
      public static const const_1571:int = 17;
      
      public static const const_1638:int = 18;
      
      public static const const_1552:int = 3;
      
      public static const const_1706:int = 109;
      
      public static const const_1422:int = 1;
      
      public static const const_1507:int = 103;
      
      public static const const_1690:int = 11;
      
      public static const const_1628:int = 28;
      
      public static const const_1527:int = 104;
      
      public static const const_1492:int = 13;
      
      public static const const_1678:int = 107;
      
      public static const const_1491:int = 27;
      
      public static const const_1593:int = 118;
      
      public static const const_1550:int = 115;
      
      public static const const_1669:int = 16;
      
      public static const const_1602:int = 19;
      
      public static const const_1534:int = 4;
      
      public static const const_1537:int = 105;
      
      public static const const_1667:int = 117;
      
      public static const const_1543:int = 119;
      
      public static const const_1612:int = 106;
      
      public static const const_1596:int = 12;
      
      public static const const_1696:int = 110;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_7 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(reason)
         {
            case const_1422:
            case const_1263:
               return "banned";
            case const_1274:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
