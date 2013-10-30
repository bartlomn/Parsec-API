package com.webintelligence.parsec.core.locale
{

/***************************************************************************
 * 
 *   @author bnowak 
 *   @created 5 Aug 2011
 *   Common interface for PMs performing localization tasks
 * 
 ***************************************************************************/

public interface ILocalizablePM
{
   
   //--------------------------------------------------------------------------
   //
   //  Methods
   //
   //--------------------------------------------------------------------------
   
   //--------------------------------------
   //  getLabel
   //--------------------------------------
   
   [Bindable("change")]
   
   /**
    *  returns label by id from predefined bundle
    */
   function getLabel(id:String, params:Array = null):String;
   
}
}

