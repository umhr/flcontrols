package examples 
{
    import flash.display.Sprite
    import flash.text.TextField;
    import flash.events.Event;
    import fl.controls.NumericStepper;
    
    public class NumericStepperExample extends Sprite
    {
        private var ns1:NumericStepper;
        private var ns2:NumericStepper;
        private var tf1:TextField;
        private var tf2:TextField;
        private var rowHeight1:Number = 10;
        private var rowHeight2:Number = 50;
        
        public function NumericStepperExample() {        
            setupSteppers();
            setupTextFields();
        }
        private function setupTextFields():void {
            tf1 = new TextField();
            tf1.text = "This stepper increments by 1 between 0 and 5. Disables if it reaches 0.";
            tf1.autoSize = "left";
            tf1.x = 100;
            tf1.y = rowHeight1;
            addChild(tf1);
            
            tf2 = new TextField();
            tf2.text = "This stepper increments by 0.01 between 0 and 20. Disables if it reaches 0.";
            tf2.autoSize = "left";
            tf2.x = 100;
            tf2.y = rowHeight2;
            addChild(tf2);
        }
        private function setupSteppers():void {    
            ns1 = new NumericStepper();
            ns1.stepSize = 1;
            ns1.maximum = 5;
            ns1.minimum = 0;
            ns1.addEventListener(Event.CHANGE,changeOccurred);
            ns1.move(10,rowHeight1);
            addChild(ns1);

            ns2 = new NumericStepper();
            ns2.stepSize = 0.01;
            ns2.maximum = 20;
            ns2.minimum = 0;
            ns2.value = 10;
            ns2.addEventListener(Event.CHANGE,changeOccurred);
            ns2.move(10,rowHeight2);
            addChild(ns2);
        }
        private function changeOccurred(e:Event):void {
            var nsTarget:NumericStepper = e.target as NumericStepper;
            if(nsTarget.value == 0) nsTarget.enabled = false;
        }
    }
}