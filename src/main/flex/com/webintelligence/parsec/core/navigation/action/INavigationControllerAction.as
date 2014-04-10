/**
 * User: Bart
 * Date: 09/04/2014
 * Time: 12:17
 * Description:
 */

package com.webintelligence.parsec.core.navigation.action
{
import com.webintelligence.parsec.core.action.IAction;

import org.spicefactory.parsley.core.context.Context;

public interface INavigationControllerAction extends IAction
{

   /**
    *  @private
    */
   function register( context:Context ):void;

}
}
