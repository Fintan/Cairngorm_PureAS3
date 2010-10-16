package com.fboyle.patterns.observer 
{
	
	/**
	 * Observer Interface in observer pattern based on Moock's AS2 implementation
	 * @author ...
	 */
	public interface IObserver 
	{
		
		/**
		* Invoked automatically by an observed object when it changes.
		* 
		* @param   o   The observed object (an instance of Observable). An example of dependency injection.
		* @param   infoObj   An arbitrary data object sent by 
		*                    the observed object.
		*/
		function update(o:Subject, infoObj:Object):void;
	}
	
}