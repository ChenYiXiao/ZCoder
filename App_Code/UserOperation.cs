using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

/// <summary>
///UserOperation 的摘要说明
/// </summary>
public class UserOperation
{
    int id = -1;
    string userName = "";
    string password = "";
    string email = "";
    string qq = "";
    bool sex = true;
    bool isadmin = false;
    DateTime regTime = DateTime.Now;
    public UserOperation()
    {
        //
        //TODO: 在此处添加构造函数逻辑
        //
    }
    public static bool Reg(string userName, string password, string email, string qq, bool sex, bool isadmin, DateTime regTime)
    {
        DataBase db = new DataBase();

        if (db.RunProc("INSERT INTO tb_user (userName, password, email, qq)VALUES   (@username,@password,@email,@qq)",
             new SqlParameter[]{
          db.MakeInParam("username",System.Data.SqlDbType.VarChar,20,userName),
          db.MakeInParam("password",System.Data.SqlDbType.VarChar,50,password),
          db.MakeInParam("email",System.Data.SqlDbType.VarChar,50,email),
        db.MakeInParam("qq",System.Data.SqlDbType.VarChar,15,qq)
        }) == 0)
        {
            return false;
        }
        else
        {

            return true;
        }
    }

    public static bool CheckUser(string userName)    /* 用户名密码验证  */
    {
        DataBase db = new DataBase();
        if (db.ExCommand("select * from tb_user where username='" + userName + "'").Tables[0].Rows.Count > 0)
        {
            return true;
        }
        else
        { return false; }
    }

    public static bool Login(System.Web.SessionState.HttpSessionState Session, string userName, string password)
    {
        if (userName == "" || password == "")
        {
            return false;
        }
        DataBase db = new DataBase(); /*实例化一个数据库。*/
        DataSet result = db.RunProcReturn("select * from tb_user where username=@username and password=@password", new SqlParameter[] {
        db.MakeInParam("username",System.Data.SqlDbType.VarChar,20,userName),
        db.MakeInParam("password",System.Data.SqlDbType.VarChar,50,password)
        }, "tb_user");     /*查询数据库中与输入的用户名密码相同的集。*/
        if (result.Tables[0].Rows.Count != 0)    /*  如数据库中有用户名密码与输入的用户名密码相同，则将username和password、uid放入session中。*/
        {
            Session.Add("username", userName);
            Session.Add("password", password);
            Session.Add("uid", result.Tables[0].Rows[0]["id"].ToString());
            Session.Add("isadmin", result.Tables[0].Rows[0]["isadmin"]);
            return true;
        }
        else
        {
            return false;
        }
    }
    public static bool CheckLoged(System.Web.SessionState.HttpSessionState Session)
    {
        return !(Session["uid"] == null);

    }
    public static bool CheckIsAdmin(System.Web.SessionState.HttpSessionState Session)
    {

        if (CheckLoged(Session))
        {
            if (Session["isadmin"] != null)
                if (bool.Parse(Session["isadmin"].ToString()) == true)
                {
                    return true;
                }
        }
        return false;
    }
    public static bool userAlert(string password, string email, string qq, bool sex)
    {
        DataBase db = new DataBase();

        if (db.RunProc("UPDATE  tb_user SET password =, email =, qq =, sex =WHERE   (userName = @userName) AND (password = @password) AND (email = @email) AND (qq = @qq) AND (sex = @sex)",
             new SqlParameter[]{
                 db.MakeInParam("password",System.Data.SqlDbType.VarChar,50,password),
          db.MakeInParam("email",System.Data.SqlDbType.VarChar,50,email),
        db.MakeInParam("qq",System.Data.SqlDbType.VarChar,15,qq)
             }) == 0)
        {
            return false;
        }
        else
        {

            return true;
        }
    }
             
}