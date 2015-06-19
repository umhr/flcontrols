package examples
{
    import flash.display.MovieClip;
    import flash.events.MouseEvent;
    import flash.text.TextField;
    import flash.text.TextFormat;
    import fl.controls.Button;
    
    public class ButtonExample extends MovieClip
    {
        private var b1:Button;
        private var b2:Button;        
        private var b3:Button;
        private var tf:TextField;
        
        public function ButtonExample() {
            createTraceField();
            setupButtons();
        }
        private function createTraceField():void {
            tf = new TextField();
            tf.width = 200;
            tf.height = 400;
            tf.x = 200;
            tf.y = 10;
            addChild(tf);
        }
        private function setupButtons():void {
            b1 = new Button();
            b2 = new Button();
            b3 = new Button();

            b1.move(10,10);
            b2.move(10,40);
            b3.move(10,70);

            b1.label = "Default Button";
            b2.label = "Custom Styled Button";
            b3.label = "Toggleable Button";
            b2.setStyle("textFormat", new TextFormat("Georgia"));
            b3.width = 120;
            b3.toggle = true;
            
            b1.addEventListener(MouseEvent.CLICK,buttonClick);
            b2.addEventListener(MouseEvent.CLICK,buttonClick);
            b3.addEventListener(MouseEvent.CLICK,buttonClick);

            addChild(b1);
            addChild(b2);
            addChild(b3);
        }
        private function buttonClick(e:MouseEvent):void {
            var button:Button = Button(e.target);
            tf.appendText(button.label + "\n");
        }
    }
}