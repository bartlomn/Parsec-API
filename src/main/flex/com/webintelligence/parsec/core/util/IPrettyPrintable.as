package com.webintelligence.parsec.core.util
{

/**
 * Indicates that a class has default pretty-printed representation
 */
public interface IPrettyPrintable
{
    /**
     * Typically formats the object in a human readable way
     * @return this object, pretty-printed
     */
    function prettyPrint():String;
}
}
