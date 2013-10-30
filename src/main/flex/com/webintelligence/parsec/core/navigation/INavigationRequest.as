package com.webintelligence.parsec.core.navigation
{
import com.webintelligence.parsec.core.navigation.destination.Destination;

/***************************************************************************
 * 
 *   @author nowabart 
 *   @created 27 Jan 2012
 *   Common API of all navigation request types
 * 
 ***************************************************************************/

public interface INavigationRequest
{
    
    //--------------------------------------------------------------------------
    //
    //  Properties
    //
    //--------------------------------------------------------------------------
    
    //--------------------------------------
    //  destination
    //--------------------------------------
    /**
     *  returns destination for this particular request
     */
    function get destination():Destination;

    //--------------------------------------
    //  closeIfOpen
    //--------------------------------------
    /**
     *  @public
     *  flag to close / remove the destination of present on screen
     */
    function get closeIfOpen():Boolean;
    
}
}