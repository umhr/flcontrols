package examples
{
    import flash.display.Sprite;
    import flash.events.MouseEvent;
    import fl.controls.ProgressBar;
    import fl.controls.ProgressBarMode;
    import fl.controls.Button;
    
    public class ProgressBarExample extends Sprite
    {
        private var j:uint;
        private var pb:ProgressBar;
        private var fakeProgressCount:uint;
        
        public function ProgressBarExample() {
            setupProgressBar();    
            setupButton();
        }
        private function advancePreloader(e:MouseEvent):void {
            fakeProgressCount = fakeProgressCount == 100 ? 0 : fakeProgressCount + 10;
            pb.setProgress(fakeProgressCount, 100);
        }
        private function setupButton():void {
            var b:Button = new Button();
            b.move(10,30);
            b.setSize(120,20);
            b.label = "Increment Progress";
            b.addEventListener(MouseEvent.CLICK,advancePreloader);
            addChild(b);
        }
        private function setupProgressBar():void {
            fakeProgressCount = 0;
            pb = new ProgressBar();
            pb.mode = ProgressBarMode.MANUAL;
            pb.move(10,10);
            addChild(pb);
        }
    }
}