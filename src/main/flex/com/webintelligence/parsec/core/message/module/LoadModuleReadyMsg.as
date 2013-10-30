package com.webintelligence.parsec.core.message.module 
{

/**
 *  Notifies that a module with a particular <code>moduleId</code> to be ready
 *  (once the module is sufficiently loaded to call the IModuleInfo.factory()
 *  method and the IFlexModuleFactory.create() method.)
 *
 *  @see com.hsbc.efi.uui.core.module.ExplicitLoadPolicy
 */
public class LoadModuleReadyMsg extends AbstractModuleLoadMsg
{

    //--------------------------------------------------------------------------
    //
    //  Constructor
    //
    //--------------------------------------------------------------------------

    /**
     *  Constructor
     */
    public function LoadModuleReadyMsg(moduleId:String = null) 
    {
        super(moduleId);
    }
}
}
