package com.webintelligence.parsec.core.navigation.destination
{
import com.webintelligence.parsec.core.navigation.enum.DestinationScope;
import com.webintelligence.parsec.core.user.enum.UserRole;


/***************************************************************************
 * 
 *   @author nowabart 
 *   @created 1 Dec 2011
 *   Enumeration class for UINavigator destinations
 * 
 ***************************************************************************/

public /*abstract*/ class Destination
{
    
    //--------------------------------------------------------------------------
    //
    //  Class variables
    //
    //--------------------------------------------------------------------------
    
    /**
     *  what are we using as string separator
     */
    public static const SEPARATOR:String = ".";
    
    //--------------------------------------------------------------------------
    //
    //  Constructor
    //
    //--------------------------------------------------------------------------
    
    /**
     *  Constructor
     */
    public function Destination(destinationId:String, 
                                parent:Destination = null, 
                                requiresRole:UserRole = null,
                                scope:DestinationScope = null)
    {
        _destinationId = destinationId;
        _parent = parent;
        _role = requiresRole;
        _scope = scope ? 
            scope :
            DestinationScope.PRIMARY;
    }
    
    //--------------------------------------------------------------------------
    //
    //  Variables
    //
    //--------------------------------------------------------------------------
    
    /**
     *  @private
     *  destination id
     */
    private var _destinationId:String;
    
    /**
     *  @private
     *  parent destination
     */
    private var _parent:Destination;

    //--------------------------------------------------------------------------
    //
    //  Properties
    //
    //--------------------------------------------------------------------------
    
    //--------------------------------------
    //  role
    //--------------------------------------
    
    /**
     *  @private
     */
    private var _role:UserRole;
    
    /**
     *  specifies if destination requires any specific role
     */
    public function get role():UserRole
    {
        return _role
    }

    //--------------------------------------
    //  scope
    //--------------------------------------
    
    /**
     *  @private
     */
    private var _scope:DestinationScope;
    
    /**
     *  returns destiantion scope
     */
    public function get scope():DestinationScope
    {
        return _scope
    }

    //--------------------------------------------------------------------------
    //
    //  Methods
    //
    //--------------------------------------------------------------------------
    
    //--------------------------------------
    //  getSharedParent
    //--------------------------------------
    /**
     *  returns parent destination shared by this and parameter destination
     */
    public function getSharedParent(destination:Destination):Destination
    {
        var localChain:Array = toArray();
        var testChain:Array = destination.toArray();
        var result:Destination;
        for each(var tested:Destination in testChain)
        {
            if(tested != localChain.shift() as Destination)
                return result;
            result = tested;
        }
        return null;
    }
    
    //--------------------------------------
    //  toArray
    //--------------------------------------
    /**
     *  returns destination hierarchy as array
     */
    public function toArray():Array
    {
        return _parent ?
            _parent.toArray().concat(this) :
            [this];
    }
    
    //--------------------------------------
    //  toString
    //--------------------------------------
    /**
     *  returns destination hierarchy as string
     */
    public function toString():String
    {
        return _parent ?
            _parent.toString() + SEPARATOR + _destinationId :
            _destinationId;
    }
}
}