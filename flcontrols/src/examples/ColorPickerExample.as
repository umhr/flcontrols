package examples 
{
    import flash.display.Sprite;
    import flash.display.Shape;
    import flash.display.BlendMode;
    import flash.events.*;
    import fl.controls.ColorPicker;
    import fl.controls.ComboBox;
    
    public class ColorPickerExample extends Sprite
    {
        private var circle1:Shape;
        private var circle2:Shape;
        private var circle3:Shape;
		private var cp1:ColorPicker = new ColorPicker();
		private var cp2:ColorPicker = new ColorPicker();
		private var cp3:ColorPicker = new ColorPicker();
		private var cb:ComboBox  = new ComboBox ();
        
        public function ColorPickerExample():void {
            setupCircles();
            setupComboBox();
			
			cp1.x = 0;
			cp2.x = 100;
			cp3.x = 200;
			cb.y = 200;
            addChild(cp1);
            addChild(cp2);
            addChild(cp3);
            addChild(cb);
            cp1.addEventListener(Event.RENDER,colorChange);
            cp2.addEventListener(Event.RENDER,colorChange);
            cp3.addEventListener(Event.RENDER,colorChange);
        }
        private function colorChange(e:Event):void {
            var cp:ColorPicker = e.target as ColorPicker
            switch (cp) {
                case cp1:
                    colorCircle(circle1,cp.selectedColor);
                    break;
                case cp2:
                    colorCircle(circle2,cp.selectedColor);
                    break;
                case cp3:
                    colorCircle(circle3,cp.selectedColor);
                    break;
                default:
                    break;
            }
        }
        private function setupComboBox():void {
            cb.setSize(150,24);
            cb.addItem( { label: "Select BlendMode:",     data:BlendMode.NORMAL } );
            cb.addItem( { label: "ADD",                 data:BlendMode.ADD } );
            cb.addItem( { label: "ALPHA",                 data:BlendMode.ALPHA } );
            cb.addItem( { label: "DARKEN",                 data:BlendMode.DARKEN } );
            cb.addItem( { label: "DIFFERENCE",             data:BlendMode.DIFFERENCE } );
            cb.addItem( { label: "ERASE",                 data:BlendMode.ERASE } );
            cb.addItem( { label: "HARDLIGHT",             data:BlendMode.HARDLIGHT } );
            cb.addItem( { label: "INVERT",                 data:BlendMode.INVERT } );
            cb.addItem( { label: "LAYER",                 data:BlendMode.LAYER } );
            cb.addItem( { label: "LIGHTEN",             data:BlendMode.LIGHTEN } );
            cb.addItem( { label: "MULTIPLY",             data:BlendMode.MULTIPLY } );
            cb.addItem( { label: "OVERLAY",             data:BlendMode.OVERLAY } );
            cb.addItem( { label: "SCREEN",                 data:BlendMode.SCREEN } );
            cb.addItem( { label: "SUBTRACT",             data:BlendMode.SUBTRACT } );
            cb.addEventListener(Event.CHANGE,blendChange);
        }
        private function blendChange(e:Event):void {
            var newBlend:String = cb.selectedItem.data;
            if(newBlend) {
                circle1.blendMode = newBlend;
                circle2.blendMode = newBlend;
                circle3.blendMode = newBlend;
            }
        }
        private function setupCircles():void {
            circle1 = new Shape();
            circle2 = new Shape();
            circle3 = new Shape();
            
            circle1.x = 127;
            circle1.y = 64;
            circle2.x = 87;
            circle2.y = 130;
            circle3.x = 164;
            circle3.y = 130;
            
            colorCircle(circle1,0xFF0000);
            colorCircle(circle2,0xFF0000);
            colorCircle(circle3,0xFF0000);
            
            addChild(circle1);
            addChild(circle2);
            addChild(circle3);
        }
        private function colorCircle(circle:Shape,newColor:uint):void {
            circle.graphics.clear();
            circle.graphics.beginFill(newColor,1);
            circle.graphics.drawCircle(0,0,50);
            circle.graphics.endFill();    
        }
    }
}