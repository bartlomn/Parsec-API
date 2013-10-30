package com.webintelligence.parsec.core.message.lifecycle
{

/***************************************************************************
 * 
 *   @author bnowak 
 *   @created Dec 6, 2012
 *
 *   Message that indicates that an non-critical internal error has occured.
 * 
 ***************************************************************************/


public class NotifyInternalErrorMsg 
   extends NotifyErrorMsg
{
   
   //--------------------------------------------------------------------------
   //
   //  Constructor
   //
   //--------------------------------------------------------------------------
   
   /**
    *  Constructor
    */
   public function NotifyInternalErrorMsg(sourceInstance:Object,
                                          errorSummary:String = "",
                                          errorDetail:String = "") 
   {
      super(sourceInstance, errorSummary, errorDetail);
   }
   
   //--------------------------------------------------------------------------
   //
   //  Properties
   //
   //--------------------------------------------------------------------------
   
   //--------------------------------------
   //  LEVEL
   //--------------------------------------
   /**
    * Denotes error level
    * @return error level
    */
   private static function get LEVEL():String
   {
      return "INTERNAL";
   }
   
}
}