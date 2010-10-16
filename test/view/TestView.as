package test.view
{
	import com.fboyle.patterns.observer.IObserver;
	import com.fboyle.patterns.observer.Subject;
	
	import flash.display.Sprite;
	import flash.text.TextField;
	
	import test.model.Messages;
	import test.model.TestModel;
	
	public class TestView extends Sprite implements IObserver{
		
		private var label:TextField;
		
		public function TestView(){
			createUI();
		}
		
		private function createUI():void{
			
			label = new TextField();
			label.border = true;
			label.width = 250;
			addChild(label);
		}
		
		/* INTERFACE com.fboyle.patterns.observer.IObserver */
		
		public function update(o:Subject, infoObj:Object):void{
			
			if (infoObj.datatype == Messages.HELLO_FROM_MODEL) {
				var message:String = TestModel(o).getMessage();
				label.text = message;
			}
		}
		
	}
}