//--------------------------------------------------------------------------------------
//
//FileName:         LangEntity.cs
//Depiction:        
//Author:	           
//CDT:	            2012-12-13
//Version:	        Ver 1.0    
//                  创建文件。
//--------------------------------------------------------------------------------------
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
///源码类型的实体，用户存储和获取源码类型的信息
/// </summary>
public class LangEntity
{
    int id = -1;
    /// <summary>
    /// 源码类型的ID （Id）
    /// </summary>
    public int Id
    {
        get { return id; }
        set { id = value; }
    }
    string name = "";
    /// <summary>
    /// 源码类型的名称 （Name）
    /// </summary>
    public string Name
    {
        get { return name; }
        set { name = value; }
    }
    string description = "";
    /// <summary>
    /// 源码类型的描述 （Description）
    /// </summary>
    public string Description
    {
        get { return description; }
        set { description = value; }
    }
    string ext = "";
    /// <summary>
    /// 源码类型的扩展名 （Ext）
    /// </summary>
    public string Ext
    {
        get { return ext; }
        set { ext = value; }
    }

    string brushName = "";
    /// <summary>
    /// 刷的名字 （BrushName）
    /// </summary>
    public string BrushName
    {
        get { return brushName; }
        set { brushName = value; }
    }
    string brushAliases = "";
    /// <summary>
    /// 刷的别名 （BrushAliases）
    /// </summary>
    public string BrushAliases
    {
        get { return brushAliases; }
        set { brushAliases = value; }
    }
    string brushFile = "";
    /// <summary>
    /// 刷的文件 （BrushFile）
    /// </summary>
    public string BrushFile
    {
        get { return brushFile; }
        set { brushFile = value; }
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
    /// <summary>
    /// 
    /// </summary>
    public LangEntity()
    {
        //
        //TODO: 在此处添加构造函数逻辑
        //
    }
}