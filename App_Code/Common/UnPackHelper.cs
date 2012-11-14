/***************************************************************************************************
 *                    (c) Copyright 1992-2009 Embedded Products Research Center
 *                                       All Rights Reserved
 *
 *\File          usdl_xxx.h
 *\Description   XXXXXXXXXXXXX
 *\Log           2008.XX.XX    Ver 1.0    张三
 *               创建文件。
 ***************************************************************************************************/
using System;
using System.Collections.Generic;
using System.Text;
using System.Diagnostics;
using Microsoft.Win32;

    /// <summary>
    /// 解压帮助类
    /// </summary>
    public class UnPackHelper
    {
        /// <summary>
        /// 构造函数
        /// </summary>
        /// <param name="filePath">解压文件路径</param>
        /// <param name="folder">解压到文件夹</param>
        public UnPackHelper(string filePath, string folder)
        {
            FilePath = filePath;
            UnPackDirectory = folder;
        }

        private string m_FilePath;

        /// <summary>
        /// 解压文件路径
        /// </summary>
        public string FilePath
        {
            get { return m_FilePath; }
            set { m_FilePath = value; }
        }

        private string m_UnPackDirectory;

        /// <summary>
        /// 解压到文件夹路径
        /// </summary>
        public string UnPackDirectory
        {
            get { return m_UnPackDirectory; }
            set { m_UnPackDirectory = value; }
        }

        /// <summary>
        /// 解压开始
        /// </summary>
        public void DoUnPack()
        {
            Console.WriteLine("开始解压......");
            RegistryKey reg;
            string rarPath;
            Process process = new Process();

            try
            {
                reg = Registry.LocalMachine.OpenSubKey(@"SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\WinRAR.exe");
                rarPath = reg.GetValue("").ToString();
          
                process.StartInfo.FileName = rarPath;
                //process.StartInfo.CreateNoWindow = true;
                process.StartInfo.UseShellExecute = false;
                // -0+ 如果已经存在则覆盖
                process.StartInfo.Arguments = "x " + FilePath + " " + UnPackDirectory ;//这里是命令行 请参考winrar的说明
                //开始解压
                process.Start();
                //进程终止
                
                if (process.HasExited)
                {
                    int exitCode = process.ExitCode;
                    if (exitCode == 0)
                        Console.WriteLine("{0} 正常完成", exitCode.ToString());
                    else
                        Console.WriteLine("{0} 正常完成", exitCode.ToString());
                }
                Console.WriteLine("解压完成");
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                //释放资源
              //  process.Close();
                process.CloseMainWindow();
                process.WaitForExit();
             //  
            }
        }

        /// <summary>
        /// 外部调用解压
        /// </summary>
        /// <param name="filePath"></param>
        /// <param name="folder"></param>
        public static void DoUnPack(string filePath, string folder)
        {
            UnPackHelper helper = new UnPackHelper(filePath, folder);
            helper.DoUnPack();
        }
    }
