/***************************************************************************************************
 *                    (c) Copyright 2012-3000 Embedded Products Research Center
 *                                       All Rights Reserved
 *
 *\File          Encrypt.cs
 *\Description   密码加密类
 *\Log           2012.12.03    Ver 1.0    陈斌
 *               创建文件。
 ***************************************************************************************************/
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