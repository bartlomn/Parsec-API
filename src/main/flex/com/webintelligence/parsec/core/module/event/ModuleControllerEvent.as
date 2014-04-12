/**
 * User: Bart
 * Date: 12/04/2014
 * Time: 18:02
 * Description:
 */

package com.webintelligence.parsec.core.module.event
{
import flash.events.Event;

public class ModuleControllerEvent extends Event
{

   /**
    *  @private
    */
   public static const MODULE_DESTINATIONS_CHANGED:String = "moduleDestinationsChanged";

   /**
    *  Constructor
    */
   public function ModuleControllerEvent( type : String )
   {
      super( type, false, false );
   }
}
}
