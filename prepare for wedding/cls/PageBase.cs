using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

namespace prepare_for_wedding.cls
{
    public class PageBase:Page
    {
        protected void NoBuf()
        {
            Response.ExpiresAbsolute = DateTime.Now.AddDays(-1);
            Response.CacheControl = "No-cache";
        }
    }
}