package test.control
{
	import com.fboyle.patterns.command.cairngorm.ICommand;
	import com.fboyle.patterns.control.CairngormEvent;
	
	import test.model.ModelLocator;
	import test.model.TestModel;
	
	public class TestCommand implements ICommand
	{
		public function TestCommand()
		{
		}
		
		public function execute(event:CairngormEvent):void{
			
			var testModel:TestModel = ModelLocator.getInstance().testModel;
			testModel.sayHello();
		}
	}
}