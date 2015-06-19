package examples 
{
    import flash.display.Sprite;
    import flash.events.MouseEvent;
    import flash.events.Event;
    import fl.controls.TextInput;
    import fl.controls.Label;
    import fl.controls.Button;
    
    public class TextInputExample extends Sprite
    {
        private var ti1:TextInput;
        private var ti2:TextInput;
        private var label1:Label;
        private var label2:Label;
        private var submitBtn:Button;
        
        public function TextInputExample() {
            setupLabels();
            setupInputFields();    
            setupButton();
        }
        private function setupInputFields():void {
            ti1 = new TextInput();
            ti2 = new TextInput();
            ti1.move(50,10);
            ti2.move(50,40);
            ti2.displayAsPassword = true;
            ti1.addEventListener(Event.CHANGE, textEntered);
            ti2.addEventListener(Event.CHANGE, textEntered);
            addChild(ti1);
            addChild(ti2);
        }
        private function setupLabels():void {
            label1 = new Label();
            label2 = new Label();
            label1.move(10,10);
            label2.move(10,40);
            label1.text = "User:";
            label2.text = "Pass:"
            addChild(label1);
            addChild(label2);
        }
        private function setupButton():void {
            submitBtn = new Button();
            submitBtn.move(150,70);
            submitBtn.label = "Go";
            submitBtn.enabled = false;
            submitBtn.setSize(50,20);
            submitBtn.addEventListener(MouseEvent.CLICK, submitLogin);
            addChild(submitBtn);
        }
        private function textEntered(e:Event):void {
            if(ti1.text != "" && ti2.text != "") {
                submitBtn.enabled = true;
            }
            else {
                submitBtn.enabled = false;    
            }
        }
        private function submitLogin(e:MouseEvent):void {
            var submitLabel:Label = new Label();
            submitLabel.move(10,70);
            submitLabel.autoSize = "left";
            submitLabel.text = "Login has been submitted."
            addChild(submitLabel);
            submitBtn.removeEventListener(MouseEvent.CLICK, submitLogin);
        }
    }
}