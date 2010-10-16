package com.fboyle.patterns.observer 
{
	import com.fboyle.patterns.observer.IObserver;
	
	/**
	 * ...
	 * @author ...
	 */
	public class Observer implements IObserver 
	{
		
		public function Observer() 
		{
			trace("Concrete Observer");
		}
		
		/* INTERFACE com.fboyle.patterns.observer.IObserver */
		
		public function update(o:ISubject, infoObj:Object)
		{
			
		}
		
	}
	
}