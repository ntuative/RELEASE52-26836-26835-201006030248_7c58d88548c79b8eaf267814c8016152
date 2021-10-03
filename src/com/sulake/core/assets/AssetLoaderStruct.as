package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_695:IAssetLoader;
      
      private var var_1403:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         var_1403 = param1;
         var_695 = param2;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return var_695;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(var_695 != null)
            {
               if(true)
               {
                  var_695.dispose();
                  var_695 = null;
               }
            }
            super.dispose();
         }
      }
      
      public function get assetName() : String
      {
         return var_1403;
      }
   }
}
