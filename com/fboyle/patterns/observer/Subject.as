package com.fboyle.patterns.observer 
{
	
	/**
	 * Subject (Observable) in observer pattern based on Moock's AS2 implementation
	 * @author ...
	 */
	public class Subject implements ISubject 
	{
		// A flag indicating whether this object has changed.
		private var changed:Boolean = false;
		// A list of observers.
		private var observers:Array;
		
		public function Subject() 
		{
			trace("Concrete Subject");
			observers = new Array();
		}
		
		/* INTERFACE com.fboyle.patterns.observer.ISubject */
		
		/**
		* Adds an observer to the list of observers.
		* @param   o   The observer to be added.
		*/
		public function subscribeObserver(o:IObserver):Boolean {
			// Can't add a null observer.
			if (o == null) {
			  return false;
			}

			// Don't add an observer more than once.
			for (var i:Number = 0; i < observers.length; i++) {
			  if (observers[i] == o) {
				// The observer is already observing, so quit.
				return false;
			  }
			}

			// Put the observer into the list.
			observers.push(o);
			return true;
		}
		
		/**
		* Removes an observer from the list of observers.
		*
		* @param   o   The observer to remove.
		*/
		public function unsubscribeObserver(o:IObserver):Boolean {
			// Find and remove the observer.
			var len:Number = observers.length;
			for (var i:Number = 0; i < len; i++) {
			  if (observers[i] == o) {
				observers.splice(i, 1);
				return true;
			  }
			}
			return false;
		}
		
		
		/**
		* Tell all observers that the subject has changed.
		*
		* @param   infoObj   An object containing arbitrary data 
		*                    to pass to observers.
		*/
		public function notifyObservers(infoObj:Object):void {
			
			// If the object hasn't changed, don't bother notifying observers.
			if (!changed) {
			  return;
			}

			// Make a copy of the observers array. We do this
			// so that we can be sure the list won't change while
			// we're processing it.
			var observersSnapshot:Array = observers.slice(0);

			// This change has been processed, so unset the "changed" flag.
			clearChanged();

			// Invoke update() on all observers.
			for (var i:Number = observersSnapshot.length-1; i >= 0; i--) {
			  observersSnapshot[i].update(this, infoObj);
			}
		}
		
		//----------------------------------
		
		/**
		* Removes all observers from the observer list.
		*/
		public function clearObservers():void {
			observers = new Array();
		}

		/**
		* Indicates that the subject has changed.
		*/
		protected function setChanged():void {
			changed = true;
		}

		/**
		* Indicates that the subject has either not changed or
		* has notified its observers of the most recent change.
		*/
		private function clearChanged():void {
			changed = false;
		}

		/**
		* Checks if the subject has changed.
		*
		* @return   true if the subject has changed, as determined by setChanged().
		*/
		protected function hasChanged():Boolean {
			return changed;
		}

		/**
		* Returns the number of observers in the observer list.
		*
		* @return   An integer: the number of observers for this subject.
		*/
		public function countObservers():Number {
			return observers.length;
		}
		
		/**
		 * Notifies Observers of change to subject
		 * @param	type  A notification type for observers to check
		 */
		protected function notify(type:String):void{
			var tmpOb:Object = { datatype:type, model:this };
			setChanged();
			notifyObservers(tmpOb);
		}
		
	}
	
}