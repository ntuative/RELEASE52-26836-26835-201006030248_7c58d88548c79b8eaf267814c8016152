package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_965:String = "price_type_none";
      
      public static const const_504:String = "pricing_model_multi";
      
      public static const const_330:String = "price_type_credits";
      
      public static const const_391:String = "price_type_credits_and_pixels";
      
      public static const const_473:String = "pricing_model_bundle";
      
      public static const const_457:String = "pricing_model_single";
      
      public static const const_692:String = "price_type_credits_or_credits_and_pixels";
      
      public static const const_1203:String = "pricing_model_unknown";
      
      public static const const_404:String = "price_type_pixels";
       
      
      private var var_2228:int;
      
      private var var_935:int;
      
      private var _offerId:int;
      
      private var var_934:int;
      
      private var var_446:String;
      
      private var var_638:String;
      
      private var var_452:ICatalogPage;
      
      private var var_445:IProductContainer;
      
      private var var_1370:String;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         _offerId = param1.offerId;
         var_1370 = param1.localizationId;
         var_935 = param1.priceInCredits;
         var_934 = param1.priceInPixels;
         var_452 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(param1.localizationId);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         analyzePricingModel(_loc3_);
         analyzePriceType();
         createProductContainer(_loc3_);
      }
      
      public function get pricingModel() : String
      {
         return var_446;
      }
      
      public function get page() : ICatalogPage
      {
         return var_452;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         var_2228 = param1;
      }
      
      public function get productContainer() : IProductContainer
      {
         return var_445;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get priceInPixels() : int
      {
         return var_934;
      }
      
      public function dispose() : void
      {
         _offerId = 0;
         var_1370 = "";
         var_935 = 0;
         var_934 = 0;
         var_452 = null;
         if(var_445 != null)
         {
            var_445.dispose();
            var_445 = null;
         }
      }
      
      public function get previewCallbackId() : int
      {
         return var_2228;
      }
      
      public function get priceInCredits() : int
      {
         return var_935;
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               var_446 = const_457;
            }
            else
            {
               var_446 = const_504;
            }
         }
         else if(param1.length > 1)
         {
            var_446 = const_473;
         }
         else
         {
            var_446 = const_1203;
         }
      }
      
      public function get priceType() : String
      {
         return var_638;
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(var_446)
         {
            case const_457:
               var_445 = new SingleProductContainer(this,param1);
               break;
            case const_504:
               var_445 = new MultiProductContainer(this,param1);
               break;
            case const_473:
               var_445 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + var_446);
         }
      }
      
      public function get localizationId() : String
      {
         return var_1370;
      }
      
      private function analyzePriceType() : void
      {
         if(var_935 > 0 && var_934 > 0)
         {
            var_638 = const_391;
         }
         else if(var_935 > 0)
         {
            var_638 = const_330;
         }
         else if(var_934 > 0)
         {
            var_638 = const_404;
         }
         else
         {
            var_638 = const_965;
         }
      }
   }
}
