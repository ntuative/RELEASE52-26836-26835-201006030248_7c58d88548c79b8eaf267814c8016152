package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_614;
         param1["bitmap"] = const_658;
         param1["border"] = const_760;
         param1["border_notify"] = const_1298;
         param1["button"] = const_488;
         param1["button_thick"] = const_736;
         param1["button_icon"] = const_1238;
         param1["button_group_left"] = const_597;
         param1["button_group_center"] = const_688;
         param1["button_group_right"] = const_596;
         param1["canvas"] = const_533;
         param1["checkbox"] = const_613;
         param1["closebutton"] = const_1046;
         param1["container"] = const_358;
         param1["container_button"] = const_697;
         param1["display_object_wrapper"] = const_593;
         param1["dropmenu"] = const_428;
         param1["dropmenu_item"] = const_446;
         param1["frame"] = const_320;
         param1["frame_notify"] = const_1191;
         param1["header"] = const_727;
         param1["icon"] = const_991;
         param1["itemgrid"] = const_937;
         param1["itemgrid_horizontal"] = const_407;
         param1["itemgrid_vertical"] = const_532;
         param1["itemlist"] = const_1009;
         param1["itemlist_horizontal"] = const_338;
         param1["itemlist_vertical"] = const_302;
         param1["maximizebox"] = const_1254;
         param1["menu"] = WINDOW_TYPE_MENU;
         param1["menu_item"] = const_1380;
         param1["submenu"] = const_1007;
         param1["minimizebox"] = const_1426;
         param1["notify"] = const_1261;
         param1["null"] = const_709;
         param1["password"] = const_698;
         param1["radiobutton"] = const_717;
         param1["region"] = const_395;
         param1["restorebox"] = const_1279;
         param1["scaler"] = const_750;
         param1["scaler_horizontal"] = const_1429;
         param1["scaler_vertical"] = const_1262;
         param1["scrollbar_horizontal"] = const_466;
         param1["scrollbar_vertical"] = const_651;
         param1["scrollbar_slider_button_up"] = const_1047;
         param1["scrollbar_slider_button_down"] = const_1043;
         param1["scrollbar_slider_button_left"] = const_1041;
         param1["scrollbar_slider_button_right"] = const_912;
         param1["scrollbar_slider_bar_horizontal"] = const_972;
         param1["scrollbar_slider_bar_vertical"] = const_893;
         param1["scrollbar_slider_track_horizontal"] = const_1006;
         param1["scrollbar_slider_track_vertical"] = const_970;
         param1["scrollable_itemlist"] = const_1428;
         param1["scrollable_itemlist_vertical"] = const_497;
         param1["scrollable_itemlist_horizontal"] = const_1012;
         param1["selector"] = const_686;
         param1["selector_list"] = const_665;
         param1["submenu"] = const_1007;
         param1["tab_button"] = const_543;
         param1["tab_container_button"] = const_953;
         param1["tab_context"] = WINDOW_TYPE_TAB_CONTEXT;
         param1["tab_content"] = const_918;
         param1["tab_selector"] = const_722;
         param1["text"] = const_572;
         param1["input"] = const_704;
         param1["toolbar"] = const_1353;
         param1["tooltip"] = const_311;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  Logger.log("Overlapping window type code " + _loc3_ + "!");
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
