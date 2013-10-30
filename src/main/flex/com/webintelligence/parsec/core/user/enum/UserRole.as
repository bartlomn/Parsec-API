package com.webintelligence.parsec.core.user.enum
{

/***************************************************************************
 * 
 *   @author nowabart 
 *   @created 5 Aug 2011
 *   Enumerates possible user roles
 * 
 ***************************************************************************/

public class UserRole
{
    
    //--------------------------------------------------------------------------
    //
    //  Class constants
    //
    //--------------------------------------------------------------------------
    
    /**
     *  default logged-in user
     */
    public static const AUTHENTICATED_USER:UserRole = 
        new UserRole(AUTHENTICATED_USER, "AUTHENTICATED_USER");
    
    /**
     *  static data admin
     */
    public static const STATIC_ADMIN:UserRole = 
        new UserRole(STATIC_ADMIN, "STATIC_ADMIN");

    /**
     *  Counterparty Search
     */
    public static const CPTY_SEARCH:UserRole = 
        new UserRole(CPTY_SEARCH, "CPTY_SEARCH");

    /**
     *  Counterparty Tiering admin
     */
    public static const CPTY_TIERING:UserRole = 
        new UserRole(CPTY_TIERING, "CPTY_TIERING");

    /**
     *  User PO mapping admin
     */
    public static const USER_PO_MAPPING:UserRole = 
        new UserRole(USER_PO_MAPPING, "USER_PO_MAPPING");

    /**
     *  historical blotter
     */
    public static const HISTORIC_BLOTTER:UserRole = 
        new UserRole(HISTORIC_BLOTTER, "HISTORIC_BLOTTER");
    
    //--------------------------------------------------------------------------
    //
    //  Constructor
    //
    //--------------------------------------------------------------------------
    
    /**
     *  Constructor
     */
    public function UserRole(enumRef:UserRole, stringEnum:String)
    {
        _id = stringEnum;
    }
    
    //--------------------------------------------------------------------------
    //
    //  Variables
    //
    //--------------------------------------------------------------------------
    
    /**
     *  @private
     *  stores string id
     */
    private var _id:String;
    
    //--------------------------------------------------------------------------
    //
    //  Methods
    //
    //--------------------------------------------------------------------------
    
    /**
     *  @private
     */
    public function toString():String
    {
        return _id;
    }
}
}