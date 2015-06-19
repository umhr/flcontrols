package examples
{ 
	import examples.Star;
    import flash.display.Sprite;
    import flash.events.Event;
    import fl.data.DataProvider;
    import fl.controls.TileList;
    
    public class TileListExample extends Sprite
    {
        public function TileListExample() {
            var dp:DataProvider = new DataProvider();
            var totalEntries:uint = 42;
            var i:uint;
            for(i=0; i<totalEntries; i++) {
                dp.addItem( { label:"star"+i, source:examples.Star, scaleContent:false} );            
            }
            
            var myTileList:TileList = new TileList();
            myTileList.allowMultipleSelection = true;
            myTileList.columnWidth = 125;
            myTileList.rowHeight = 150;
            myTileList.dataProvider = dp;
            myTileList.setSize(300,300);
            myTileList.move(10,10);
            addChild(myTileList);
        }
    }
}