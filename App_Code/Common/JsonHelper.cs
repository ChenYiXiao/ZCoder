using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Runtime.Serialization;

using System.Runtime.Serialization.Json;

using System.IO;
using System.Text;
/// <summary>
///JsonHelper 的摘要说明
/// </summary>
public class JsonHelper
{
    public JsonHelper()
    {
    }
    /// <summary> 
    /// 将可序列的类转化Json数据格式；[采用.net3.5自带的json支持类] 
    /// </summary> 
    /// <param name="obj"></param> 
    /// <returns></returns> 
    public static string ObjectToJson<T>(T obj)
    {
        DataContractJsonSerializer ds = new DataContractJsonSerializer(typeof(T));
        MemoryStream ms = new MemoryStream();
        ds.WriteObject(ms, obj);
        string strJSON = Encoding.UTF8.GetString(ms.ToArray());
        ms.Close();
        return strJSON;
    }

    /// <summary> 
    /// 将指定的Json字符串转化为指定的实体类；[采用.net3.5自带的json支持类] 
    /// </summary>
    /// <typeparam name="T"></typeparam>
    /// <param name="sJson"></param>
    /// <returns></returns>
    public static T JsonStringToObject<T>(string sJson) where T : class
    {

        DataContractJsonSerializer ds = new DataContractJsonSerializer(typeof(T));

        MemoryStream ms = new MemoryStream(Encoding.UTF8.GetBytes(sJson));

        T obj = (T)ds.ReadObject(ms);

        ms.Close();

        return obj;

    }

}