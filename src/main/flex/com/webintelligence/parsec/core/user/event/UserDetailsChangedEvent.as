package com.webintelligence.parsec.core.user.event
{
import flash.events.Event;


/***************************************************************************
 * 
 *   @author nowabart 
 *   @created 6 Dec 2011
 *   Notifies of a change in user details
 * 
 ***************************************************************************/

public class UserDetailsChangedEvent 
    extends Event
{
    
    //--------------------------------------------------------------------------
    //
    //  Class constants
    //
    //--------------------------------------------------------------------------
    
    /**
     *  event type enum
     */
    public static const USER_DETAILS_CHANGED:String = "userDetailsChanged";
    
    //--------------------------------------------------------------------------
    //
    //  Constructor
    //
    //--------------------------------------------------------------------------
    
    /**
     *  Constructor
     */
    public function UserDetailsChangedEvent()
    {
        super(USER_DETAILS_CHANGED);
    }
    
    //--------------------------------------------------------------------------
    //
    //  Methods
    //
    //--------------------------------------------------------------------------
    
    //--------------------------------------
    //  clone
    //--------------------------------------
    /**
     *  @inheritDoc
     */
    override public function clone():Event
    {
        return new UserDetailsChangedEvent();
    }
}
}