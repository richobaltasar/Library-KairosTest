using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using WebTestRikoAdeRinanda.Models;
using System.Reflection;
using System.Data.SqlClient;

using Microsoft.AspNetCore.Mvc.Rendering;

namespace WebTestRikoAdeRinanda.Function
{
    public class UserFuction
    {
        GlobalFunction GF = new GlobalFunction();
        MasterFunction M = new MasterFunction();

        public SqlConnection conn = new SqlConnection();
        public SqlCommand cmd = new SqlCommand();
        #region User Data
        public async Task<List<UserData>> UserData_Get()
        {
            var res = new List<UserData>();
            try
            {
                conn.ConnectionString = Config.ConStr;
                using (var connection = conn)
                {
                    connection.Open();
                    string sql = "exec SP_UserData_Get" +
                        "";
                    using (var command = new SqlCommand(sql, connection))
                    {
                        command.CommandTimeout = 0;
                        using (var reader = await command.ExecuteReaderAsync())
                        {
                            while (reader.Read())
                            {
                                var d = new UserData();
                                d.id = reader["id"].ToString().ToInt();
                                d.NamaLengkap = reader["NamaLengkap"].ToString();
                                d.password = reader["password"].ToString();
                                d.Photo = reader["Photo"].ToString();
                                d.RoleName = reader["RoleName"].ToString();
                                d.Status = reader["Status"].ToString().ToInt();
                                d.username = reader["username"].ToString();
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
        public async Task<ErrorViewModel> UserData_Save(UserData Data)
        {
            var res = new ErrorViewModel();
            try
            {
                conn.ConnectionString = Config.ConStr;
                using (var connection = conn)
                {
                    connection.Open();
                    string sql = "exec SP_UserData_Save " +
                        "@id="+Data.id+"," +
                        "@username='" + Data.username + "'," +
                        "@password='" + Data.password+ "'," +
                        "@RoleId=" + Data.RoleId + "," +
                        "@NamaLengkap='" + Data.NamaLengkap + "'," +
                        "@Photo='" + Data.Photo + "'," +
                        "@Status=" + Data.Status + "" +
                        "";
                    

                    using (var command = new SqlCommand(sql, connection))
                    {
                        command.CommandTimeout = 0;
                        using (var reader = await command.ExecuteReaderAsync())
                        {
                            while (reader.Read())
                            {
                                res.MessageTitle = reader["Title"].ToString();
                                res.MessageContent = reader["Message"].ToString();
                                res.MessageStatus = reader["Status"].ToString();
                                res.RequestId = reader["Id"].ToString();
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
        public async Task<ErrorViewModel> UserData_Del(int Id)
        {
            var res = new ErrorViewModel();
            try
            {
                conn.ConnectionString = Config.ConStr;
                using (var connection = conn)
                {
                    connection.Open();
                    string sql = "exec SP_UserData_Del @Id=" + Id.ToString() + "" +
                        "";

                    using (var command = new SqlCommand(sql, connection))
                    {
                        command.CommandTimeout = 0;
                        using (var reader = await command.ExecuteReaderAsync())
                        {
                            while (reader.Read())
                            {
                                res.MessageTitle = reader["Title"].ToString();
                                res.MessageContent = reader["Message"].ToString();
                                res.MessageStatus = reader["Status"].ToString();
                                res.RequestId = reader["Id"].ToString();
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
        public async Task<UserData> UserData_GetById(int Id)
        {
            var res = new UserData();
            try
            {
                conn.ConnectionString = Config.ConStr;
                using (var connection = conn)
                {
                    connection.Open();
                    string sql = "exec SP_UserData_GetById @Id=" + Id + "" +
                        "";

                    using (var command = new SqlCommand(sql, connection))
                    {
                        command.CommandTimeout = 0;
                        using (var reader = await command.ExecuteReaderAsync())
                        {
                            while (reader.Read())
                            {
                                res.id = reader["id"].ToString().ToInt();
                                res.NamaLengkap = reader["NamaLengkap"].ToString();
                                res.password = reader["password"].ToString();
                                res.Photo = reader["Photo"].ToString();
                                res.RoleId = reader["RoleId"].ToString().ToInt();
                                res.Status = reader["Status"].ToString().ToInt();
                                res.username = reader["username"].ToString();
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
        public async Task<List<UserData>> UserData_GetSearch(UserData Data)
        {
            var res = new List<UserData>();
            try
            {
                var filter = M.GetFormLayoutForFilter("Form UserData");
                conn.ConnectionString = Config.ConStr;
                using (var connection = conn)
                {
                    connection.Open();
                    string sql = "exec SP_UserData_GetSearch " +
                                "@username='"+Data.username+"'";
                    using (var command = new SqlCommand(sql, connection))
                    {
                        command.CommandTimeout = 0;
                        using (var reader = await command.ExecuteReaderAsync())
                        {
                            while (reader.Read())
                            {
                                var d = new UserData();
                                d.id = reader["id"].ToString().ToInt();
                                d.NamaLengkap = reader["NamaLengkap"].ToString();
                                d.password = reader["password"].ToString();
                                d.Photo = reader["Photo"].ToString();
                                d.RoleName = reader["RoleName"].ToString();
                                d.RoleId = reader["RoleId"].ToString().ToInt();
                                d.Status = reader["Status"].ToString().ToInt();
                                d.username = reader["username"].ToString();
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
