package com.fboyle.patterns.observer 
{
	
	/**
	 * Subject Interface in observer pattern
	 * @author ...
	 */
	public interface ISubject 
	{
		function subscribeObserver(o:IObserver):Boolean;
		function unsubscribeObserver(o:IObserver):Boolean;
		function notifyObservers(infoObj:Object):void;
	}
	
}