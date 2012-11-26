using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Runtime.Serialization;

using System.Runtime.Serialization.Json;
/// <summary>
///TreeNodeEntity 的摘要说明
/// </summary>
public class TreeNodeEntity
{
    string targetName = "";

    public string TargetName
    {
        get { return targetName; }
        set { targetName = value; }
    }
    string name = "";

    public string Name
    {
        get { return name; }
        set { name = value; }
    }
    bool open = false;

    public bool Open
    {
        get { return open; }
        set { open = value; }
    }
    string url = "";

    public string Url
    {
        get { return url; }
        set { url = value; }
    }
    int id =-1;

    string urlFormat = "";

    public string UrlFormat
    {
        get { return urlFormat; }
        set { urlFormat = value; }
    }
    public int Id
    {
        get { return id; }
        set { id = value; }
    }

    List<TreeNodeEntity> children =new List<TreeNodeEntity>();

    public List<TreeNodeEntity> Children
    {
        get { return children; }
        set { children = value; }
    }

  
	public TreeNodeEntity()
	{
	}

    public override string ToString()
    {
        //return JsonHelper.ObjectToJson(this);
        string result = "";
        result += "{ name:\"" + name+"\"";
        if (id != -1)
        {
            result += ",id:" + id.ToString();
            result += ",icon:\"Com/zTree/css/zTreeStyle/img/diy/2.png\"";
        }
        else
        {

        }
        if (targetName != "")
        {
            result += ",target:\"" + targetName+"\"";
        }
        result += ",open:" + open.ToString().Replace('T','t').Replace('F','f');
        
        if (urlFormat != "")
        {
            result += ",url:\"" + string.Format(urlFormat, id) + "\"";

        }
        else
        {
            if (url != "")
            {
                result += ",url:\"" + url+"\"";
            }
        }

        if (children.Count>0)
        {
            result+=",children:[";
            for(int i=0;i<children.Count;i++)
            {
                result += children[i].ToString() + ",";
            }
            result = result.Substring(0, result.Length - 1);
            result += "]";
        }
        result += "}";
        return result;
    }
}