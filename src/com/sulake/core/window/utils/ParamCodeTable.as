package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_130;
         param1["bound_to_parent_rect"] = const_88;
         param1["child_window"] = const_984;
         param1["embedded_controller"] = const_307;
         param1["resize_to_accommodate_children"] = const_70;
         param1["input_event_processor"] = const_52;
         param1["internal_event_handling"] = const_618;
         param1["mouse_dragging_target"] = const_229;
         param1["mouse_dragging_trigger"] = const_361;
         param1["mouse_scaling_target"] = const_292;
         param1["mouse_scaling_trigger"] = const_408;
         param1["horizontal_mouse_scaling_trigger"] = const_248;
         param1["vertical_mouse_scaling_trigger"] = const_228;
         param1["observe_parent_input_events"] = const_898;
         param1["optimize_region_to_layout_size"] = const_414;
         param1["parent_window"] = const_1032;
         param1["relative_horizontal_scale_center"] = const_187;
         param1["relative_horizontal_scale_fixed"] = const_137;
         param1["relative_horizontal_scale_move"] = const_332;
         param1["relative_horizontal_scale_strech"] = const_262;
         param1["relative_scale_center"] = const_827;
         param1["relative_scale_fixed"] = const_617;
         param1["relative_scale_move"] = const_1050;
         param1["relative_scale_strech"] = const_943;
         param1["relative_vertical_scale_center"] = const_167;
         param1["relative_vertical_scale_fixed"] = const_129;
         param1["relative_vertical_scale_move"] = const_313;
         param1["relative_vertical_scale_strech"] = const_256;
         param1["on_resize_align_left"] = const_611;
         param1["on_resize_align_right"] = const_424;
         param1["on_resize_align_center"] = const_442;
         param1["on_resize_align_top"] = const_718;
         param1["on_resize_align_bottom"] = const_412;
         param1["on_resize_align_middle"] = const_502;
         param1["on_accommodate_align_left"] = const_872;
         param1["on_accommodate_align_right"] = const_474;
         param1["on_accommodate_align_center"] = const_623;
         param1["on_accommodate_align_top"] = const_830;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_643;
         param1["route_input_events_to_parent"] = const_460;
         param1["use_parent_graphic_context"] = const_35;
         param1["draggable_with_mouse"] = const_933;
         param1["scalable_with_mouse"] = const_951;
         param1["reflect_horizontal_resize_to_parent"] = const_403;
         param1["reflect_vertical_resize_to_parent"] = WINDOW_PARAM_REFLECT_VERTICAL_RESIZE_TO_PARENT;
         param1["reflect_resize_to_parent"] = const_283;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  if(param1[_loc3_] != 0)
                  {
                     Logger.log("Conflictiong flags in window params: \"" + _loc3_ + "\"!");
                  }
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
