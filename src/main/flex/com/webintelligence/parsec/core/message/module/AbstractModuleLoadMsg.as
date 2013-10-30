package com.webintelligence.parsec.core.message.module
{
public class AbstractModuleLoadMsg
{
    //--------------------------------------------------------------------------
    //
    //  Constructor
    //
    //--------------------------------------------------------------------------
    
    /**
     *  Constructor
     */
    public function AbstractModuleLoadMsg(moduleId:String = null)
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
     *  Id of the module
     */
    public var moduleId:String;
}
}