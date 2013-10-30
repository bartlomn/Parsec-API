package com.webintelligence.parsec.core.message.module 
{

/**
 *  Notifies that the context for a loaded module with a particular
 *  <code>moduleId</code> is ready.
 */
public class ModuleContextReadyMsg
{

    //--------------------------------------------------------------------------
    //
    //  Constructor
    //
    //--------------------------------------------------------------------------

    /**
     *  Constructor
     */
    public function ModuleContextReadyMsg(moduleId:String = null)
    {
        super();
        this.moduleId = moduleId;
    }

    //--------------------------------------------------------------------------
    //
    //  Properties
    //
    //--------------------------------------------------------------------------

    //--------------------------------------
    //  moduleId
    //--------------------------------------

    /**
     *  Id of the loaded module.
     */
    public var moduleId:String;
}
}
