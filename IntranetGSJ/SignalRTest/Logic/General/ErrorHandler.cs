using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SignalRTest.Logic.General
{
    public class ErrorHandler
    {
        public ErrorHandler()
        {
        }

        public static void throwError(string errorMessage)
        {
            HttpContext.Current.Session["Error"] = errorMessage;
        }
        public static string getError()
        {
            return (string)HttpContext.Current.Session["Error"];
        }
    }
}
