package com.webintelligence.parsec.core.message.module 
{

/**
 *  Request the loading of a module.
 *
 *  @see com.hsbc.efi.uui.core.module.ExplicitLoadPolicy
 */
public class LoadModuleMsg extends AbstractModuleLoadMsg
{

    //--------------------------------------------------------------------------
    //
    //  Constructor
    //
    //--------------------------------------------------------------------------

    /**
     *  Constructor
     */
    public function LoadModuleMsg(moduleId:String = null)
    {
        super(moduleId);
    }
}
}
