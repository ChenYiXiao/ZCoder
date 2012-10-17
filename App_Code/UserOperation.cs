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

    public static bool CheckUser(string userName)
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
        DataBase db = new DataBase();
        DataSet result=db.RunProcReturn("select * from tb_user where username=@username and password=@password", new SqlParameter[] {
        db.MakeInParam("username",System.Data.SqlDbType.VarChar,20,userName),
        db.MakeInParam("password",System.Data.SqlDbType.VarChar,50,password)
        },"tb_user");
        if (result.Tables[0].Rows.Count != 0)
        {
            Session.Add("username", userName);
            Session.Add("password", password);
            Session.Add("uid", result.Tables[0].Rows[0]["id"].ToString());
            return true;
        }
        else
        {
            return false;
        }
    }
    public static bool CheckLoged(System.Web.SessionState.HttpSessionState Session)
    {
        return !(Session["uid"]==null);

    }
}