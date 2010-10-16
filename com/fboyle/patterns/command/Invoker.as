package com.fboyle.patterns.command 
{
	
	/**
	 * ...
	 * @author ...
	 */
	public class Invoker 
	{
		private var currentCommand:ICommand;
		
		public function setCommand(c:ICommand):void 
		{
			this.currentCommand = c;
		}
		
		public function executeCommand():void 
		{
			currentCommand.execute();
		}
	}
	
}