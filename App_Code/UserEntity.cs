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

    public int Id
    {
        get { return id; }
        set { id = value; }
    }
    string userName = "";

    public string UserName
    {
        get { return userName; }
        set { userName = value; }
    }
    string password = "";

    public string Password
    {
        get { return password; }
        set { password = value; }
    }
    string email = "";

    public string Email
    {
        get { return email; }
        set { email = value; }
    }
    string qq = "";

    public string Qq
    {
        get { return qq; }
        set { qq = value; }
    }
    bool sex = true;

    public bool Sex
    {
        get { return sex; }
        set { sex = value; }
    }
    bool isadmin = false;

    public bool Isadmin
    {
        get { return isadmin; }
        set { isadmin = value; }
    }
    DateTime regTime = DateTime.Now;

    public DateTime RegTime
    {
        get { return regTime; }
        set { regTime = value; }
    }
	public UserEntity()
	{
	}
}