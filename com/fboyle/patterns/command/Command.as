package com.fboyle.patterns.command 
{
	
	/**
	 * ...
	 * @author ...
	 */
	public class Command implements ICommand 
	{
		private var receiver:IReceiver;
		
		public function Command(rec:IReceiver):void 
		{
			this.receiver = rec;
		}
		
		public function execute():void 
		{
			receiver.action();
		}
	}
	
}