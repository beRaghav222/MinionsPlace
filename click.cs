using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
//using System.Data;
/// <summary>
/// Summary description for click
/// </summary>
public class click
{
	public click()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public bool checkfilePic(string x)
    {
        string ext = Path.GetExtension(x);
        switch (ext)
        {
            case ".jpg":
                return true;
            case ".bmp":
                return true;
            case ".gif":
                return true;
            case ".png":
                return true;
            default:
                return false;
        }
    }
}