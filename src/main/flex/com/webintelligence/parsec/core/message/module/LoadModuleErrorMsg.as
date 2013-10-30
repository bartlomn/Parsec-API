package com.webintelligence.parsec.core.message.module 
{

/**
 *  Signals an error in the loading of a module.
 *
 *  @see com.hsbc.efi.uui.core.module.ExplicitLoadPolicy
 */
public class LoadModuleErrorMsg extends AbstractModuleLoadMsg
{

    //--------------------------------------------------------------------------
    //
    //  Constructor
    //
    //--------------------------------------------------------------------------

    /**
     *  Constructor
     */
    public function LoadModuleErrorMsg(moduleId:String = null,
                                       detail:String = null)
    {
        super(moduleId);
        this.detail = detail;
    }

    //--------------------------------------------------------------------------
    //
    //  Properties
    //
    //--------------------------------------------------------------------------

    //--------------------------------------
    //  detail
    //--------------------------------------

    /**
     *  Error detail for reporting purposes.
     */
    public var detail:String;
}
}
