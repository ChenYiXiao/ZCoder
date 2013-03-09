/***************************************************************************************************
 *
 *\File         Project.ascx.cs
 *\Description   工程列表功能
 *\Log           2012.11.25    Ver 1.0    陈一枭
 *               创建文件。
 ***************************************************************************************************/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
public partial class Project : System.Web.UI.Page
{
    public string ProjectNodes = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (UserOperation.CheckLoged(Session) == false)
        {
            SmallScript.goRedirect(Response, Session, "请登录后再浏览本页", "/Login.aspx");
        }
        if (!IsPostBack)
        {
            if (!Directory.Exists(Server.MapPath(AppConfiger.GetProjectsDir(Server) + "\\" + Request.QueryString["id"].ToString())))
            {
                Directory.CreateDirectory(Server.MapPath(AppConfiger.GetProjectsDir(Server) + "\\" + Request.QueryString["id"].ToString()));
            }
            List<TreeNodeEntity> AllNodes = GetDirNode(Server.MapPath(AppConfiger.GetProjectsDir(Server) + "\\" + Request.QueryString["id"].ToString()));
            foreach (TreeNodeEntity node in AllNodes)
            {
                ProjectNodes += node.ToString() + ",";
            }
            if (!(ProjectNodes.Length == 0))
            {
                ProjectNodes = ProjectNodes.Substring(0, ProjectNodes.Length - 1);
            }
            
        }
    }
    private List<TreeNodeEntity> GetDirNode(string dir)
    {
        List<TreeNodeEntity> filesEntities = new List<TreeNodeEntity>();
        string[] dirs = Directory.GetDirectories(dir);
        foreach (string InDir in dirs)
        {
            TreeNodeEntity dirNode = new TreeNodeEntity();
            dirNode.Name = InDir.Substring(InDir.LastIndexOf("\\") + 1, InDir.Length - InDir.LastIndexOf("\\") - 1);
            dirNode.Open = false;
            dirNode.Children = GetDirNode(InDir);
            filesEntities.Add(dirNode);
        }
        string[] files = Directory.GetFiles(dir);
        foreach (string InFile in files)
        {
            TreeNodeEntity fileNode = new TreeNodeEntity();
            CodeEntity ce = CodeOperation.GetCodeFromPath(dir.Replace(
               Server.MapPath(AppConfiger.GetProjectsDir(Server)), "") + 
               "\\" + InFile.Substring(InFile.LastIndexOf("\\") + 1, InFile.Length - InFile.LastIndexOf("\\") - 1));
            if (ce != null)
            {
                fileNode.Id = ce.Id;
                fileNode.Name = ce.Path.Substring(ce.Path.LastIndexOf("\\") + 1, ce.Path.Length - ce.Path.LastIndexOf("\\") - 1);
                fileNode.TargetName = "sourceFrame";
                fileNode.UrlFormat = "/Viewer.aspx?id={0}";
                filesEntities.Add(fileNode);
            }
            else
            {
                fileNode.Name = InFile.Substring(InFile.LastIndexOf("\\") + 1, InFile.Length - InFile.LastIndexOf("\\") - 1);
                filesEntities.Add(fileNode);
            }

        }
        return filesEntities;
    }
}