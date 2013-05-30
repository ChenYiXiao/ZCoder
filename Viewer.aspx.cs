//--------------------------------------------------------------------------------------
//
//FileName:          Viewer.aspx.cs
//Depiction:        源码信息
//Author:	        陈一枭   
//CDT:	            2012-12-13
//Version:	        Ver 1.0    
//                  创建文件。
//--------------------------------------------------------------------------------------
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
/// <summary>
/// 源码信息
/// </summary>
public partial class Viewer : System.Web.UI.Page
{
    /// <summary>
    /// 
    /// </summary>
    public LangEntity langEntity = null;
    /// <summary>
    /// 
    /// </summary>
    public CodeEntity codeEntity = null;
    /// <summary>
    /// 
    /// </summary>
    public UserEntity userEntity = null;
    /// <summary>
    /// 
    /// </summary>
    public string Pre = "";
    /// <summary>
    /// 
    /// </summary>
    public string jsaLineNum = "";
    /// <summary>
    /// 
    /// </summary>
    public string jsaLineCount = "";
    /// <summary>
    /// Page_Load
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Page_Load(object sender, EventArgs e)
    {
        if (UserOperation.CheckLoged(Session) == false)
        {
           SmallScript.goRedirect(Response,Session,"请登录后再浏览本页","/Login.aspx"); 
        }
        string id = Request.QueryString["id"].ToString();
        try
        {
            codeEntity = CodeOperation.GetCode(int.Parse(id));
            langEntity = LangOperation.GetLang(codeEntity.Lid);
            userEntity = UserOperation.GetUser(codeEntity.Uid);
            /*Pre += "<pre style=\"margin:auto;\" class=\"brush: " + langEntity.BrushAliases + ";toolbar: false;\">";*/
            Pre += File.ReadAllText(Server.MapPath(AppConfiger.GetProjectsDir(Server) + codeEntity.Path), System.Text.Encoding.GetEncoding("GBK"));
            //取出相关的注释
            List<NoteEntity> assnotes = CodeOperation.GetAssNotes(codeEntity.Id);
            //对注释进行分组
            List<int> index = new List<int>();
            List<int> indexCount = new List<int>();
            foreach (NoteEntity ne in assnotes)
            {
                if (!index.Contains(ne.StartLine))
                {
                    index.Add(ne.StartLine);
                    indexCount.Add(1);
                }
                else
                {
                    int myindex = 0;
                    while (index[myindex] != ne.StartLine)
                    {
                        myindex++;
                    }
                    indexCount[myindex]++;
                }
            }
            //编译成js支持的数组格式
            jsaLineNum = complieArray(index);
            jsaLineCount = complieArray(indexCount);
            /* Pre += "</pre>";*/
            if (index.Count == 0)
            {
                jsaLineNum = "[]";
                jsaLineCount = "[]";
            }
        }
        catch { }
    }
    /// <summary>
    /// 
    /// </summary>
    /// <param name="array"></param>
    /// <returns></returns>
    string complieArray(List<int> array)
    {
        string rs = "[";
        for (int i = 0; i < array.Count; i++)
        {
            rs += array[i].ToString() + ",";
        }
        rs = rs.Substring(0, rs.Length - 1) + "]";
        return rs;
    }
}