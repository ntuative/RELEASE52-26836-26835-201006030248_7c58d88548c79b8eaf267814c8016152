package com.sulake.habbo.sound.object
{
   import com.sulake.habbo.sound.IHabboSound;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class HabboSound implements IHabboSound
   {
       
      
      private var var_1061:SoundChannel = null;
      
      private var var_880:Boolean;
      
      private var var_1060:Sound = null;
      
      private var var_789:Number;
      
      public function HabboSound(param1:Sound)
      {
         super();
         var_1060 = param1;
         var_1060.addEventListener(Event.COMPLETE,onComplete);
         var_789 = 1;
         var_880 = false;
      }
      
      public function get finished() : Boolean
      {
         return !var_880;
      }
      
      public function stop() : Boolean
      {
         var_1061.stop();
         return true;
      }
      
      public function play() : Boolean
      {
         var_880 = false;
         var_1061 = var_1060.play(0);
         this.volume = var_789;
         return true;
      }
      
      public function set position(param1:Number) : void
      {
      }
      
      public function get volume() : Number
      {
         return var_789;
      }
      
      public function get ready() : Boolean
      {
         return true;
      }
      
      public function get position() : Number
      {
         return var_1061.position;
      }
      
      public function get length() : Number
      {
         return var_1060.length;
      }
      
      public function set volume(param1:Number) : void
      {
         var_789 = param1;
         if(var_1061 != null)
         {
            var_1061.soundTransform = new SoundTransform(var_789);
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         var_880 = true;
      }
   }
}
