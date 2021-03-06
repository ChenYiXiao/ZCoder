﻿//--------------------------------------------------------------------------------------
//
//FileName:         UserOperation.cs
//Depiction:        关于用户的一些操作，包括用户的添加，修改，删除，和获取用户信息。
//Author:	           
//CDT:	            2012-12-13
//Version:	        Ver 1.0    
//                  创建文件。
//--------------------------------------------------------------------------------------
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI;

/// <summary>
///UserOperation 的摘要说明
/// </summary>
public class UserOperation
{

    public UserOperation()
    {
        //
        //TODO: 在此处添加构造函数逻辑
        //
    }
    /// <summary>
    /// 注册用户方法
    /// </summary>
    /// <param name="userName">注册名</param>
    /// <param name="passWord">密码</param>
    /// <param name="email">电子邮箱</param>
    /// <param name="qq">QQ</param>
    /// <param name="sex">性别，true为男，false为女</param>
    /// <param name="isadmin">是否管理员</param>
    /// <param name="regTime">注册日期</param>
    /// <returns></returns>
    public static bool Reg(string userName, string passWord, string email, string qq, bool sex, bool isadmin, DateTime regTime)
    {
        DataBase db = new DataBase();
        if (db.RunProc("INSERT INTO tb_user (userName, passWord, email, qq)VALUES   (@username,@password,@email,@qq)",
             new SqlParameter[]{
          db.MakeInParam("username",System.Data.SqlDbType.VarChar,20,userName),
          db.MakeInParam("password",System.Data.SqlDbType.VarChar,200,passWord),
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
    /// <summary>
    /// 检查用户是否存在
    /// </summary>
    /// <param name="userName">用户名</param>
    /// <returns>注册成功为true,失败为false</returns>
   
    /* 用户名密码验证  */
    
    public static bool CheckUser(string userName)  
    {
        DataBase db = new DataBase();
        if (db.ExCommand("select * from tb_user where username='" + userName + "'").Tables[0].Rows.Count > 0)
        {
            return true;
        }
        else
        { 
            return false;
        }
    }
    /// <summary>
    /// 登陆
    /// </summary>
    /// <param name="Session">Session</param>
    /// <param name="userName">用户名</param>
    /// <param name="password">密码</param>
    /// <returns>成功为true,失败为false</returns>
    public static bool Login(System.Web.SessionState.HttpSessionState Session, string userName, string password)
    {
        if (userName == "" || password == "")
        {
            return false;
        }
        DataBase db = new DataBase(); /*实例化一个数据库。*/
        String str = Encrypt.encrypt(password);
        DataSet result = db.RunProcReturn("select * from tb_user where username=@username and password=@password", new SqlParameter[] {
        db.MakeInParam("username",System.Data.SqlDbType.VarChar,20,userName),
        db.MakeInParam("password",System.Data.SqlDbType.VarChar,200,str)
        }, "tb_user");     /*查询数据库中与输入的用户名密码相同的集。*/
        if (result.Tables[0].Rows.Count != 0)    /*  如数据库中有用户名密码与输入的用户名密码相同，则将username和password、uid放入session中。*/
        {
            Session.Add("username", userName);
            Session.Add("password", password);
            Session.Add("uid", result.Tables[0].Rows[0]["id"].ToString());
            Session.Add("isadmin", result.Tables[0].Rows[0]["isadmin"]);
            Session.Remove("loginerror");
            return true;
        }
        else
        {
            Session.Add("loginerror", true);
            return false;
        }
    }
    /// <summary>
    /// 检查是否已登陆
    /// </summary>
    /// <param name="Session">Session</param>
    /// <returns>true已登陆，false未登陆</returns>
    public static bool CheckLoged(System.Web.SessionState.HttpSessionState Session)
    {
        return !(Session["uid"] == null);

    }
    /// <summary>
    /// 检查是否为管理员
    /// </summary>
    /// <param name="Session">Session</param>
    /// <returns>是返回true,否返回false</returns>
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

    
    /// <summary>
    /// 编辑用户信息
    /// </summary>
    /// <param name="UserName">用户名</param>
    /// <param name="PassWord">密码</param>
    /// <param name="Email">邮箱</param>
    /// <param name="Sex">性别</param>
    /// <param name="QQ">QQ</param>
    /// <param name="IsAdmin">是否是管理员</param>
    /// <param name="ID">用户ID</param>
    public static void EditUser(string UserName, string PassWord, string Email, bool Sex, string QQ, bool IsAdmin, int ID)
    {
        DataBase db = new DataBase();
        string sql = "UPDATE tb_user SET userName ='" + UserName + "', password ='" + PassWord + "', email ='" + Email + "', sex =" + (Sex ? 1 : 0).ToString() + ", qq ='" + QQ + "', isadmin=" + (IsAdmin ? 1 : 0).ToString() + " where id=" + ID.ToString();
        db.ExCommandNoBack(sql);
    }
    /// <summary>
    /// 删除用户
    /// </summary>
    /// <param name="id">用户ID</param>
    public static void DelUser(String id)
    {
        DataBase db = new DataBase();
        string sql = "delete from dbo.tb_user where id=" + id + "";
        db.ExCommandNoBack(sql);

    }
    /// <summary>
    /// 获取用户信息
    /// </summary>
    /// <param name="userId">用户ID</param>
    /// <returns>返回UserEntity对象，可以读取用户信息</returns>
    public static UserEntity GetUser(int userId)
    {
        DataBase db = new DataBase();
        DataSet rs = db.RunProcReturn("select * from tb_user where id=" + userId, "tb_user");
        if (rs.Tables[0].Rows.Count > 0)
        {
            UserEntity ue = new UserEntity();
            ue.UserName = rs.Tables[0].Rows[0]["userName"].ToString();
            ue.Password = rs.Tables[0].Rows[0]["password"].ToString();
            ue.Qq = rs.Tables[0].Rows[0]["qq"].ToString();
            ue.RegTime = DateTime.Parse(rs.Tables[0].Rows[0]["regtime"].ToString());
            ue.Sex = bool.Parse(rs.Tables[0].Rows[0]["sex"].ToString());
            ue.Isadmin = bool.Parse(rs.Tables[0].Rows[0]["isadmin"].ToString());
            ue.Id = int.Parse(rs.Tables[0].Rows[0]["id"].ToString());
            ue.Email = rs.Tables[0].Rows[0]["email"].ToString();
            return ue;
        }
        return null;
    }
    /// <summary>
    /// 获取用户的ID
    /// </summary>
    /// <param name="session">session</param>
    /// <returns>返回uid</returns>
    public static int GetCurrentUid(System.Web.SessionState.HttpSessionState session)
    {
        return int.Parse(session["uid"].ToString());
    }
}