using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using WebTestRikoAdeRinanda.Models;
using System.Reflection;
using System.Data.SqlClient;
using System.Text.RegularExpressions;
using System.IO;

namespace WebTestRikoAdeRinanda.Function
{
    
    public static class StringExtensions
    {
        public static string RemoveLast(this string text, string character)
        {
            if (text.Length < 1) return text;
            return text.Remove(text.ToString().LastIndexOf(character), character.Length);
        }
        public static string Left(this string value, int maxLength)
        {
            if (string.IsNullOrEmpty(value)) return value;
            maxLength = Math.Abs(maxLength);

            return (value.Length <= maxLength
                   ? value
                   : value.Substring(0, maxLength)
                   );
        }
        public static string Right(this string value, int length)
        {
            return value.Substring(value.Length - length);
        }
        public static int ToInt(this string value)
        {
            return int.Parse(value);
        }
        public static int? AsInt(this string s)
        {
            int result;
            if (s == null)
                return null;
            else if (int.TryParse(s, out result))
                return result;
            else
                return null;
        }
        public static decimal toDecimal(this string value)
        {
            decimal res = 0;
            try
            {
                string number = Regex.Replace(value, "[^.0-9]", "");
                res = Convert.ToDecimal(number);
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                return 0;
            }
            return res;
        }
        public static string toNumber(this string value)
        {
            string res = "0";
            try
            {
                string number = Regex.Replace(value, "[^.0-9]", "");
                res = Convert.ToDecimal(number).ToString("#,##0");
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                return "0";
            }
            return res;
        }
    }


    public class GlobalFunction
    {
        public SqlConnection conn = new SqlConnection();
        public SqlCommand cmd = new SqlCommand();

        public string GenID()
        {
            StringBuilder builder = new StringBuilder();
            Enumerable
               .Range(65, 26)
                .Select(e => ((char)e).ToString())
                .Concat(Enumerable.Range(97, 26).Select(e => ((char)e).ToString()))
                .Concat(Enumerable.Range(0, 10).Select(e => e.ToString()))
                .OrderBy(e => Guid.NewGuid())
                .Take(11)
                .ToList().ForEach(e => builder.Append(e));
            string id = builder.ToString();
            return id;
        }
        public string GuidSha256(string url)
        {
            SHA256 shaAlgorithm = new SHA256Managed();
            byte[] shaDigest = shaAlgorithm.ComputeHash(ASCIIEncoding.ASCII.GetBytes(url));
            return BitConverter.ToString(shaDigest);
        }
        public object GetPropValue(object source, string propertyName)
        {
            var property = source.GetType().GetRuntimeProperties().FirstOrDefault(p => string.Equals(p.Name, propertyName, StringComparison.OrdinalIgnoreCase));
            if (property != null)
            {
                if (property.GetValue(source) != null)
                {
                    return property?.GetValue(source);
                }
                else
                {
                    return null;
                }
            }
            else
            {
                return null;
            }

        }


        public string GetDatetime()
        {
            string res = "";
            try
            {
                conn.ConnectionString = Config.ConStr;
                using (var connection = conn)
                {
                    connection.Open();
                    string sql = "exec SP_GetDateTime";
                    using (var command = new SqlCommand(sql, connection))
                    {
                        command.CommandTimeout = 0;
                        using (var reader = command.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                res = reader["tanggal"].ToString();
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return res;
        }

        public int GetDiffDays(string Date1, string Date2)
        {
            int r = 0;
            try
            {
                conn.ConnectionString = Config.ConStr;
                using (var connection = conn)
                {
                    connection.Open();
                    string sql = "exec SP_GetDiffDays '"+Date1+"','"+Date2+"'";
                    using (var command = new SqlCommand(sql, connection))
                    {
                        command.CommandTimeout = 0;
                        using (var reader = command.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                r = reader["Total"].ToString().ToInt();
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return r;
        }

        #region UserPP
        public UserData GetProfileUser(int IdUser)
        {
            var res = new UserData();
            try
            {
                conn.ConnectionString = Config.ConStr;
                using (var connection = conn)
                {
                    connection.Open();
                    string sql = "exec SP_GetProfileUser " +
                        "@IdUser=" + IdUser + "";
                    using (var command = new SqlCommand(sql, connection))
                    {
                        command.CommandTimeout = 0;
                        using (var reader = command.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                Type type = res.GetType();
                                PropertyInfo[] props = type.GetProperties();
                                foreach (var p in props)
                                {
                                    if (null != p && p.CanWrite)
                                    {
                                        if (p.Name != "" && p.Name != "Error" && p.PropertyType.Name.ToString() != "IFormFile")
                                        {
                                            if (p.PropertyType.Name.ToString() == "Int32")
                                            {
                                                int val = reader[p.Name].ToString().AsInt() ?? 0;
                                                p.SetValue(res, val, null);
                                            }
                                            else
                                            {
                                                p.SetValue(res, reader[p.Name].ToString(), null);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return res;
        }
        public List<ModuleData> GetModulByAkses(string IdUser)
        {
            var res = new List<ModuleData>();
            try
            {
                conn.ConnectionString = Config.ConStr;
                using (var connection = conn)
                {
                    connection.Open();
                    string sql = "exec SP_GetModulByAkses " +
                        "@IdUser=" + IdUser + "";
                    using (var command = new SqlCommand(sql, connection))
                    {
                        command.CommandTimeout = 0;
                        using (var reader = command.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                var d = new ModuleData();
                                d.IdModul = reader["IdModul"].ToString().ToInt();
                                d.NamaModule = reader["NamaModule"].ToString();
                                res.Add(d);
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return res;
        }

        public List<MenuData> GetMenuByAkses(string IdUser,string IdModule,string Posisi)
        {
            var res = new List<MenuData>();
            try
            {
                conn.ConnectionString = Config.ConStr;
                using (var connection = conn)
                {
                    connection.Open();
                    string sql = "exec SP_GetMenuByAkses " +
                        "@IdUser=" + IdUser + "," +
                        "@IdModule=" + IdModule + "," +
                        "@Posisi=" + Posisi + "" +
                        "";
                    using (var command = new SqlCommand(sql, connection))
                    {
                        command.CommandTimeout = 0;
                        using (var reader = command.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                var d = new MenuData();
                                d.idMenu = reader["idMenu"].ToString().ToInt();
                                d.NamaMenu = reader["NamaMenu"].ToString();
                                d.Action = reader["Action"].ToString();
                                d.Controller= reader["Controller"].ToString();
                                d.Img = reader["Img"].ToString();
                                res.Add(d);
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return res;
        }
        #endregion

    }
}
