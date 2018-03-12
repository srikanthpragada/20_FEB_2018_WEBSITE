﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;

/// <summary>
/// Summary description for Database
/// </summary>
public class Database
{
    public static string ConnectionString
    {
        get
        {
            return WebConfigurationManager.ConnectionStrings["localdb"].ConnectionString;
        }
    }
}