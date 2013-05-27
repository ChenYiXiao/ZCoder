//--------------------------------------------------------------------------------------
//
//FileName:          DingEntity.cs
//Depiction:        
//Author:	          肖骏涛
//CDT:	            2012-12-13
//Version:	        Ver 1.0    
//                  创建文件。
//--------------------------------------------------------------------------------------
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// 顶操作的实体，用户存储和获取顶操作的信息
/// </summary>
public class DingEntity
{
        int id = -1;
    /// <summary>
    /// 顶操作的ID （Id）
    /// </summary>
        public int Id
        {
            get { return id; }
            set { id = value; }
        }
        int uid = -1;
    /// <summary>
    /// 执行顶操作的用户的ID （Uid）
    /// </summary>
        public int Uid
        {
            get { return uid; }
            set { uid = value; }
        }
        int nid = -1;
    /// <summary>
    /// 顶的注释的ID （Nid）
    /// </summary>
        public int Nid
        {
            get { return nid; }
            set { nid = value; }
        }
        int isding = -1;
    /// <summary>
    /// 顶操作的类型 （isDing）
    /// </summary>
        public int isDing
        {
            get { return isding; }
            set { isding = value; }
        }
 }
