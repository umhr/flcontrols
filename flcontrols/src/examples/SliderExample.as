package examples 
{
	import fl.controls.Label;
	import fl.controls.Slider;
    import flash.display.Sprite;
    import fl.events.SliderEvent;
    
    public class SliderExample extends Sprite    
    {
		private var slider:Slider = new Slider();
		private var sliderLabel:Label = new Label();
        public function SliderExample() {
			slider.y = 30;
			addChild(slider);
			addChild(sliderLabel);
            configureListeners();
        }
        private function configureListeners():void {
            slider.addEventListener(SliderEvent.CHANGE, sliderChanged);
            slider.addEventListener(SliderEvent.THUMB_DRAG, sliderDrag);
            slider.addEventListener(SliderEvent.THUMB_PRESS, sliderPress);            
            slider.addEventListener(SliderEvent.THUMB_RELEASE, sliderRelease);
        }
        private function sliderDrag(e:SliderEvent):void {
            trace("Slider dragging: " + e.target.value);
            sliderLabel.text = "Slider dragging: " + e.target.value;    
        }
        private function sliderPress(e:SliderEvent):void {
            sliderLabel.text = "Slider pressed";    
        }
        private function sliderRelease(e:SliderEvent):void {
            sliderLabel.text = "Slider released";    
        }
        private function sliderChanged(e:SliderEvent):void {
            sliderLabel.text = "Slider changed: " + e.target.value;    
        }
    }
}