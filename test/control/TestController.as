package test.control
{
	import com.fboyle.patterns.control.FrontController;
	
	import test.events.TestEvent;
	
	public class TestController extends FrontController
	{
		public function TestController()
		{
			super();
			init();
		}
		
		private function init():void{
			
			addCommand(TestEvent.GET_GREETING ,TestCommand);
		}
	}
}