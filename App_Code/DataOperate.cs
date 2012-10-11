using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Text.RegularExpressions;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Security.Cryptography;
using System.Text;
/// <summary>
///DataOperate 的摘要说明
/// </summary>
public class DataOperate
{
    public DataOperate()
    {
        //
        //TODO: 在此处添加构造函数逻辑
        //
    }
    /// <summary>
    /// 自动生成编号
    /// </summary>
    /// <param name="tbName"></param>
    /// <param name="ds"></param>
    /// <returns></returns>
    #region 自动生成编号
    /// <summary>
    /// 自动生成编号
    /// </summary>
    /// <param name="tbName">数据表名</param>
    /// <returns></returns>
    public string getID(string tbName, DataSet ds)
    {
        string P_Str_ID = "";
        int P_Int_ID = 0;
        if (ds.Tables[0].Rows.Count == 0)
        {
            P_Str_ID = "BH100001";
        }
        else
        {
            P_Str_ID = Convert.ToString(ds.Tables[0].Rows[ds.Tables[0].Rows.Count - 1]["ID"]);
            P_Int_ID = Convert.ToInt32(P_Str_ID.Substring(2, 6)) + 1;
            P_Str_ID = "BH" + P_Int_ID.ToString();
        }
        return P_Str_ID;
    }
    #endregion

    #region  验证输入为数字
    /// <summary>
    /// 验证输入为数字
    /// </summary>
    /// <param name="str"></param>
    /// <returns></returns>
    public bool validateNum(string str)
    {
        return Regex.IsMatch(str, "^[0-9]*[1-9][0-9]*$");
    }
    /// <summary>
    /// 验证输入为小数
    /// </summary>
    /// <param name="str"></param>
    /// <returns></returns>
    public bool validateDNum(string str)
    {
        return Regex.IsMatch(str, "^[0-9]+(.[0-9]{1,3})?$");
    }
    #endregion

    #region  验证输入为邮编
    /// <summary>
    /// 验证输入为邮编
    /// </summary>
    /// <param name="str"></param>
    /// <returns></returns>
    public bool validatePCode(string str)
    {
        return Regex.IsMatch(str, @"\d{6}");
    }
    #endregion

    #region  验证输入为电话号码
    /// <summary>
    /// 验证输入为电话号码
    /// </summary>
    /// <param name="str"></param>
    /// <returns></returns>
    public bool validatePhone(string str)
    {
        return Regex.IsMatch(str, @"^(\d{3,4})-(\d{7,8})$");
    }
    #endregion

    #region  验证输入为Email
    /// <summary>
    /// 验证输入为Email
    /// </summary>
    /// <param name="str"></param>
    /// <returns></returns>
    public bool validateEmail(string str)
    {
        return Regex.IsMatch(str, @"\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*");
    }
    #endregion

    #region  验证输入为网址
    /// <summary>
    /// 验证输入为网址
    /// </summary>
    /// <param name="str"></param>
    /// <returns></returns>
    public bool validateNAddress(string str)
    {
        return Regex.IsMatch(str, @"http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&=]*)?");
    }
    #endregion

    #region  上传图片
    /// <summary>
    /// 上传图片
    /// </summary>
    /// <param name="upload">FileUpload控件对象</param>
    /// <param name="img">Image控件对象</param>
    /// <param name="strPath">虚拟路径</param>
    public string UpPhoto(FileUpload upload, System.Web.UI.WebControls.Image img, string strPath, string userId)
    {
        string filePath = upload.PostedFile.FileName;
        string filename = filePath.Substring(filePath.LastIndexOf("\\") + 1);
        //string filename =getFilesMD5Hash(filePath);
        string fileEx = filePath.Substring(filePath.LastIndexOf(".") + 1);
        string serverpath = strPath + userId +"."+ fileEx;
        string relativepath = @"~\images\Photo\" + userId +"."+ fileEx;
        //判断图片格式
        if (fileEx == "jpg" || fileEx == "bmp" || fileEx == "gif")
        {
            upload.PostedFile.SaveAs(serverpath);
            img.ImageUrl = relativepath;
        }
        return filename;
    }
    #endregion


