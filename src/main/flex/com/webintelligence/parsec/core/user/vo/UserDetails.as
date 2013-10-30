package com.webintelligence.parsec.core.user.vo
{
import flash.events.Event;

/**
 *  Carries details about current logged in user
 */
public class UserDetails
{
    
    //--------------------------------------------------------------------------
    //
    //  Properties
    //
    //--------------------------------------------------------------------------
    
    //--------------------------------------
    //  authenticated
    //--------------------------------------

    [Bindable]
    
    /**
     *  is user authenticated
     */
    public var authenticated:Boolean;
    
    //--------------------------------------
    //  username
    //--------------------------------------

    [Bindable]
    
    /**
     *  username
     */
    public var userName:String;
    
    //--------------------------------------
    //  hsbcStaffId
    //--------------------------------------

    [Bindable]
    
    /**
     *  hsbcStaffId
     */
    public var hsbcStaffId:String;

    //--------------------------------------
    //  roles
    //--------------------------------------

    /**
     *  @private
     */ 
    private var rolesHash:String;
    
    /**
     *  @private
     */
    private var _roles:Array;

    [Bindable("rolesChanged")]
    
    /**
     *  List of the user roles
     */
    public function get roles():Array
    {
        return _roles;
    }

    /**
     *  @private
     */
    public function set roles(value:Array):void
    {
        var newHash:String = value ? value.concat().sort().join(",") : null;
        if (newHash != rolesHash)
        {
            _roles = value;
            rolesHash = newHash;
            dispatchEvent(new Event("rolesChanged"));
        }
    }
}
}