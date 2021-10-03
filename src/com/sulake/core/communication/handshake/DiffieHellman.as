package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1338:BigInteger;
      
      private var var_617:BigInteger;
      
      private var var_1603:BigInteger;
      
      private var var_1602:BigInteger;
      
      private var var_2128:BigInteger;
      
      private var var_1678:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         var_1338 = param1;
         var_1603 = param2;
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return var_2128.toRadix(param1);
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         var_1602 = new BigInteger();
         var_1602.fromRadix(param1,param2);
         var_2128 = var_1602.modPow(var_617,var_1338);
         return getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return var_1678.toRadix(param1);
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + var_1338.toString() + ",generator: " + var_1603.toString() + ",secret: " + param1);
         var_617 = new BigInteger();
         var_617.fromRadix(param1,param2);
         var_1678 = var_1603.modPow(var_617,var_1338);
         return true;
      }
   }
}
