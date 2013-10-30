package com.webintelligence.parsec.core.notification
{
import com.webintelligence.parsec.core.message.ui.INotificationPopUpMsg;

/***************************************************************************
 * 
 *   @author nowabart 
 *   @created 20 Oct 2011
 *   Notifies of a process progress
 * 
 ***************************************************************************/

public class ProgressNotificationRequest
    implements INotificationPopUpMsg
{
    
    //--------------------------------------------------------------------------
    //
    //  Constructor
    //
    //--------------------------------------------------------------------------
    
    /**
     *  Constructor
     */
    public function ProgressNotificationRequest(type:ProgressNotificationType)
    {
        _type = type || ProgressNotificationType.EMPTY;
        _modal = true;
    }
    
    //--------------------------------------------------------------------------
    //
    //  Properties
    //
    //--------------------------------------------------------------------------
    
    //--------------------------------------
    //  modal
    //--------------------------------------
    /**
     *  @private
     */
    private var _modal:Boolean;
    
    /**
     *  is the notification modal
     */
    public function get modal():Boolean
    {
        return _modal;
    }
    
    //--------------------------------------
    //  type
    //--------------------------------------
    /**
     *  @private
     */
    private var _type:ProgressNotificationType;
    
    /**
     *  progress notification type
     */
    public function get type():ProgressNotificationType
    {
        return _type;
    }
    
    //--------------------------------------------------------------------------
    //
    //  Methods
    //
    //--------------------------------------------------------------------------
    
    //--------------------------------------
    //  createFor
    //--------------------------------------
    /**
     *  helper method creating new request for specified notification type
     */
    public static function createFor(type:ProgressNotificationType = null):ProgressNotificationRequest
    {
        return new ProgressNotificationRequest(type);
    }
    
}
}