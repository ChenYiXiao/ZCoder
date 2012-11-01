using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class admin_Upload : System.Web.UI.Page
{
    /*$targetFolder = '/uploads'; // Relative to the root

$verifyToken = md5('unique_salt' . $_POST['timestamp']);

if (!empty($_FILES) && $_POST['token'] == $verifyToken) {
	$tempFile = $_FILES['Filedata']['tmp_name'];
	$targetPath = $_SERVER['DOCUMENT_ROOT'] . $targetFolder;
	$targetFile = rtrim($targetPath,'/') . '/' . $_FILES['Filedata']['name'];
	
	// Validate the file type
	$fileTypes = array('jpg','jpeg','gif','png'); // File extensions
	$fileParts = pathinfo($_FILES['Filedata']['name']);
	
	if (in_array($fileParts['extension'],$fileTypes)) {
		move_uploaded_file($tempFile,$targetFile);
		echo '1';
	} else {
		echo 'Invalid file type.';
	}
}*/
    protected void Page_Load(object sender, EventArgs e)
    {
        SessionRest.Rest(Request.Form["AUTHID"].ToString(), Response.Cookies);
        string targetFolder = AppConfiger.GetSiteSetting(Server, "projectsz");
        HttpPostedFile file = Request.Files["FileData"];
        string uploadpath = Server.MapPath(targetFolder + "\\");
        
        if (file != null)
        {
            if (!Directory.Exists(uploadpath))
            {
                Directory.CreateDirectory(uploadpath);
            }
            string savePath = uploadpath + DateTime.Now.ToFileTime() + ".zip";
            file.SaveAs(savePath);
            Session["savePath"] = savePath;
           
        }
        else
        {
            Response.Write("0");
        }
    }
}