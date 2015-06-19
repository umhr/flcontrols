package examples 
{
    import flash.display.Sprite
    import flash.text.TextField;
    import flash.events.Event;
    import fl.controls.ComboBox;
    
    public class ComboBoxExample extends Sprite
    {
        private var tf:TextField;
        private var cb:ComboBox = new ComboBox();
        public function ComboBoxExample() {
			addChild(cb);
            setupComboBox();
            setupTextField();
        }
        private function setupTextField():void {
            tf = new TextField();
            tf.x = 180;
            tf.y = 15;
            tf.autoSize = "left";
            addChild(tf);
        }
        private function setupComboBox():void {
            cb.setSize(150,22);
            cb.addItem( { label: "MasterCard", data:1 } );
            cb.addItem( { label: "Visa", data:2 } );
            cb.addItem( { label: "American Express", data:3 } );
            cb.addEventListener(Event.CHANGE, cardSelected);            
        }
        private function cardSelected(e:Event):void {
            tf.text = "You have selected: "
            tf.appendText(cb.selectedItem.label);
        }
    }
}