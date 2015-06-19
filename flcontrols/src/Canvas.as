package 
{
	
	import examples.Star;
	import fl.controls.Button;
	import fl.controls.CheckBox;
	import fl.controls.ColorPicker;
	import fl.controls.ComboBox;
	import fl.controls.DataGrid;
	import fl.controls.Label;
	import fl.controls.List;
	import fl.controls.NumericStepper;
	import fl.controls.ProgressBar;
	import fl.controls.ProgressBarMode;
	import fl.controls.RadioButton;
	import fl.controls.RadioButtonGroup;
	import fl.controls.Slider;
	import fl.controls.TextArea;
	import fl.controls.TextInput;
	import fl.controls.TileList;
	import fl.data.DataProvider;
	import flash.display.Sprite;
	import flash.events.Event;
	/**
	 * http://www.flashloaded.com/userguides/ezform/formelements_as3.html
	 * ...
	 * @author umhr
	 */
	public class Canvas extends Sprite 
	{
		
		public function Canvas() 
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
			
			addButton(0, 0);
			addCheckBox(0, 30);
			addColorPicker(0,60);
			addCombBox(0, 90);
			addList(0, 120);
			addNumericStepper(0,190);
			addProgressBar(0,220);
			addRadioButton(0, 250);
			addSlider(0, 280);
			addTextArea(330,0);
			addTextInput(330, 100);
			
			addTileList(330, 200);
			addDataGrid(0, 310);
		}
		
		private function addButton(x:int, y:int):void {
			var label:Label = new Label();
			label.text = "Button:";
			label.x = x;
			label.y = y;
			addChild(label);
			var button:Button = new Button();
			button.x = x+100;
			button.y = y;
			button.label = "Button";
			addChild(button);
		}
		
		private function addCheckBox(x:int, y:int):void {
			var label:Label = new Label();
			label.text = "CheckBox:";
			label.x = x;
			label.y = y;
			addChild(label);
			
			var cb1:CheckBox = new CheckBox();
			cb1.label = "デザイン";
			cb1.x = x + 100;
			cb1.y = y;
			addChild(cb1);
			var cb2:CheckBox = new CheckBox();
			cb2.label = "アニメーション";
			cb2.x = x + 180;
			cb2.y = y;
			addChild(cb2);
		}
		
		private function addColorPicker(x:int, y:int):void {
			var label:Label = new Label();
			label.text = "ColorPicker:";
			label.x = x;
			label.y = y;
			addChild(label);
			
			var colorPicker:ColorPicker = new ColorPicker();
			colorPicker.x = x + 100;
			colorPicker.y = y;
			addChild(colorPicker);
		}
		
		private function addCombBox(x:int, y:int):void {
			var label:Label = new Label();
			label.text = "ComboBox:";
			label.x = x;
			label.y = y;
			addChild(label);
			
			var cb:ComboBox = new ComboBox();
			cb.addItem( { label:"18-25" } );
			cb.addItem( { label:"26-35" } );
			cb.addItem( { label:"36-45" } );
			cb.addItem( { label:"46-55" } );
			cb.addItem( { label:"56-" } );
			cb.x = x + 100;
			cb.y = y;
			addChild(cb);
		}
		
		private function addList(x:int, y:int):void {
			var label:Label = new Label();
			label.text = "List:";
			label.x = x;
			label.y = y;
			addChild(label);
			
			var list:List = new List();
			list.addItem( { label:"Flash" } );
			list.addItem( { label:"Dreamweaver" } );
			list.addItem( { label:"Frontpage" } );
			list.addItem( { label:"Home Page Builder" } );
			list.rowCount = 3;
			list.width = 140;
			list.x = x + 100;
			list.y = y;
			addChild(list);
			
		}
		
		private function addNumericStepper(x:int, y:int):void {
			var label:Label = new Label();
			label.text = "NumericStepper:";
			label.x = x;
			label.y = y;
			addChild(label);
			
			var numericStepper:NumericStepper = new NumericStepper();
			numericStepper.x = x + 100;
			numericStepper.y = y;
			addChild(numericStepper);
		}
		
		private function addProgressBar(x:int, y:int):void {
			var label:Label = new Label();
			label.text = "ProgressBar:";
			label.x = x;
			label.y = y;
			addChild(label);
			
			var progressBar:ProgressBar = new ProgressBar();
			progressBar.x = x + 100;
			progressBar.y = y;
			progressBar.mode = ProgressBarMode.MANUAL;
			progressBar.width = 200;
			progressBar.maximum = 1;
			progressBar.value = 0.5;
			addChild(progressBar);
		}
		
		private function addRadioButton(x:int, y:int):void {
			var label:Label = new Label();
			label.text = "RadioButton:";
			label.x = x;
			label.y = y;
			addChild(label);
			
			var rbGrp:RadioButtonGroup = new RadioButtonGroup("gender");
			var rb0:RadioButton = new RadioButton();
			rb0.label = "男性";
			rb0.x = x+100;
			rb0.y = y;
			rb0.group = rbGrp;
			addChild(rb0);
			var rb1:RadioButton = new RadioButton();
			rb1.label = "女性";
			rb1.x = x+180;
			rb1.y = y;
			rb1.group = rbGrp;
			addChild(rb1);
		}
		
		private function addSlider(x:int, y:int):void {
			var label:Label = new Label();
			label.text = "Slider:";
			label.x = x;
			label.y = y;
			addChild(label);
			
			var slider:Slider = new Slider();
			slider.x = x + 100;
			slider.y = y;
			slider.width = 200;
			addChild(slider);
		}
		
		private function addTextArea(x:int, y:int):void {
			var label:Label = new Label();
			label.text = "TextArea:";
			label.x = x;
			label.y = y;
			addChild(label);
			
			var textArea:TextArea = new TextArea();
			textArea.x = x + 70;
			textArea.y = y;
			textArea.width = 200;
			textArea.height = 90;
			textArea.text = "TextArea コンポーネントは複数行のテキストフィールドで、境界線とオプションのスクロールバーが含まれます。TextArea コンポーネントは、Adobe Flash Player の HTML レンダリング機能をサポートします。\nUIComponent クラスは、インタラクティブおよび非インタラクティブのすべてのビジュアルコンポーネントの基本クラスです。インタラクティブコンポーネントとは、キーボード操作やマウス操作などのユーザー入力を受け取るコンポーネントです。非インタラクティブコンポーネントはデータの表示に使用され、ユーザーの操作に反応することはありません。非インタラクティブコンポーネントの一例として、ProgressBar コンポーネントおよび UILoader コンポーネントがあります。\nインタラクティブコンポーネントにフォーカスを移動する際は、Tab キーや矢印キーを使用できます。インタラクティブコンポーネントは、マウスデバイスやキーボードデバイスを使った入力など、低レベルのイベントを受け取ることができます。マウスやキーボードの入力を受け付けないように、インタラクティブコンポーネントを無効化することもできます。";
			addChild(textArea);
		}
		
		private function addTextInput(x:int, y:int):void {
			var label:Label = new Label();
			label.text = "TextInput:";
			label.x = x;
			label.y = y;
			addChild(label);
			
			var it2:TextInput = new TextInput();
			it2.text = "TextInput コンポーネントは、ネイティブの ActionScript TextField オブジェクトを含む単一行のテキストコンポーネントです。\nアプリケーション内で TextInput コンポーネントを有効または無効にすることができます。TextInput コンポーネントが有効な場合は、マウスまたはキーボードからの入力を受け取れません。有効な TextInput コンポーネントは、ActionScript TextField オブジェクトのように、フォーカス、選択、およびナビゲーションを実装します。\nTextInput コンポーネントをカスタマイズするには、スタイルを使用すると、例えばコンポーネントが無効なときにその外観を変更できます。このコンポーネントに適用できる他のカスタマイズとして、HTML による書式設定、入力テキストを非表示にするパスワードフィールドの設定などがあります。";
			it2.width = 200;
			it2.height = 90;
			it2.x = x + 70;
			it2.y = y;
			it2.textField.wordWrap = it2.textField.multiline = true;
			addChild(it2);
			
		}
		
		private function addTileList(x:int, y:int):void {
			var label:Label = new Label();
			label.text = "TileList:";
			label.x = x;
			label.y = y;
			addChild(label);
			
			var dp:DataProvider = new DataProvider();
            var totalEntries:uint = 12;
            var i:uint;
            for(i=0; i<totalEntries; i++) {
                dp.addItem( { label:"star"+i, source:Star, scaleContent:false} );            
            }
            
            var myTileList:TileList = new TileList();
            myTileList.allowMultipleSelection = true;
            myTileList.columnWidth = 100;
            myTileList.rowHeight = 85;
            myTileList.dataProvider = dp;
            myTileList.setSize(200,100);
            myTileList.move(x + 70, y);
            addChild(myTileList);
			
		}
		
		private function addDataGrid(x:int, y:int):void {
			var label:Label = new Label();
			label.text = "DataGrid:";
			label.x = x;
			label.y = y;
			addChild(label);
			
			var dg:DataGrid = new DataGrid();
            dg.move(x+100, y);
            dg.setSize(500,90);
            dg.columns = ["名前","番号","Email"];
            dg.addItem({ "名前":"山田　オオカミ",     "番号":"555-123-0101", Email:"jalpha@fictitious.com" });
            dg.addItem({ "名前":"田中　ひつじ",     "番号":"555-372-3322", Email:"mbravo@fictitious.com" });
            dg.addItem({ "名前":"中村　ことり", "番号":"555-485-1212", Email:"tgamma@fictitious.com" });
            dg.addItem({ "名前":"村山　こぶた",     "番号":"555-987-3434", Email:"sdelta@fictitious.com" });
            dg.minColumnWidth = dg.width / 3;
            addChild(dg);
			
		}
		
		
	}
	
}