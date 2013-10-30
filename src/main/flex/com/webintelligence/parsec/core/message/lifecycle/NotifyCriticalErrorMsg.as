package com.webintelligence.parsec.core.message.lifecycle
{

/***************************************************************************
 *
 *   @author bnowak
 *   @created Dec 6, 2012
 *
 *   Message that indicates that an critical error has occured.
 *
 ***************************************************************************/


public class NotifyCriticalErrorMsg extends NotifyErrorMsg
{

   //--------------------------------------------------------------------------
   //
   //  Constructor
   //
   //--------------------------------------------------------------------------

   /**
    *  Constructor
    */
   public function NotifyCriticalErrorMsg( sourceInstance:Object,
                                           errorSummary:String = "",
                                           errorDetail:String = "",
                                           technicalDetail:String = "",
                                           error:* = null )
   {
      super( sourceInstance, errorSummary, errorDetail );
      _technicalDetail = technicalDetail;
      _error = error
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
      return "CRITICAL";
   }

   //--------------------------------------
   //  technicalDetail
   //--------------------------------------
   /**
    * @private
    * var storage
    */
   private var _technicalDetail:String;

   /**
    * Technical detail of the error
    */
   public function get technicalDetail():String
   {
      return _technicalDetail;
   }

   //--------------------------------------
   //  error
   //--------------------------------------
   /**
    * @private
    * var storage
    */
   private var _error:*;

   /**
    * Reference to the original error
    */
   public function get error():*
   {
      return _error;
   }

   //--------------------------------------------------------------------------
   //
   //  Methods
   //
   //--------------------------------------------------------------------------

   /**
    * @inheritDoc
    */
   override public function prettyPrint():String
   {
      return [ "\n=============== " + LEVEL + " ==================", sourceName + ": " + new Date(), errorSummary,
               errorDetail + "\n", technicalDetail ].join( "\n" );
   }

}
}
