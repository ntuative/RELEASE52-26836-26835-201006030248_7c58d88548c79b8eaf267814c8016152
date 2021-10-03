package com.sulake.habbo.catalog.club
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.catalog.viewer.ICatalogPage;
   import com.sulake.habbo.catalog.viewer.IProductContainer;
   import com.sulake.habbo.catalog.viewer.Offer;
   
   public class ClubBuyOfferData implements IPurchasableOffer
   {
       
      
      private var var_1698:int;
      
      private var var_2131:Boolean = false;
      
      private var var_1703:int;
      
      private var var_1699:int;
      
      private var var_1701:int;
      
      private var var_1323:String;
      
      private var var_1412:int;
      
      private var _offerId:int;
      
      private var var_1700:int;
      
      private var var_1702:Boolean;
      
      private var var_1704:Boolean;
      
      private var var_452:ICatalogPage;
      
      public function ClubBuyOfferData(param1:int, param2:String, param3:int, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:int, param9:int, param10:int)
      {
         super();
         _offerId = param1;
         var_1323 = param2;
         var_1412 = param3;
         var_1704 = param4;
         var_1702 = param5;
         var_1703 = param6;
         var_1701 = param7;
         var_1699 = param8;
         var_1698 = param9;
         var_1700 = param10;
      }
      
      public function get month() : int
      {
         return var_1698;
      }
      
      public function get page() : ICatalogPage
      {
         return var_452;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get vip() : Boolean
      {
         return var_1702;
      }
      
      public function set page(param1:ICatalogPage) : void
      {
         var_452 = param1;
      }
      
      public function dispose() : void
      {
      }
      
      public function get priceInPixels() : int
      {
         return 0;
      }
      
      public function get priceType() : String
      {
         return Offer.const_330;
      }
      
      public function get upgrade() : Boolean
      {
         return var_1704;
      }
      
      public function get localizationId() : String
      {
         return var_1323;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return var_1701;
      }
      
      public function get upgradeHcPeriodToVip() : Boolean
      {
         return var_2131;
      }
      
      public function get day() : int
      {
         return var_1700;
      }
      
      public function get year() : int
      {
         return var_1699;
      }
      
      public function get price() : int
      {
         return var_1412;
      }
      
      public function set upgradeHcPeriodToVip(param1:Boolean) : void
      {
         var_2131 = param1;
      }
      
      public function get periods() : int
      {
         return var_1703;
      }
      
      public function get productContainer() : IProductContainer
      {
         return null;
      }
      
      public function get priceInCredits() : int
      {
         return var_1412;
      }
      
      public function get productCode() : String
      {
         return var_1323;
      }
   }
}
