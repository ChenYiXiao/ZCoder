/***************************************************************************************************
 *
 *\File          NoteEntity.cs
 *\Description   
 *\Log           2012.11.01    Ver 1.0     肖骏涛
 *               创建文件。
 ***************************************************************************************************/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
///NoteEntity 的摘要说明
/// </summary>
public class NoteEntity
{

        int id = -1;
        public int Id
        {
            get { return id; }
            set { id = value; }
        }

        string noteName = "";
        public string NoteName
        {
            get { return noteName; }
            set { noteName = value; }
        }

        int uid = -1;
        public int Uid
        {
            get { return uid; }
            set { uid = value; }
        }

        int startLine = -1;
        public int StartLine
        {
            get { return startLine; }
            set { startLine = value; }
        }

        int endLine = -1;
        public int EndLine
        {
            get { return endLine; }
            set { endLine = value; }
        }

        DateTime upTime = DateTime.Now;
        public DateTime UpTime
        {
            get { return upTime; }
            set { upTime = value; }
        }

        int cid = -1;
        public int Cid
        {
            get { return cid; }
            set { cid = value; }
        }

        int agree = -1;
        public int Agree
        {
            get { return agree; }
            set { agree = value; }
        }

        int disagree = -1;
        public int Disagree
        {
            get { return disagree; }
            set { disagree = value; }
        }
        string context = "";

        public string Context
        {
            get { return context; }
            set { context = value; }
        }

 }
