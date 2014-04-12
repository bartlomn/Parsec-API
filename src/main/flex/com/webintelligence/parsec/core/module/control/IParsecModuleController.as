/**
 * User: Bart
 * Date: 12/04/2014
 * Time: 18:01
 * Description:
 */

package com.webintelligence.parsec.core.module.control
{

[Event(name="moduleDestinationsChanged", type="com.webintelligence.parsec.core.module.event.ModuleControllerEvent")]

public interface IParsecModuleController
{

   [Bindable(event="moduleDestinationsChanged")]
   /**
    *  @return List of destinations that the module exposes
    */
   function get moduleDestinations():Array;
   /**
    *  @private
    */
   function set moduleDestinations( value:Array ):void;

}
}
