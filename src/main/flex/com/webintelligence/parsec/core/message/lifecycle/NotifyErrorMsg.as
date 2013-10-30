package com.webintelligence.parsec.core.message.lifecycle
{
import com.webintelligence.parsec.core.message.ui.INotificationPopUpMsg;
import com.webintelligence.parsec.core.util.IPrettyPrintable;

import org.spicefactory.lib.reflect.ClassInfo;

/***************************************************************************
 *
 *   @author bnowak
 *   @created Dec 6, 2012
 *
 *   Message that indicates that an non-critical error has occured.
 *
 ***************************************************************************/

public class NotifyErrorMsg implements IPrettyPrintable, IErrorMsg, INotificationPopUpMsg
{

   //--------------------------------------------------------------------------
   //
   //  Constructor
   //
   //--------------------------------------------------------------------------

   /**
    *  Constructor
    */
   public function NotifyErrorMsg( sourceInstance:Object, errorSummary:String = "", errorDetail:String = "" )
   {
      super();
      _sourceName = ClassInfo.forInstance( sourceInstance ).simpleName;
      _errorSummary = errorSummary;
      _errorDetail = errorDetail;
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
      return "ERROR";
   }

   //--------------------------------------
   //  sourceName
   //--------------------------------------
   /**
    *  @private
    *  variable storage
    */
   private var _sourceName:String;

   /**
    *  @inheritDoc
    */
   public function get sourceName():String
   {
      return _sourceName;
   }

   //--------------------------------------
   //  errorSummary 
   //--------------------------------------

   /**
    *  @private
    */
   private var _errorSummary:String;

   /**
    *  @inheritDoc
    */
   public function get errorSummary():String
   {
      return _errorSummary;
   }

   public function set errorSummary( value:String ):void
   {
      _errorSummary = value;
   }

   //--------------------------------------
   //  errorDetail 
   //--------------------------------------

   /**
    *  @private
    */
   private var _errorDetail:String;

   /**
    *  @inheritDoc
    */
   public function get errorDetail():String
   {
      return _errorDetail;
   }

   public function set errorDetail( value:String ):void
   {
      _errorDetail = value;
   }

   //--------------------------------------------------------------------------
   //
   //  Methods
   //
   //--------------------------------------------------------------------------

   /**
     * Return a multi-line human readable error report
     * @return pretty string
     */
   public function prettyPrint():String
   {
      return [ "\n=============== " + LEVEL + " ==================", sourceName + ": " + new Date(), errorSummary,
               errorDetail ].join( "\n" );
   }

}
}