    public static string getFilesMD5Hash(string file)
    {
        //MD5 hash provider for computing the hash of the file
        MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider();

        //open the file
        FileStream stream = new FileStream(file, FileMode.Open, FileAccess.Read, FileShare.Read, 8192);

        //calculate the files hash
        md5.ComputeHash(stream);

        //close our stream
        stream.Close();

        //byte array of files hash
        byte[] hash = md5.Hash;

        //string builder to hold the results
        StringBuilder sb = new StringBuilder();

        //loop through each byte in the byte array
        foreach (byte b in hash)
        {
            //format each byte into the proper value and append
            //current value to return value
            sb.Append(string.Format("{0:X2}", b));
        }

        //return the MD5 hash of the file
        return sb.ToString();
    }


    #region DataList控件绑定及分页
    /// <summary>
    /// DataList控件绑定及分页
    /// </summary>
    /// <param name="intCount">每页显示的记录条数</param>
    /// <param name="ds">DataSet数据集</param>
    /// <param name="labPage">当前页码</param>
    /// <param name="labTPage">总页码</param>
    /// <param name="lbtnUp">上一页</param>
    /// <param name="lbtnNext">下一页</param>
    /// <param name="lbtnBack">最后一页</param>
    /// <param name="lbtnOne">第一页</param>
    /// <param name="dl">DataList控件对象</param>
    public void dlBind(int intCount, DataSet ds, Label labPage, Label labTPage, LinkButton lbtnUp, LinkButton lbtnNext, LinkButton lbtnBack, LinkButton lbtnOne, DataList dl)
    {
        int curpage = Convert.ToInt32(labPage.Text);
        PagedDataSource ps = new PagedDataSource();
        ps.DataSource = ds.Tables[0].DefaultView;
        ps.AllowPaging = true; //是否可以分页
        ps.PageSize = intCount; //显示的数量
        ps.CurrentPageIndex = curpage - 1; //取得当前页的页码
        lbtnUp.Enabled = true;
        lbtnNext.Enabled = true;
        lbtnBack.Enabled = true;
        lbtnOne.Enabled = true;
        if (curpage == 1)
        {
            lbtnOne.Enabled = false;//不显示第一页按钮
            lbtnUp.Enabled = false;//不显示上一页按钮
        }
        if (curpage == ps.PageCount)
        {
            lbtnNext.Enabled = false;//不显示下一页
            lbtnBack.Enabled = false;//不显示最后一页
        }
        labTPage.Text = Convert.ToString(ps.PageCount);
        dl.DataSource = ps;
        dl.DataKeyField = "ID";
        dl.DataBind();
    }
    #endregion

    #region 截取指定长度的字符串
    /// <summary>
    /// 截取指定长度的字符串
    /// </summary>
    /// <param name="str">要截取的字符串</param>
    /// <param name="intLength">要截取的长度</param>
    /// <returns>截取后的字符串</returns>
    public string SubStr(string str, int intLength)
    {
        if (str.Length < intLength)
        {
            return str;
        }
        string newStr = str.Substring(0, intLength - 1);
        newStr = newStr + "...";
        return newStr;
    }
    #endregion

    #region FreeTextBox控件的字体
    /// <summary>
    /// FreeTextBox控件的字体
    /// </summary>
    /// <returns></returns>
    public string[] strFont()
    {
        string[] str = null;
        str = new string[] { "宋体", "楷体_GB2312", "隶书", "华文行楷", "华文中宋", "新宋体", "黑体", 
            "方正舒体", "方正姚体", "仿宋_GB2312", "华文彩云", "华文细黑", "华文新魏", "华文中宋"};
        return str;
    }
    #endregion

}
