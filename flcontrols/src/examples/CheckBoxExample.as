package examples 
{
    import flash.display.Sprite;
    import flash.events.MouseEvent;
    import flash.text.TextField
    import fl.controls.CheckBox;    

    public class CheckBoxExample extends Sprite
    {
        private var cb1:CheckBox;
        private var cb2:CheckBox;        
        private var cb3:CheckBox;
        private var tf:TextField;
        
        public function CheckBoxExample() {
            createTraceField();
            setupCheckBoxes();
        }
        private function createTraceField():void {
            tf = new TextField();
            tf.width = 200;
            tf.height = 200;
            tf.x = 100;
            tf.y = 10;
            tf.border = true;
            tf.text = "You have selected:\n";
            addChild(tf);
        }
        private function setupCheckBoxes():void {
            cb1 = new CheckBox();
            cb2 = new CheckBox();
            cb3 = new CheckBox();
            cb1.label = "Beets";
            cb2.label = "Sprouts";
            cb3.label = "Rutabega";
            cb1.y = 10;
            cb2.y = 30;
            cb3.y = 50;

            cb1.addEventListener(MouseEvent.CLICK,updateCart);
            cb2.addEventListener(MouseEvent.CLICK,updateCart);
            cb3.addEventListener(MouseEvent.CLICK,updateCart);

            addChild(cb1);
            addChild(cb2);
            addChild(cb3);
        }
        private function updateCart(e:MouseEvent):void {
            var cb:CheckBox = CheckBox(e.target);
            tf.text = "You have selected:\n";
            if(cb1.selected == true) tf.appendText(cb1.label + "\n");
            if(cb2.selected == true) tf.appendText(cb2.label + "\n");
            if(cb3.selected == true) tf.appendText(cb3.label + "\n");
        }
    }
}