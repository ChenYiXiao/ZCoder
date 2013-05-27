//--------------------------------------------------------------------------------------
//
//FileName:         Encrypt.cs
//Depiction:        密码加密类
//Author:	           陈斌
//CDT:	            2012-12-13
//Version:	        Ver 1.0    
//                  创建文件。
//--------------------------------------------------------------------------------------
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;

/// <summary>
///Encrypt 的摘要说明
/// </summary>
public class Encrypt
{
    public Encrypt()
    {
        //
        //TODO: 在此处添加构造函数逻辑
        //
    }
    public static String encrypt(String str)
    {
        String str1 = FormsAuthentication.HashPasswordForStoringInConfigFile(str, "SHA1");
        return str1;
    }
}