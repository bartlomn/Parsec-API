package com.webintelligence.parsec.core.navigation.enum
{

/***************************************************************************
 * 
 *   @author nowabart 
 *   @created 31 Jan 2012
 *   Enumerates possible destination scopes
 * 
 ***************************************************************************/

public class DestinationScope
{
    
    //--------------------------------------------------------------------------
    //
    //  Class constants
    //
    //--------------------------------------------------------------------------
    
    /**
     *  enumerates destination scope
     */
    public static const PRIMARY:DestinationScope = 
        new DestinationScope(PRIMARY);
    
    /**
     *  enumerates destination scope
     */
    public static const POD:DestinationScope = 
        new DestinationScope(POD);
    
    /**
     *  enumerates destination scope
     */
    public static const MODAL:DestinationScope = 
        new DestinationScope(MODAL);
    
    /**
     *  enumerates destination scope
     */
    public static const OVERLAY:DestinationScope = 
        new DestinationScope(OVERLAY);
    
    //--------------------------------------------------------------------------
    //
    //  Constructor
    //
    //--------------------------------------------------------------------------
    
    /**
     *  Constructor
     */
    public function DestinationScope(enumerates:DestinationScope)
    {
       // constructor used just for the signature
    }
    
    //--------------------------------------------------------------------------
    //
    //  Methods
    //
    //--------------------------------------------------------------------------
    
    //--------------------------------------
    //  toString
    //--------------------------------------
    /**
     *  @public
     */
    public function toString():String
    {
        switch(this)
        {
            case PRIMARY:
                return "PRIMARY";
                break;
            case POD:
                return "POD";
                break;
            case MODAL:
                return "MODAL";
                break;
            case OVERLAY:
                return "OVERLAY";
                break;
        }
        return null;
    }
}
}