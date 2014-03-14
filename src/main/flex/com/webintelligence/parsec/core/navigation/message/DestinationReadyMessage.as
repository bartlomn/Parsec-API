package com.webintelligence.parsec.core.navigation.message
{
import com.webintelligence.parsec.core.navigation.destination.Destination;

/***************************************************************************
 * 
 *   @author nowabart 
 *   @created 7 Dec 2011
 *   Used to indicate ready state of the navigation destination
 * 
 ***************************************************************************/
 
public class DestinationReadyMessage
{
    
    //--------------------------------------------------------------------------
    //
    //  Constructor
    //
    //--------------------------------------------------------------------------
    
    /**
     *  Constructor
     */
    public function DestinationReadyMessage(destination:Destination)
    {
        this.destination = destination;
    }
    
    //--------------------------------------------------------------------------
    //
    //  Properties
    //
    //--------------------------------------------------------------------------
    
    //--------------------------------------
    //  destination
    //--------------------------------------
   [Selector]
    /**
     *  target destination for this message
     */
    public var destination:Destination;
    
}
}