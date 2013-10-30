package com.webintelligence.parsec.core.user
{
import com.webintelligence.parsec.core.user.enum.UserRole;

import flash.events.IEventDispatcher;

/**
 *  Describes user privileges controller API
 */

//--------------------------------------
//  Events
//--------------------------------------
/**
 *  dispatched whenever user details change
 */
[Event(
    name="userDetailsChanged", type="com.webintelligence.parsec.core.user.event.UserDetailsChangedEvent")]

public interface IUserRoleController
    extends IEventDispatcher
{
    
    //--------------------------------------------------------------------------
    //
    //  Properties
    //
    //--------------------------------------------------------------------------
    
    //--------------------------------------
    //  userName
    //--------------------------------------

    [Bindable("userDetailsChanged")]

    /**
     *  username
     */
    function get userName():String;
    
    //--------------------------------------
    //  hsbcStaffId
    //--------------------------------------

    [Bindable("userDetailsChanged")]

    /**
     *  hsbcStaffId
     */
    function get hsbcStaffId():String
    
    //--------------------------------------
    //  hsbcStaffId
    //--------------------------------------

    [Bindable("userDetailsChanged")]

    /**
     *  if the user has any specific non-standard role
     */
    function get hasSpecificRoles():Boolean;
    
    //--------------------------------------------------------------------------
    //
    //  Methods
    //
    //--------------------------------------------------------------------------
    
    [Bindable("userDetailsChanged")]
    
    /**
     *  True if the user has the given role
     *  @param roleName name of the role
     *  @return true if user has role
     */
    function hasRole(role:UserRole):Boolean;
}
}