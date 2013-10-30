package com.webintelligence.parsec.core.message.lifecycle
{

/***************************************************************************
 * 
 *   @author bnowak 
 *   @created Dec 6, 2012
 * 
 *   Describes common API of error messages
 * 
 ***************************************************************************/

public interface IErrorMsg
{     
   
   //--------------------------------------------------------------------------
   //
   //  Properties
   //
   //--------------------------------------------------------------------------
   
   //--------------------------------------
   //  sourceName
   //--------------------------------------
   /**
    *  class name of the originating object
    */
   function get sourceName():String;
   
   //--------------------------------------
   //  errorSummary
   //--------------------------------------
   /**
    *  Human readable error summary.
    */
   function get errorSummary():String;
   
   //--------------------------------------
   //  errorDetail
   //--------------------------------------
   /**
    *  Human readable error detail.
    */
   function get errorDetail():String;

}
}