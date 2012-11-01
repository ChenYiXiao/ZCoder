using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
///UserEntity 的摘要说明
/// </summary>
public class UserEntity
{
    int id = -1;
    /// <summary>
    /// 用户ID
    /// </summary>
    public int Id
    {
        get { return id; }
        set { id = value; }
    }
    string userName = "";
    /// <summary>
    /// 用户名
    /// </summary>
    public string UserName
    {
        get { return userName; }
        set { userName = value; }
    }
    string password = "";
    /// <summary>
    /// 密码
    /// </summary>
    public string Password
    {
        get { return password; }
        set { password = value; }
    }
    string email = "";
    /// <summary>
    /// 电子邮箱
    /// </summary>
    public string Email
    {
        get { return email; }
        set { email = value; }
    }
    string qq = "";
    /// <summary>
    /// QQ
    /// </summary>
    public string Qq
    {
        get { return qq; }
        set { qq = value; }
    }
    bool sex = true;
    /// <summary>
    /// 男是true，0，女是false，1
    /// </summary>
    public bool Sex
    {
        get { return sex; }
        set { sex = value; }
    }
    bool isadmin = false;
    /// <summary>
    /// 是否管理员
    /// </summary>
    public bool Isadmin
    {
        get { return isadmin; }
        set { isadmin = value; }
    }
    DateTime regTime = DateTime.Now;
    /// <summary>
    /// 注册日期
    /// </summary>
    public DateTime RegTime
    {
        get { return regTime; }
        set { regTime = value; }
    }
	public UserEntity()
	{
	}
}