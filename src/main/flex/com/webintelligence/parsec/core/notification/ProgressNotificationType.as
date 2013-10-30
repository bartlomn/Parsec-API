package com.webintelligence.parsec.core.notification
{

/***************************************************************************
 * 
 *   @author nowabart 
 *   @created 1 Dec 2011
 *   Enumerates notification types
 *   Defines notification string resource ids
 * 
 ***************************************************************************/

public class ProgressNotificationType
{
    
    //--------------------------------------------------------------------------
    //
    //  Class constants
    //
    //--------------------------------------------------------------------------
    
    /**
     *  enumerates notification type
     */
    public static const EMPTY:ProgressNotificationType = 
        new ProgressNotificationType(EMPTY, "common.interface.emptyString");
    
    /**
     *  enumerates notification type
     */
    public static const LOADING_APP:ProgressNotificationType = 
        new ProgressNotificationType(LOADING_APP, "common.interface.loading.app");
    
    /**
     *  enumerates notification type
     */
    public static const LOADING_APP_DATA:ProgressNotificationType = 
        new ProgressNotificationType(LOADING_APP_DATA, "common.interface.loading.app.data");
    
    /**
     *  enumerates notification type
     */
    public static const LOADING_VIEW:ProgressNotificationType = 
        new ProgressNotificationType(LOADING_VIEW, "common.interface.loading.view");
    
    /**
     *  enumerates notification type
     */
    public static const LOGGING_IN:ProgressNotificationType = 
       new ProgressNotificationType(LOGGING_IN, "common.interface.login.progress");
    
    //--------------------------------------------------------------------------
    //
    //  Constructor
    //
    //--------------------------------------------------------------------------
    
    /**
     *  Constructor
     */
    public function ProgressNotificationType(enumRef:ProgressNotificationType, notificationId:String)
    {
        _notificationId = notificationId;
    }
    
    //--------------------------------------------------------------------------
    //
    //  Variables
    //
    //--------------------------------------------------------------------------
    
    /**
     *  @private
     *  storage for notification ID
     */
    private var _notificationId:String;
    
    //--------------------------------------------------------------------------
    //
    //  Methods
    //
    //--------------------------------------------------------------------------
    
    //--------------------------------------
    //  toString
    //--------------------------------------
    /**
     *  converts notification to string
     */
    public function toString():String
    {
        return _notificationId;
    }
}
}