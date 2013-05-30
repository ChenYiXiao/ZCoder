//--------------------------------------------------------------------------------------
//
//FileName:         UserEntity.cs
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
///用户的实体，用于存储和获取用户的信息
/// </summary>
public class UserEntity
{
    int id = -1;
    /// <summary>
    /// 用户ID　（Id）
    /// </summary>
    public int Id
    {
        get { return id; }
        set { id = value; }
    }
    string userName = "";
    /// <summary>
    /// 用户名　（UserName）
    /// </summary>
    public string UserName
    {
        get { return userName; }
        set { userName = value; }
    }
    string password = "";
    /// <summary>
    /// 密码 （Password）
    /// </summary>
    public string Password
    {
        get { return password; }
        set { password = value; }
    }
    string email = "";
    /// <summary>
    /// 电子邮箱 （Email）
    /// </summary>
    public string Email
    {
        get { return email; }
        set { email = value; }
    }
    string qq = "";
    /// <summary>
    /// QQ （Qq）
    /// </summary>
    public string Qq
    {
        get { return qq; }
        set { qq = value; }
    }
    bool sex = true;
    /// <summary>
    /// 男是true，0，女是false，1  （Sex）
    /// </summary>
    public bool Sex
    {
        get { return sex; }
        set { sex = value; }
    }
    bool isadmin = false;
    /// <summary>
    /// 是否管理员 （Isadmin）
    /// </summary>
    public bool Isadmin
    {
        get { return isadmin; }
        set { isadmin = value; }
    }
    DateTime regTime = DateTime.Now;
    /// <summary>
    /// 注册日期 （RegTime）
    /// </summary>
    public DateTime RegTime
    {
        get { return regTime; }
        set { regTime = value; }
    }
    /// <summary>
    /// 
    /// </summary>
	public UserEntity()
	{
	}
}