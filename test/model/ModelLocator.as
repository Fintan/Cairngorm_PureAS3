package test.model
{
	public class ModelLocator
	{
		private static var instance:ModelLocator;
		
		public var testModel:TestModel;
		
		public function ModelLocator(onlyOne:Highlander){
			
			testModel = new TestModel();
		}
		
		public static function getInstance():ModelLocator{
			
			if(!instance)instance = new ModelLocator(new Highlander());
			
			return instance;
			
		}
	}
}
class Highlander{}