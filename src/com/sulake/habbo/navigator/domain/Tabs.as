package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_601:int = 6;
      
      public static const const_242:int = 5;
      
      public static const const_549:int = 2;
      
      public static const const_317:int = 9;
      
      public static const const_343:int = 4;
      
      public static const const_263:int = 2;
      
      public static const const_625:int = 4;
      
      public static const const_241:int = 8;
      
      public static const const_566:int = 7;
      
      public static const const_288:int = 3;
      
      public static const const_349:int = 1;
      
      public static const const_223:int = 5;
      
      public static const const_452:int = 12;
      
      public static const const_345:int = 1;
      
      public static const const_653:int = 11;
      
      public static const const_573:int = 3;
      
      public static const const_1502:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_440:Array;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_440 = new Array();
         var_440.push(new Tab(_navigator,const_349,const_452,new EventsTabPageDecorator(_navigator),MainViewCtrl.const_443));
         var_440.push(new Tab(_navigator,const_263,const_345,new RoomsTabPageDecorator(_navigator),MainViewCtrl.const_443));
         var_440.push(new Tab(_navigator,const_343,const_653,new OfficialTabPageDecorator(_navigator),MainViewCtrl.const_963));
         var_440.push(new Tab(_navigator,const_288,const_242,new MyRoomsTabPageDecorator(_navigator),MainViewCtrl.const_443));
         var_440.push(new Tab(_navigator,const_223,const_241,new SearchTabPageDecorator(_navigator),MainViewCtrl.const_759));
         setSelectedTab(const_349);
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_440)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_440)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_440)
         {
            _loc1_.selected = false;
         }
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_343;
      }
      
      public function get tabs() : Array
      {
         return var_440;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         getTab(param1).selected = true;
      }
   }
}
