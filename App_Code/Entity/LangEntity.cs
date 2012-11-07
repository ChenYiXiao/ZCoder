/***************************************************************************************************
 *                    (c) Copyright 1992-2009 Embedded Products Research Center
 *                                       All Rights Reserved
 *
 *\File          usdl_xxx.h
 *\Description   XXXXXXXXXXXXX
 *\Log           2008.XX.XX    Ver 1.0    张三
 *               创建文件。
 ***************************************************************************************************/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
///LangEntity 的摘要说明
/// </summary>
public class LangEntity
{
    int id = -1;

    public int Id
    {
        get { return id; }
        set { id = value; }
    }
    string name = "";

    public string Name
    {
        get { return name; }
        set { name = value; }
    }
    string description = "";

    public string Description
    {
        get { return description; }
        set { description = value; }
    }
    string ext = "";

    public string Ext
    {
        get { return ext; }
        set { ext = value; }
    }
    /// <summary>
    /// 扩展名列表
    /// </summary>
    public List<string> Exts
    {
        get
        {
            List<string> exts = new List<string>();
            string[] splited_ext = this.ext.Split(',');
            foreach (string ex in splited_ext)
            {
                exts.Add(ex);
            }
            return exts;
        }
    }
    public LangEntity()
    {
        //
        //TODO: 在此处添加构造函数逻辑
        //
    }
}