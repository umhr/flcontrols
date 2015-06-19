package examples 
{
    import flash.events.MouseEvent;
    import flash.text.TextField;
    import flash.text.TextFieldAutoSize;
    import flash.display.Sprite;
    import fl.controls.Label;
    import fl.controls.Button;
    
    public class LabelExample extends Sprite
    {
        private var simpleLabel:Label;
        private var b1:Button;
        private var b2:Button;        

        private var htmlData:String = "<br>This label displays <b>bold</b> and <i>italic</i> HTML-formatted text.";
        
        public function LabelExample() {
            setupLabel();
            setupButtons();
        }
        private function setupButtons():void {
            b1 = new Button();
            b2 = new Button();

            b1.move(10,50);
            b2.move(10,80);

            b1.setSize(120,22);
            b2.setSize(120,22);
            
            b1.label = "Make Normal Label";
            b2.label = "Make HTML Label";

            b1.addEventListener(MouseEvent.CLICK,buttonClick);
            b2.addEventListener(MouseEvent.CLICK,buttonClick);

            addChild(b1);
            addChild(b2);
        }
        private function setupLabel():void {
            simpleLabel = new Label();
            simpleLabel.move(10,10);
            simpleLabel.autoSize = TextFieldAutoSize.LEFT;
            addChild(simpleLabel);
        }
                               
        // Event handler function to change the image size.
        private function displayHTML():void {
            simpleLabel.htmlText = htmlData;
        }
      
        // Event handler function to change the image size.
        private function displayText():void {
            simpleLabel.text = "This Label displays plain text.";
        }
        private function buttonClick(e:MouseEvent):void {
            switch(e.target) {
                case b1:
                    displayText();
                    break;
                case b2:
                    displayHTML();
                    break;
                default:
                    break;
            }
        }
    }
}