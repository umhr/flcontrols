package examples 
{
    import flash.display.Sprite;
    import flash.events.Event;
    import flash.events.TextEvent;
    import flash.text.TextField;
    import fl.events.ComponentEvent;
    import fl.controls.TextArea;
    
    public class TextAreaExample extends Sprite
    {
        private var testString:String         = 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Vivamus quis nisl vel tortor nonummy vulputate. Quisque sit amet eros sed purus euismod tempor. Morbi tempor. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Curabitur diam. Suspendisse at purus in ipsum volutpat viverra. Nulla pellentesque libero id libero. Proin pretium suscipit lectus. Donec in sapien vel nulla egestas semper. Mauris massa. In aliquet sem ac libero. In eget orci. Sed feugiat. Vestibulum vel felis in lectus imperdiet scelerisque. Vestibulum vestibulum neque at est. Etiam purus quam, laoreet quis, accumsan sed, porttitor ut, erat. Proin volutpat. In facilisis dolor gravida felis. Curabitur nisi lacus, euismod non, pharetra et, mollis a, tellus. Donec lectus orci, viverra at, luctus ac, sodales id, quam. Phasellus faucibus lacus ut est. Curabitur id diam eu massa bibendum lobortis. Vivamus quis elit. Donec mi justo, dictum vitae, cursus sit amet, lacinia consectetuer, d ut, vulputate sed, molestie et, arcu. Nullam mi.';
        private var testStringHTML:String     = 'This is <font color="#FF0000">HTML text</font> in a <b>TextArea control</b>. Use the <u>htmlText property</u> of the <font color="#008800">TextArea control</font> to include basic HTML markup in your text.';
        private var ta1:TextArea = new TextArea();
        private var ta2:TextArea = new TextArea();
        public function TextAreaExample() {
			
            ta1.text = testString;
			ta1.width = 200;
			ta1.height = 100;
			ta1.x = 10;
			ta1.y = 10;
            ta2.htmlText = testStringHTML;
			ta2.width = 200;
			ta2.height = 100;
			ta2.x = 10;
			ta2.y = 200;
			addChild(ta1);
			addChild(ta2);
            configureListeners(ta1);
            configureListeners(ta2);
        }
        private function configureListeners(ta:TextArea):void {
            ta.addEventListener(TextEvent.TEXT_INPUT,announceEvent);
            ta.addEventListener(Event.CHANGE,announceEvent);
            ta.addEventListener(ComponentEvent.ENTER,announceEvent);
            ta.addEventListener(Event.SCROLL,announceEvent);            
        }
        private function announceEvent(e:Event):void {
            trace(e.toString());    
        }
    }
}