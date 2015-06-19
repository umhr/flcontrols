package examples
{
    import flash.display.Sprite;
    import flash.events.Event;
    import flash.text.TextField;
    import fl.controls.DataGrid;
    
    public class DataGridExample extends Sprite
    {
        private var sampleItem1:Object = { Name:"John Alpha",     Number:"555-123-0101", Email:"jalpha@fictitious.com" };
        private var sampleItem2:Object = { Name:"Mary Bravo",     Number:"555-372-3322", Email:"mbravo@fictitious.com" };
        private var sampleItem3:Object = { Name:"Trevor Gamma", Number:"555-485-1212", Email:"tgamma@fictitious.com" };
        private var sampleItem4:Object = { Name:"Susan Delta",     Number:"555-987-3434", Email:"sdelta@fictitious.com" };        
        
        private var dg:DataGrid;
        private var tf1:TextField;
        private var tf2:TextField;
        private var tf3:TextField;
        
        public function DataGridExample() {
            createDataGrid();
            createTextFields();
        }
        private function createDataGrid():void {
            dg = new DataGrid();
            dg.move(10,10);
            dg.setSize(400,125);
            dg.columns = ["Name","Number","Email"];
            dg.addItem(sampleItem1);
            dg.addItem(sampleItem2);
            dg.addItem(sampleItem3);
            dg.addItem(sampleItem4);
            
            dg.addEventListener("change",gridItemSelected);
            dg.minColumnWidth = dg.width / 3;
            addChild(dg);
        }
        private function createTextFields():void {
            tf1 = new TextField();
            tf2 = new TextField();
            tf3 = new TextField();
            tf1.x = 
            tf2.x = 
            tf3.x = 10;
            tf1.autoSize =
            tf2.autoSize =
            tf3.autoSize = "left";
            tf1.y = 150;
            tf2.y = 175;
            tf3.y = 200;
            
            addChild(tf1);
            addChild(tf2);
            addChild(tf3);            
        }
        private function gridItemSelected(e:Event):void {
            tf1.text = "Name: " + e.target.selectedItem.Name;
            tf2.text = "Number: " + e.target.selectedItem.Number;
            tf3.text = "Email: " + e.target.selectedItem.Email;            
        }
    }
}