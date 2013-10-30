package com.webintelligence.parsec.core.message.module
{
public class LoadModuleProgressMsg extends AbstractModuleLoadMsg
{
    //--------------------------------------------------------------------------
    //
    //  Constructor
    //
    //--------------------------------------------------------------------------
    
    /**
     *  Constructor
     */
    public function LoadModuleProgressMsg(moduleId:String = null,
                                          bytesLoaded:Number = NaN,
                                          bytesTotal:Number = NaN)
    {
        super(moduleId);
        this.bytesLoaded = bytesLoaded;
        this.bytesTotal = bytesTotal;
    }
    
    //--------------------------------------------------------------------------
    //
    //  Properties
    //
    //--------------------------------------------------------------------------
    
    //--------------------------------------
    //  bytesLoaded
    //--------------------------------------
    
    /**
     *  Bytes loaded so far
     */
    public var bytesLoaded:Number;
    
    //--------------------------------------
    //  bytesTotal
    //--------------------------------------
    
    /**
     *  Total bytes to load
     */
    public var bytesTotal:Number;
}
}