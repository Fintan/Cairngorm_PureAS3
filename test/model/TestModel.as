package test.model
{
	import com.fboyle.patterns.observer.Subject;
	
	public class TestModel extends Subject
	{
		public function TestModel()
		{
			super();
			
		}
		
		public function getMessage():String{
			return "Hello World!";
		}
		
		public function sayHello():void{
			
			notify(Messages.HELLO_FROM_MODEL);
		}
	}
}