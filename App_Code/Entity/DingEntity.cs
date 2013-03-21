/***************************************************************************************************
 *
 *\File          DingEntity.cs
 *\Description   
 *\Log           2013.03.19  Ver 1.0     肖骏涛
 *               创建文件。
 ***************************************************************************************************/

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// DingEntity 的摘要说明
/// </summary>
public class DingEntity
{
		//
		// TODO: 在此处添加构造函数逻辑
		//

        int id = -1;
        public int Id
        {
            get { return id; }
            set { id = value; }
        }

        int uid = -1;
        public int Uid
        {
            get { return uid; }
            set { uid = value; }
        }

        int nid = -1;
        public int Nid
        {
            get { return nid; }
            set { nid = value; }
        }
        public bool isDing
        {
            get { return isDing; }
            set { isDing = value; }
        }
 }
