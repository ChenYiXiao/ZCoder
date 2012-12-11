/***************************************************************************************************
 *
 *\File          UploadSource.aspx.cs
 *\Description   工程资源管理器
 *\Log           2012.11.12   Ver 1.0    陈一枭
 *               创建文件。
 ***************************************************************************************************/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class Viewer : System.Web.UI.Page
{
    public LangEntity langEntity = null;
    public CodeEntity codeEntity = null;
    public UserEntity userEntity = null;
    public string Pre = "";
    public string jsaLineNum = "";
    public string jsaLineCount = "";
    protected void Page_Load(object sender, EventArgs e)
    {
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