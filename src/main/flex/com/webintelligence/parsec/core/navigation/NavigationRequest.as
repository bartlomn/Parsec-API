package com.webintelligence.parsec.core.navigation
{
import com.webintelligence.parsec.core.navigation.destination.Destination;

import org.spicefactory.lib.errors.IllegalArgumentError;

/***************************************************************************
 * 
 *   @author nowabart 
 *   @created 1 Dec 2011
 *   Message triggering navigation to a destination
 * 
 ***************************************************************************/

public class NavigationRequest
    implements INavigationRequest
{
    
    //--------------------------------------------------------------------------
    //
    //  Constructor
    //
    //--------------------------------------------------------------------------
    
    /**
     *  Constructor
     */
    public function NavigationRequest(destination:Destination = null)
    {
        _destination = destination;
    }
    
    //--------------------------------------------------------------------------
    //
    //  Properties
    //
    //--------------------------------------------------------------------------
    
    //--------------------------------------
    //  destination
    //--------------------------------------
    /**
     *  @private
     */
    private var _destination:Destination;
    
    /**
     *  destiantion for this particular request
     */
    public function get destination():Destination
    {
        return _destination;
    }
    
    //--------------------------------------
    //  closeIfOpen
    //--------------------------------------
    /**
     *  @private
     */
    protected var _closeIfOpen:Boolean;
    
    /**
     *  @public
     *  flag to close / remove the destination of present on screen
     */
    public function get closeIfOpen():Boolean
    {
        return _closeIfOpen;
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
    public static function createFor(destination:Destination):INavigationRequest
    {
        if(!destination)
            throw new IllegalArgumentError("Destination is not specified!");
        return new NavigationRequest(destination);
    }
    
}
}