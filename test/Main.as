package test
{
	import flash.display.Sprite;
	import flash.events.Event;
	
	import test.control.TestController;
	import test.events.TestEvent;
	import test.model.ModelLocator;
	import test.model.TestModel;
	import test.view.TestView;
	
	/*
	 *  Just a sample app using the Framework
	 *
	 */
	public class Main extends Sprite
	{
		private var testView:TestView;
		
		public function Main(){
			
			this.addEventListener(Event.ADDED_TO_STAGE, onAdded);
		}
		
		private function onAdded(e:Event):void{
			
			createUI();
			initMVC();
			
			this.removeEventListener(Event.ADDED_TO_STAGE,onAdded);
		}
		
		private function createUI():void{

			testView = new TestView();
			addChild(testView);
		}
		
		private function initMVC():void{
			
			var modelLocate:ModelLocator = ModelLocator.getInstance();
			
			modelLocate.testModel.subscribeObserver(testView);
			
			var control:TestController = new TestController();
			
			var testEvent:TestEvent = new TestEvent();
			testEvent.dispatch();
			
		}
	}
}