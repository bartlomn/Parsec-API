package com.webintelligence.parsec.core.popup
{
import flash.events.IEventDispatcher;


/***************************************************************************
 * 
 *   @author nowabart 
 *   @created 24 Oct 2011
 *   Describes common API of all PopUp presentation models
 * 
 ***************************************************************************/

public interface IPopUpPM 
   extends IEventDispatcher
{
   
   //--------------------------------------------------------------------------
   //
   //  Properties
   //
   //--------------------------------------------------------------------------
   
   //--------------------------------------
   //  open
   //--------------------------------------
   
   [Bindable("popUpOpenPropertyChanged")]
   
   /**
    *  sets the popup open or closed
    */
   function get open():Boolean;
   function set open(value:Boolean):void;
   
}
}