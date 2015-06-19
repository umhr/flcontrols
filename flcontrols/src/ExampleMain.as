package 
{
	
	import examples.ButtonExample;
	import examples.CheckBoxExample;
	import examples.ColorPickerExample;
	import examples.ComboBoxExample;
	import examples.DataGridExample;
	import examples.LabelExample;
	import examples.ListExample;
	import examples.NumericStepperExample;
	import examples.ProgressBarExample;
	import examples.RadioButtonExample;
	import examples.SliderExample;
	import examples.TextAreaExample;
	import examples.TextInputExample;
	import examples.TileListExample;
	import fl.controls.List;
	import flash.display.Sprite;
	import flash.events.Event;
	/**
	 * ...
	 * QuickBuild:ctrl+F8
	 * @mxmlc -output bin/examples.swf -compiler.library-path lib -default-size 600 400
	 * //@mxmlc -output bin/examples.swf -compiler.library-path lib -default-size 600 400 -debug
	 * @author umhr
	 */
	public class ExampleMain extends Sprite 
	{
		private var _sp:Sprite = new Sprite();
		public function ExampleMain() 
		{
			init();
		}
		private function init():void 
		{
			if (stage) onInit();
			else addEventListener(Event.ADDED_TO_STAGE, onInit);
		}

		private function onInit(event:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, onInit);
			// entry point
			
			addList(0, 0);
			
		}
		private function addList(x:int, y:int):void {
			_sp.x = 150;
			addChild(_sp);
			
			var list:List = new List();
			list.addItem( { label:"Clear" } );
			list.addItem( { label:"ButtonExample" } );
			list.addItem( { label:"CheckBoxExample" } );
			list.addItem( { label:"ColorPickerExample" } );
			list.addItem( { label:"ComboBoxExample" } );
			list.addItem( { label:"DataGridExample" } );
			list.addItem( { label:"LabelExample" } );
			list.addItem( { label:"ListExample" } );
			list.addItem( { label:"NumericStepperExample" } );
			list.addItem( { label:"ProgressBarExample" } );
			list.addItem( { label:"RadioButtonExample" } );
			list.addItem( { label:"SliderExample" } );
			list.addItem( { label:"TextAreaExample" } );
			list.addItem( { label:"TileListExample" } );
			list.addItem( { label:"TextInputExample" } );
			//list.rowCount = 3;
			list.height = stage.stageHeight;
			list.width = 140;
			list.addEventListener(Event.CHANGE, updateLists);
			list.x = x;
			list.y = y;
			addChild(list);
			
		}
		private function updateLists(e:Event):void {
			var list:List = e.target as List;
			var label:String = list.selectedItem.label;
			
			_sp.removeChildren();
			
			switch (label) 
			{
				case "ButtonExample":
					_sp.addChild(new ButtonExample());
				break;
				case "CheckBoxExample":
					_sp.addChild(new CheckBoxExample());
				break;
				case "ColorPickerExample":
					_sp.addChild(new ColorPickerExample());
				break;
				case "ComboBoxExample":
					_sp.addChild(new ComboBoxExample());
				break;
				case "DataGridExample":
					_sp.addChild(new DataGridExample());
				break;
				case "LabelExample":
					_sp.addChild(new LabelExample());
				break;
				case "ListExample":
					_sp.addChild(new ListExample());
				break;
				case "NumericStepperExample":
					_sp.addChild(new NumericStepperExample());
				break;
				case "ProgressBarExample":
					_sp.addChild(new ProgressBarExample());
				break;
				case "RadioButtonExample":
					_sp.addChild(new RadioButtonExample());
				break;
				case "SliderExample":
					_sp.addChild(new SliderExample());
				break;
				case "TextAreaExample":
					_sp.addChild(new TextAreaExample());
				break;
				case "TileListExample":
					_sp.addChild(new TileListExample());
				break;
				case "TextInputExample":
					_sp.addChild(new TextInputExample());
				break;
				default:
			}
			
			
		}
	}
	
}