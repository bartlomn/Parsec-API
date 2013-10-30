package com.webintelligence.parsec.core.navigation
{
import com.webintelligence.parsec.core.navigation.destination.Destination;

import org.spicefactory.lib.errors.IllegalArgumentError;


/***************************************************************************
 * 
 *   @author nowabart 
 *   @created 27 Jan 2012
 *   Message triggering navigation to a modal / popup destination
 * 
 ***************************************************************************/

public class ModalNavigationRequest 
    extends NavigationRequest
{
    
    //--------------------------------------------------------------------------
    //
    //  Constructor
    //
    //--------------------------------------------------------------------------
    
    /**
     *  Constructor
     */
    public function ModalNavigationRequest(destination:Destination = null, closeIfOpen:Boolean = true)
    {
        super(destination);
        _closeIfOpen = closeIfOpen;
    }

    //--------------------------------------------------------------------------
    //
    //  Methods
    //
    //--------------------------------------------------------------------------
    
    //--------------------------------------
    //  createRequest
    //--------------------------------------
    /**
     *  helper method creating new navigation request for specified destination
     */
    public static function createFor(destination:Destination, closeIfOpen:Boolean = true):INavigationRequest
    {
        if(!destination)
            throw new IllegalArgumentError("Destination is not specified!");
        return new ModalNavigationRequest(destination, closeIfOpen);
    }
    
}
}