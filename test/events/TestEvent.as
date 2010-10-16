package test.events
{
	import com.fboyle.patterns.control.CairngormEvent;
	
	public class TestEvent extends CairngormEvent
	{
		public static var GET_GREETING:String = "get_greeting";
		
		public function TestEvent()
		{
			super(GET_GREETING);
		}
	}
}