﻿using System;
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
    public class MasterFunction
    {
        GlobalFunction GF = new GlobalFunction();
        public SqlConnection conn = new SqlConnection();
        public SqlCommand cmd = new SqlCommand();

        #region Module Data
        public async Task<List<ModuleData>> ModuleData_Get()
        {
            var res = new List<ModuleData>();
            try
            {
                conn.ConnectionString = Config.ConStr;
                using (var connection = conn)
                {
                    connection.Open();
                    string sql = "exec SP_ModuleData_Get" +
                        "";

                    using (var command = new SqlCommand(sql, connection))
                    {
                        command.CommandTimeout = 0;
                        using (var reader = await command.ExecuteReaderAsync())
                        {
                            while (reader.Read())
                            {
                                var d = new ModuleData();
                                Type type = d.GetType();
                                PropertyInfo[] props = type.GetProperties();
                                foreach (var p in props)
                                {
                                    if (null != p && p.CanWrite)
                                    {
                                        if (p.Name != "" && p.Name != "Error" && p.PropertyType.Name.ToString() != "IFormFile")
                                        {
                                            if(p.PropertyType.Name.ToString() == "Int32")
                                            {
                                                int val = reader[p.Name].ToString().AsInt() ?? 0;
                                                p.SetValue(d, val, null);
                                            }
                                            else
                                            {
                                                p.SetValue(d, reader[p.Name].ToString(), null);
                                            }
                                        }
                                    }
                                }
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
        public async Task<ErrorViewModel> ModuleData_Save(ModuleData Data)
        {
            var res = new ErrorViewModel();
            try
            {
                conn.ConnectionString = Config.ConStr;
                using (var connection = conn)
                {
                    connection.Open();
                    string sql = "exec SP_ModuleData_Save ";
                    Type type = Data.GetType();
                    PropertyInfo[] props = type.GetProperties();
                    foreach (var p in props)
                    {
                        if (null != p && p.CanWrite)
                        {
                            if (p.Name != "" && p.Name != "Error" && p.PropertyType.Name.ToString() != "IFormFile")
                            {
                                string param = "";
                                if (p.PropertyType.Name.ToString() == "String")
                                {
                                     param= "@"+p.Name+"='"+ p.GetValue(Data).ToString()+"',";
                                }
                                else
                                {
                                    param = "@" + p.Name + "=" + p.GetValue(Data).ToString() + ",";
                                }
                                sql = sql + param;
                            }
                        }
                    }

                    sql = sql.RemoveLast(",");

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
        public async Task<ErrorViewModel> ModuleData_Del(int Id)
        {
            var res = new ErrorViewModel();
            try
            {
                conn.ConnectionString = Config.ConStr;
                using (var connection = conn)
                {
                    connection.Open();
                    string sql = "exec SP_ModuleData_Del @Id="+Id.ToString()+"" +
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
        public async Task<ModuleData> ModuleData_GetById(int Id)
        {
            var res = new ModuleData();
            try
            {
                conn.ConnectionString = Config.ConStr;
                using (var connection = conn)
                {
                    connection.Open();
                    string sql = "exec SP_ModuleData_Get_ById @Id="+Id+"" +
                        "";

                    using (var command = new SqlCommand(sql, connection))
                    {
                        command.CommandTimeout = 0;
                        using (var reader = await command.ExecuteReaderAsync())
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

        public async Task<List<ModuleData>> ModuleData_GetSearch(ModuleData Data)
        {
            var res = new List<ModuleData>();
            try
            {
                var filter = GetFormLayoutForFilter("Form Master CRUD");
                conn.ConnectionString = Config.ConStr;
                using (var connection = conn)
                {
                    connection.Open();
                    string sql = "exec SP_ModuleData_GetSearch ";
                    

                    Type type1 = Data.GetType();
                    PropertyInfo[] props1 = type1.GetProperties();
                    foreach(var d in filter)
                    {
                        foreach (var p in props1)
                        {
                            if (null != p && p.CanWrite)
                            {
                                if (p.Name != "" && p.Name != "Error" && p.PropertyType.Name.ToString() != "IFormFile" && p.Name == d.Id)
                                {
                                    string param = "";
                                    if (p.PropertyType.Name.ToString() == "String")
                                    {
                                        var val = p.GetValue(Data) ?? "";
                                        param = "@" + p.Name + "='" + val.ToString() + "',";
                                    }
                                    else
                                    {
                                        var val = p.GetValue(Data) ?? "";
                                        param = "@" + p.Name + "=" + val.ToString() + ",";
                                    }
                                    sql = sql + param;
                                }
                            }
                        }
                    }

                    
                    sql = sql.RemoveLast(",");
                    using (var command = new SqlCommand(sql, connection))
                    {
                        command.CommandTimeout = 0;
                        using (var reader = await command.ExecuteReaderAsync())
                        {
                            while (reader.Read())
                            {
                                var d = new ModuleData();
                                Type type = d.GetType();
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
                                                p.SetValue(d, val, null);
                                            }
                                            else
                                            {
                                                p.SetValue(d, reader[p.Name].ToString(), null);
                                            }
                                        }
                                    }
                                }
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

        #region Menu Data
        public async Task<List<MenuData>> MenuData_Get()
        {
            var res = new List<MenuData>();
            try
            {
                conn.ConnectionString = Config.ConStr;
                using (var connection = conn)
                {
                    connection.Open();
                    string sql = "exec SP_MenuData_Get" +
                        "";

                    using (var command = new SqlCommand(sql, connection))
                    {
                        command.CommandTimeout = 0;
                        using (var reader = await command.ExecuteReaderAsync())
                        {
                            while (reader.Read())
                            {
                                var d = new MenuData();
                                Type type = d.GetType();
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
                                                p.SetValue(d, val, null);
                                            }
                                            else
                                            {
                                                p.SetValue(d, reader[p.Name].ToString(), null);
                                            }
                                        }
                                    }
                                }
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
        public async Task<ErrorViewModel> MenuData_Save(MenuData Data)
        {
            var res = new ErrorViewModel();
            try
            {
                conn.ConnectionString = Config.ConStr;
                using (var connection = conn)
                {
                    connection.Open();
                    string sql = "exec SP_MenuData_Save ";
                    Type type = Data.GetType();
                    PropertyInfo[] props = type.GetProperties();
                    foreach (var p in props)
                    {
                        if (null != p && p.CanWrite)
                        {
                            if (p.Name != "" && p.Name != "Error" && p.PropertyType.Name.ToString() != "IFormFile")
                            {
                                string param = "";
                                if (p.PropertyType.Name.ToString() == "String")
                                {
                                    var val = p.GetValue(Data) ?? "";
                                    param = "@" + p.Name + "='" + val.ToString() + "',";
                                }
                                else
                                {
                                    param = "@" + p.Name + "=" + p.GetValue(Data).ToString() + ",";
                                }
                                sql = sql + param;
                            }
                        }
                    }

                    sql = sql.RemoveLast(",");

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

       
        public async Task<ErrorViewModel> MenuData_Del(int Id)
        {
            var res = new ErrorViewModel();
            try
            {
                conn.ConnectionString = Config.ConStr;
                using (var connection = conn)
                {
                    connection.Open();
                    string sql = "exec SP_MenuData_Del @Id=" + Id.ToString() + "" +
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
        public async Task<MenuData> MenuData_GetById(int Id)
        {
            var res = new MenuData();
            try
            {
                conn.ConnectionString = Config.ConStr;
                using (var connection = conn)
                {
                    connection.Open();
                    string sql = "exec SP_MenuData_Get_ById @Id=" + Id + "" +
                        "";

                    using (var command = new SqlCommand(sql, connection))
                    {
                        command.CommandTimeout = 0;
                        using (var reader = await command.ExecuteReaderAsync())
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
        public async Task<List<MenuData>> MenuData_GetSearch(MenuData Data)
        {
            var res = new List<MenuData>();
            try
            {
                var filter = GetFormLayoutForFilter("Form Master Menu");
                conn.ConnectionString = Config.ConStr;
                using (var connection = conn)
                {
                    connection.Open();
                    string sql = "exec SP_MenuData_GetSearch ";
                    Type type1 = Data.GetType();
                    PropertyInfo[] props1 = type1.GetProperties();
                    foreach (var d in filter)
                    {
                        foreach (var p in props1)
                        {
                            if (null != p && p.CanWrite)
                            {
                                if (p.Name != "" && p.Name != "Error" && p.PropertyType.Name.ToString() != "IFormFile" && p.Name == d.Id)
                                {
                                    string param = "";
                                    if (p.PropertyType.Name.ToString() == "String")
                                    {
                                        var val = p.GetValue(Data) ?? "";
                                        param = "@" + p.Name + "='" + val.ToString() + "',";
                                    }
                                    else
                                    {
                                        var val = p.GetValue(Data) ?? "";
                                        param = "@" + p.Name + "=" + val.ToString() + ",";
                                    }
                                    sql = sql + param;
                                }
                            }
                        }
                    }
                    sql = sql.RemoveLast(",");
                    using (var command = new SqlCommand(sql, connection))
                    {
                        command.CommandTimeout = 0;
                        using (var reader = await command.ExecuteReaderAsync())
                        {
                            while (reader.Read())
                            {
                                var d = new MenuData();
                                Type type = d.GetType();
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
                                                p.SetValue(d, val, null);
                                            }
                                            else
                                            {
                                                p.SetValue(d, reader[p.Name].ToString(), null);
                                            }
                                        }
                                    }
                                }
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
        public async Task<List<MenuData>> MenuData_GetMenuByIdModule(int IdModule)
        {
            var res = new List<MenuData>();
            try
            {
                conn.ConnectionString = Config.ConStr;
                using (var connection = conn)
                {
                    connection.Open();
                    string sql = "exec SP_MenuData_GetMenuByIdModule @Id="+IdModule+"" +
                        "";

                    using (var command = new SqlCommand(sql, connection))
                    {
                        command.CommandTimeout = 0;
                        using (var reader = await command.ExecuteReaderAsync())
                        {
                            while (reader.Read())
                            {
                                var d = new MenuData();
                                Type type = d.GetType();
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
                                                p.SetValue(d, val, null);
                                            }
                                            else
                                            {
                                                p.SetValue(d, reader[p.Name].ToString(), null);
                                            }
                                        }
                                    }
                                }
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
        public async Task<List<SelectListItem>> MenuData_GetParent(int IdModule, int IdMenu, int IdPosisi)
        {
            var res = new List<SelectListItem>();
            try
            {
                conn.ConnectionString = Config.ConStr;
                using (var connection = conn)
                {
                    connection.Open();
                    string sql = "exec SP_MenuData_GetParent " +
                        "@IdModule=" + IdModule + "," +
                        "@IdMenu="+ IdMenu + "," +
                        "@IdPosisi=" + IdPosisi + "" +
                        "";

                    using (var command = new SqlCommand(sql, connection))
                    {
                        command.CommandTimeout = 0;
                        using (var reader = await command.ExecuteReaderAsync())
                        {
                            while (reader.Read())
                            {
                                var d = new SelectListItem();
                                d.Text = reader["Text"].ToString();
                                d.Value = reader["Value"].ToString();
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

        #region Form Data
        public async Task<List<FormData>> FormData_GetSearch(FormData Data)
        {
            var res = new List<FormData>();
            try
            {
                var filter = GetFormLayoutForFilter("Form FormData");
                conn.ConnectionString = Config.ConStr;
                using (var connection = conn)
                {
                    connection.Open();
                    string sql = "exec SP_FormData_GetSearch ";

                    Type type1 = Data.GetType();
                    PropertyInfo[] props1 = type1.GetProperties();
                    foreach (var d in filter)
                    {
                        foreach (var p in props1)
                        {
                            if (null != p && p.CanWrite)
                            {
                                if (p.Name != "" && p.Name != "Error" && p.PropertyType.Name.ToString() != "IFormFile" && p.Name == d.Id)
                                {
                                    string param = "";
                                    if (p.PropertyType.Name.ToString() == "String")
                                    {
                                        var val = p.GetValue(Data) ?? "";
                                        param = "@" + p.Name + "='" + val.ToString() + "',";
                                    }
                                    else
                                    {
                                        var val = p.GetValue(Data) ?? "";
                                        param = "@" + p.Name + "=" + val.ToString() + ",";
                                    }
                                    sql = sql + param;
                                }
                            }
                        }
                    }

                    sql = sql.RemoveLast(",");
                    using (var command = new SqlCommand(sql, connection))
                    {
                        command.CommandTimeout = 0;
                        using (var reader = await command.ExecuteReaderAsync())
                        {
                            while (reader.Read())
                            {
                                var d = new FormData();
                                Type type = d.GetType();
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
                                                p.SetValue(d, val, null);
                                            }
                                            else
                                            {
                                                p.SetValue(d, reader[p.Name].ToString(), null);
                                            }
                                        }
                                    }
                                }
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
        public async Task<List<FormData>> FormData_Get()
        {
            var res = new List<FormData>();
            try
            {
                conn.ConnectionString = Config.ConStr;
                using (var connection = conn)
                {
                    connection.Open();
                    string sql = "exec SP_FormData_Get" +
                        "";
                    using (var command = new SqlCommand(sql, connection))
                    {
                        command.CommandTimeout = 0;
                        using (var reader = await command.ExecuteReaderAsync())
                        {
                            while (reader.Read())
                            {
                                var d = new FormData();
                                Type type = d.GetType();
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
                                                p.SetValue(d, val, null);
                                            }
                                            else
                                            {
                                                p.SetValue(d, reader[p.Name].ToString(), null);
                                            }
                                        }
                                    }
                                }
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
        public async Task<ErrorViewModel> FormData_Save(FormData Data)
        {
            var res = new ErrorViewModel();
            try
            {
                conn.ConnectionString = Config.ConStr;
                using (var connection = conn)
                {
                    connection.Open();
                    string sql = "exec SP_FormData_Save ";
                    Type type = Data.GetType();
                    PropertyInfo[] props = type.GetProperties();
                    foreach (var p in props)
                    {
                        if (null != p && p.CanWrite)
                        {
                            if (p.Name != "" && p.Name != "Error" && p.PropertyType.Name.ToString() != "IFormFile")
                            {
                                string param = "";
                                if (p.PropertyType.Name.ToString() == "String")
                                {
                                    var val = p.GetValue(Data) ?? "";
                                    param = "@" + p.Name + "='" + val.ToString() + "',";
                                }
                                else
                                {
                                    var val = p.GetValue(Data) ?? "";
                                    param = "@" + p.Name + "=" + val.ToString() + ",";
                                }
                                sql = sql + param;
                            }
                        }
                    }

                    sql = sql.RemoveLast(",");

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
        public async Task<ErrorViewModel> FormData_Del(int Id)
        {
            var res = new ErrorViewModel();
            try
            {
                conn.ConnectionString = Config.ConStr;
                using (var connection = conn)
                {
                    connection.Open();
                    string sql = "exec SP_FormData_Del @Id=" + Id.ToString() + "" +
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
        public async Task<FormData> FormData_GetById(int Id)
        {
            var res = new FormData();
            try
            {
                conn.ConnectionString = Config.ConStr;
                using (var connection = conn)
                {
                    connection.Open();
                    string sql = "exec SP_FormData_GetById @Id=" + Id + "" +
                        "";

                    using (var command = new SqlCommand(sql, connection))
                    {
                        command.CommandTimeout = 0;
                        using (var reader = await command.ExecuteReaderAsync())
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


        public List<FormMaster> GetFormLayout(string Page)
        {
            var res = new List<FormMaster>();
            try
            {
                conn.ConnectionString = Config.ConStr;
                using (var connection = conn)
                {
                    connection.Open();
                    string sql = "select*from Master_Form where NamaForm='" + Page + "' order by Urutan asc";
                    using (var command = new SqlCommand(sql, connection))
                    {
                        command.CommandTimeout = 0;
                        using (var reader = command.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                var d = new FormMaster();
                                Type type = d.GetType();
                                PropertyInfo[] props = type.GetProperties();
                                foreach (var p in props)
                                {
                                    if (null != p && p.CanWrite)
                                    {
                                        if (p.Name != "")
                                        {
                                            p.SetValue(d, reader[p.Name].ToString(), null);
                                        }
                                    }
                                }
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
        public List<FormMaster> GetFormLayoutForFilter(string Page)
        {
            var res = new List<FormMaster>();
            try
            {
                conn.ConnectionString = Config.ConStr;
                using (var connection = conn)
                {
                    connection.Open();
                    string sql = "select*from Master_Form where NamaForm='" + Page + "' and FilterBy=1 order by Urutan asc";
                    using (var command = new SqlCommand(sql, connection))
                    {
                        command.CommandTimeout = 0;
                        using (var reader = command.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                var d = new FormMaster();
                                Type type = d.GetType();
                                PropertyInfo[] props = type.GetProperties();
                                foreach (var p in props)
                                {
                                    if (null != p && p.CanWrite)
                                    {
                                        if (p.Name != "")
                                        {
                                            p.SetValue(d, reader[p.Name].ToString(), null);
                                        }
                                    }
                                }
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

        #region ListItemData

        public async Task<List<ListItemData>> ListItemData_Get()
        {
            var res = new List<ListItemData>();
            try
            {
                conn.ConnectionString = Config.ConStr;
                using (var connection = conn)
                {
                    connection.Open();
                    string sql = "exec SP_ListItemData_Get" +
                        "";
                    using (var command = new SqlCommand(sql, connection))
                    {
                        command.CommandTimeout = 0;
                        using (var reader = await command.ExecuteReaderAsync())
                        {
                            while (reader.Read())
                            {
                                var d = new ListItemData();
                                Type type = d.GetType();
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
                                                p.SetValue(d, val, null);
                                            }
                                            else
                                            {
                                                p.SetValue(d, reader[p.Name].ToString(), null);
                                            }
                                        }
                                    }
                                }
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
        public async Task<ErrorViewModel> ListItemData_Save(ListItemData Data)
        {
            var res = new ErrorViewModel();
            try
            {
                conn.ConnectionString = Config.ConStr;
                using (var connection = conn)
                {
                    connection.Open();
                    string sql = "exec SP_ListItemData_Save ";
                    Type type = Data.GetType();
                    PropertyInfo[] props = type.GetProperties();
                    foreach (var p in props)
                    {
                        if (null != p && p.CanWrite)
                        {
                            if (p.Name != "" && p.Name != "Error" && p.PropertyType.Name.ToString() != "IFormFile")
                            {
                                string param = "";
                                if (p.PropertyType.Name.ToString() == "String")
                                {
                                    var val = p.GetValue(Data) ?? "";
                                    param = "@" + p.Name + "='" + val.ToString() + "',";
                                }
                                else
                                {
                                    var val = p.GetValue(Data) ?? "";
                                    param = "@" + p.Name + "=" + val.ToString() + ",";
                                }
                                sql = sql + param;
                            }
                        }
                    }

                    sql = sql.RemoveLast(",");

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
        public async Task<ErrorViewModel> ListItemData_Del(int Id)
        {
            var res = new ErrorViewModel();
            try
            {
                conn.ConnectionString = Config.ConStr;
                using (var connection = conn)
                {
                    connection.Open();
                    string sql = "exec SP_ListItemData_Del @Id=" + Id.ToString() + "" +
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
        public async Task<ListItemData> ListItemData_GetById(int Id)
        {
            var res = new ListItemData();
            try
            {
                conn.ConnectionString = Config.ConStr;
                using (var connection = conn)
                {
                    connection.Open();
                    string sql = "exec SP_ListItemData_GetById @Id=" + Id + "" +
                        "";

                    using (var command = new SqlCommand(sql, connection))
                    {
                        command.CommandTimeout = 0;
                        using (var reader = await command.ExecuteReaderAsync())
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
        public async Task<List<ListItemData>> ListItemData_GetSearch(ListItemData Data)
        {
            var res = new List<ListItemData>();
            try
            {
                var filter = GetFormLayoutForFilter("Form ListItemData");
                conn.ConnectionString = Config.ConStr;
                using (var connection = conn)
                {
                    connection.Open();
                    string sql = "exec SP_ListItemData_GetSearch ";
                    Type type1 = Data.GetType();
                    PropertyInfo[] props1 = type1.GetProperties();
                    foreach (var d in filter)
                    {
                        foreach (var p in props1)
                        {
                            if (null != p && p.CanWrite)
                            {
                                if (p.Name != "" && p.Name != "Error" && p.PropertyType.Name.ToString() != "IFormFile" && p.Name==d.Id)
                                {
                                    string param = "";
                                    if (p.PropertyType.Name.ToString() == "String")
                                    {
                                        var val = p.GetValue(Data) ?? "";
                                        param = "@" + p.Name + "='" + val.ToString() + "',";
                                    }
                                    else
                                    {
                                        var val = p.GetValue(Data) ?? "";
                                        param = "@" + p.Name + "=" + val.ToString() + ",";
                                    }
                                    sql = sql + param;
                                }
                            }
                        }
                    }

                    sql = sql.RemoveLast(",");
                    using (var command = new SqlCommand(sql, connection))
                    {
                        command.CommandTimeout = 0;
                        using (var reader = await command.ExecuteReaderAsync())
                        {
                            while (reader.Read())
                            {
                                var d = new ListItemData();
                                Type type = d.GetType();
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
                                                p.SetValue(d, val, null);
                                            }
                                            else
                                            {
                                                p.SetValue(d, reader[p.Name].ToString(), null);
                                            }
                                        }
                                    }
                                }
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

        public List<SelectListItem> GetListDataMaster(string Data)
        {
            var res = new List<SelectListItem>();
            try
            {
                conn.ConnectionString = Config.ConStr;
                using (var connection = conn)
                {
                    connection.Open();
                    string sql = "exec SP_GetListDataMaster @Data='" + Data + "'";
                    using (var command = new SqlCommand(sql, connection))
                    {
                        command.CommandTimeout = 0;
                        using (var reader = command.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                var data = new SelectListItem();
                                data.Text = reader["Text"].ToString();
                                data.Value = reader["Value"].ToString();
                                res.Add(data);
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

        #region RoleMenuData

        public async Task<List<RoleMenuData>> RoleMenuData_Get()
        {
            var res = new List<RoleMenuData>();
            try
            {
                conn.ConnectionString = Config.ConStr;
                using (var connection = conn)
                {
                    connection.Open();
                    string sql = "exec SP_RoleMenuData_Get" +
                        "";
                    using (var command = new SqlCommand(sql, connection))
                    {
                        command.CommandTimeout = 0;
                        using (var reader = await command.ExecuteReaderAsync())
                        {
                            while (reader.Read())
                            {
                                var d = new RoleMenuData();
                                Type type = d.GetType();
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
                                                p.SetValue(d, val, null);
                                            }
                                            else
                                            {
                                                p.SetValue(d, reader[p.Name].ToString(), null);
                                            }
                                        }
                                    }
                                }
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
        public async Task<ErrorViewModel> RoleMenuData_Save(RoleMenuData Data)
        {
            var res = new ErrorViewModel();
            try
            {
                conn.ConnectionString = Config.ConStr;
                using (var connection = conn)
                {
                    connection.Open();
                    string sql = "exec SP_RoleMenuData_Save ";
                    Type type = Data.GetType();
                    PropertyInfo[] props = type.GetProperties();
                    foreach (var p in props)
                    {
                        if (null != p && p.CanWrite)
                        {
                            if (p.Name != "" && p.Name != "Error" && p.PropertyType.Name.ToString() != "IFormFile")
                            {
                                string param = "";
                                if (p.PropertyType.Name.ToString() == "String")
                                {
                                    if(p.GetValue(Data) != null)
                                    {
                                        var val = p.GetValue(Data) ?? "";
                                        param = "@" + p.Name + "='" + val.ToString() + "',";
                                    }
                                }
                                else
                                {
                                    var val = p.GetValue(Data) ?? "";
                                    param = "@" + p.Name + "=" + val.ToString() + ",";
                                }
                                sql = sql + param;
                            }
                        }
                    }

                    sql = sql.RemoveLast(",");

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
        public async Task<ErrorViewModel> RoleMenuData_Del(int Id)
        {
            var res = new ErrorViewModel();
            try
            {
                conn.ConnectionString = Config.ConStr;
                using (var connection = conn)
                {
                    connection.Open();
                    string sql = "exec SP_RoleMenuData_Del @Id=" + Id.ToString() + "" +
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
        public async Task<RoleMenuData> RoleMenuData_GetById(int Id)
        {
            var res = new RoleMenuData();
            try
            {
                conn.ConnectionString = Config.ConStr;
                using (var connection = conn)
                {
                    connection.Open();
                    string sql = "exec SP_RoleMenuData_GetById @Id=" + Id + "" +
                        "";

                    using (var command = new SqlCommand(sql, connection))
                    {
                        command.CommandTimeout = 0;
                        using (var reader = await command.ExecuteReaderAsync())
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
        public async Task<List<RoleMenuData>> RoleMenuData_GetSearch(RoleMenuData Data)
        {
            var res = new List<RoleMenuData>();
            try
            {
                var filter = GetFormLayoutForFilter("Form RoleMenuData");
                conn.ConnectionString = Config.ConStr;
                using (var connection = conn)
                {
                    connection.Open();
                    string sql = "exec SP_RoleMenuData_GetSearch ";
                    Type type1 = Data.GetType();
                    PropertyInfo[] props1 = type1.GetProperties();
                    foreach (var d in filter)
                    {
                        foreach (var p in props1)
                        {
                            if (null != p && p.CanWrite)
                            {
                                if (p.Name != "" && p.Name != "Error" && p.PropertyType.Name.ToString() != "IFormFile" && p.Name == d.Id)
                                {
                                    string param = "";
                                    if (p.PropertyType.Name.ToString() == "String")
                                    {
                                        if (p.GetValue(Data) != null)
                                        {
                                            var val = p.GetValue(Data) ?? "";
                                            param = "@" + p.Name + "='" + val.ToString() + "',";
                                        }
                                    }
                                    else
                                    {
                                        var val = p.GetValue(Data) ?? "";
                                        param = "@" + p.Name + "=" + val.ToString() + ",";
                                    }
                                    sql = sql + param;
                                }
                            }
                        }
                    }
                    sql = sql.RemoveLast(",");
                    using (var command = new SqlCommand(sql, connection))
                    {
                        command.CommandTimeout = 0;
                        using (var reader = await command.ExecuteReaderAsync())
                        {
                            while (reader.Read())
                            {
                                var d = new RoleMenuData();
                                Type type = d.GetType();
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
                                                p.SetValue(d, val, null);
                                            }
                                            else
                                            {
                                                p.SetValue(d, reader[p.Name].ToString(), null);
                                            }
                                        }
                                    }
                                }
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


        #region RoleGroupAkses

        public async Task<List<RoleGroupAkses>> RoleGroupAkses_Get()
        {
            var res = new List<RoleGroupAkses>();
            try
            {
                conn.ConnectionString = Config.ConStr;
                using (var connection = conn)
                {
                    connection.Open();
                    string sql = "exec SP_GroupData_Get" +
                        "";
                    using (var command = new SqlCommand(sql, connection))
                    {
                        command.CommandTimeout = 0;
                        using (var reader = await command.ExecuteReaderAsync())
                        {
                            while (reader.Read())
                            {
                                var d = new RoleGroupAkses();
                                Type type = d.GetType();
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
                                                p.SetValue(d, val, null);
                                            }
                                            else
                                            {
                                                p.SetValue(d, reader[p.Name].ToString(), null);
                                            }
                                        }
                                    }
                                }
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
        public async Task<ErrorViewModel> RoleGroupAkses_Save(RoleGroupAkses Data)
        {
            var res = new ErrorViewModel();
            try
            {
                conn.ConnectionString = Config.ConStr;
                using (var connection = conn)
                {
                    connection.Open();
                    string sql = "exec SP_RoleGroupAkses_Save ";
                    Type type = Data.GetType();
                    PropertyInfo[] props = type.GetProperties();
                    foreach (var p in props)
                    {
                        if (null != p && p.CanWrite)
                        {
                            if (p.Name != "" && p.Name != "Error" && p.PropertyType.Name.ToString() != "IFormFile")
                            {
                                string param = "";
                                if (p.PropertyType.Name.ToString() == "String")
                                {
                                    var val = p.GetValue(Data) ?? "";
                                    param = "@" + p.Name + "='" + val.ToString() + "',";
                                }
                                else
                                {
                                    var val = p.GetValue(Data) ?? "";
                                    param = "@" + p.Name + "=" + val.ToString() + ",";
                                }
                                sql = sql + param;
                            }
                        }
                    }

                    sql = sql.RemoveLast(",");

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
        public async Task<ErrorViewModel> RoleGroupAkses_Del(int Id)
        {
            var res = new ErrorViewModel();
            try
            {
                conn.ConnectionString = Config.ConStr;
                using (var connection = conn)
                {
                    connection.Open();
                    string sql = "exec SP_RoleGroupAkses_Del @Id=" + Id.ToString() + "" +
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
        public async Task<RoleGroupAkses> RoleGroupAkses_GetById(int Id)
        {
            var res = new RoleGroupAkses();
            try
            {
                conn.ConnectionString = Config.ConStr;
                using (var connection = conn)
                {
                    connection.Open();
                    string sql = "exec SP_RoleGroupAkses_GetById @Id=" + Id + "" +
                        "";

                    using (var command = new SqlCommand(sql, connection))
                    {
                        command.CommandTimeout = 0;
                        using (var reader = await command.ExecuteReaderAsync())
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
        public async Task<List<RoleGroupAkses>> RoleGroupAkses_GetSearch(RoleGroupAkses Data)
        {
            var res = new List<RoleGroupAkses>();
            try
            {
                var filter = GetFormLayoutForFilter("Form RoleGroupAkses");
                conn.ConnectionString = Config.ConStr;
                using (var connection = conn)
                {
                    connection.Open();
                    string sql = "exec SP_RoleGroupAkses_GetSearch ";
                    Type type1 = Data.GetType();
                    PropertyInfo[] props1 = type1.GetProperties();
                    foreach (var d in filter)
                    {
                        foreach (var p in props1)
                        {
                            if (null != p && p.CanWrite)
                            {
                                if (p.Name != "" && p.Name != "Error" && p.PropertyType.Name.ToString() != "IFormFile" && p.Name == d.Id)
                                {
                                    string param = "";
                                    if (p.PropertyType.Name.ToString() == "String")
                                    {
                                        var val = p.GetValue(Data) ?? "";
                                        param = "@" + p.Name + "='" + val.ToString() + "',";
                                    }
                                    else
                                    {
                                        var val = p.GetValue(Data) ?? "";
                                        param = "@" + p.Name + "=" + val.ToString() + ",";
                                    }
                                    sql = sql + param;
                                }
                            }
                        }
                    }
                    sql = sql.RemoveLast(",");
                    using (var command = new SqlCommand(sql, connection))
                    {
                        command.CommandTimeout = 0;
                        using (var reader = await command.ExecuteReaderAsync())
                        {
                            while (reader.Read())
                            {
                                var d = new RoleGroupAkses();
                                Type type = d.GetType();
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
                                                p.SetValue(d, val, null);
                                            }
                                            else
                                            {
                                                p.SetValue(d, reader[p.Name].ToString(), null);
                                            }
                                        }
                                    }
                                }
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

        public async Task<List<MenuData>> RoleGroupAkses_ListMenu_Get(int id)
        {
            var res = new List<MenuData>();
            try
            {
                conn.ConnectionString = Config.ConStr;
                using (var connection = conn)
                {
                    connection.Open();
                    string sql = "exec SP_RoleGroupAkses_ListMenu_Get @id="+id+"" +
                        "";
                    using (var command = new SqlCommand(sql, connection))
                    {
                        command.CommandTimeout = 0;
                        using (var reader = await command.ExecuteReaderAsync())
                        {
                            while (reader.Read())
                            {
                                var d = new MenuData();
                                Type type = d.GetType();
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
                                                p.SetValue(d, val, null);
                                            }
                                            else
                                            {
                                                p.SetValue(d, reader[p.Name].ToString(), null);
                                            }
                                        }
                                    }
                                }
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

        public async Task<ErrorViewModel> RoleMenuData_ListMenu_Delete(int id_role, int id_menu)
        {
            var res = new ErrorViewModel();
            try
            {
                conn.ConnectionString = Config.ConStr;
                using (var connection = conn)
                {
                    connection.Open();
                    string sql = "exec SP_RoleMenuData_ListMenu_Delete @IdRole=" + id_role + ",@IdMenu=" +id_menu+"" +
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

        public async Task<List<MenuData>> RoleGroupAkses_ListMenu_Get_NotInList(int id)
        {
            var res = new List<MenuData>();
            try
            {
                conn.ConnectionString = Config.ConStr;
                using (var connection = conn)
                {
                    connection.Open();
                    string sql = "exec SP_RoleGroupAkses_ListMenu_Get_NotInList @id=" + id + "" +
                        "";
                    using (var command = new SqlCommand(sql, connection))
                    {
                        command.CommandTimeout = 0;
                        using (var reader = await command.ExecuteReaderAsync())
                        {
                            while (reader.Read())
                            {
                                var d = new MenuData();
                                Type type = d.GetType();
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
                                                p.SetValue(d, val, null);
                                            }
                                            else
                                            {
                                                p.SetValue(d, reader[p.Name].ToString(), null);
                                            }
                                        }
                                    }
                                }
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
        public async Task<ErrorViewModel> RoleGroupAkses_ListMeny_Add(GroupData_MenuAkses Data)
        {
            var res = new ErrorViewModel();
            try
            {
                conn.ConnectionString = Config.ConStr;
                using (var connection = conn)
                {
                    connection.Open();
                    string sql = "exec SP_RoleGroupAkses_ListMeny_Add @IdRole=" + Data.IdRole + ",@IdMenu=" + Data.IdMenu+"" +
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
        #endregion

        #region Buku Data
        public async Task<List<BukuData>> BukuData_Get()
        {
            var res = new List<BukuData>();
            try
            {
                conn.ConnectionString = Config.ConStr;
                using (var connection = conn)
                {
                    connection.Open();
                    string sql = "exec SP_BukuData_Get" +
                        "";

                    using (var command = new SqlCommand(sql, connection))
                    {
                        command.CommandTimeout = 0;
                        using (var reader = await command.ExecuteReaderAsync())
                        {
                            while (reader.Read())
                            {
                                var d = new BukuData();
                                Type type = d.GetType();
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
                                                p.SetValue(d, val, null);
                                            }
                                            else
                                            {
                                                p.SetValue(d, reader[p.Name].ToString(), null);
                                            }
                                        }
                                    }
                                }
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
        public async Task<ErrorViewModel> BukuData_Save(BukuData Data)
        {
            var res = new ErrorViewModel();
            try
            {
                conn.ConnectionString = Config.ConStr;
                using (var connection = conn)
                {
                    connection.Open();
                    string sql = "exec SP_BukuData_Save " +
                        "@IdBook="+Data.IdBook+"," +
                        "@JudulBuku='" + Data.JudulBuku + "'," +
                        "@Pengarang='" + Data.Pengarang + "'," +
                        "@JenisBuku='" + Data.JenisBuku + "'," +
                        "@HargaSewaPerHari=" + Data.HargaSewaPerHari.toDecimal() + "," +
                        "@Img='" + Data.Img + "'," +
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
        public async Task<ErrorViewModel> BukuData_Del(int Id)
        {
            var res = new ErrorViewModel();
            try
            {
                conn.ConnectionString = Config.ConStr;
                using (var connection = conn)
                {
                    connection.Open();
                    string sql = "exec SP_BukuData_Del @Id=" + Id.ToString() + "" +
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
        public async Task<BukuData> BukuData_GetById(int Id)
        {
            var res = new BukuData();
            try
            {
                conn.ConnectionString = Config.ConStr;
                using (var connection = conn)
                {
                    connection.Open();
                    string sql = "exec SP_BukuData_Get_ById @Id=" + Id + "" +
                        "";

                    using (var command = new SqlCommand(sql, connection))
                    {
                        command.CommandTimeout = 0;
                        using (var reader = await command.ExecuteReaderAsync())
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
        
        public async Task<List<BukuData>> BukuData_GetSearch(BukuData Data)
        {
            var res = new List<BukuData>();
            try
            {
                var filter = GetFormLayoutForFilter("Form BukuData");
                conn.ConnectionString = Config.ConStr;
                using (var connection = conn)
                {
                    connection.Open();
                    string sql = "exec SP_BukuData_GetSearch ";
                    Type type1 = Data.GetType();
                    PropertyInfo[] props1 = type1.GetProperties();
                    foreach (var d in filter)
                    {
                        foreach (var p in props1)
                        {
                            if (null != p && p.CanWrite)
                            {
                                if (p.Name != "" && p.Name != "Error" && p.PropertyType.Name.ToString() != "IFormFile" && p.Name == d.Id)
                                {
                                    string param = "";
                                    if (p.PropertyType.Name.ToString() == "String")
                                    {
                                        var val = p.GetValue(Data) ?? "";
                                        param = "@" + p.Name + "='" + val.ToString() + "',";
                                    }
                                    else
                                    {
                                        var val = p.GetValue(Data) ?? "";
                                        param = "@" + p.Name + "=" + val.ToString() + ",";
                                    }
                                    sql = sql + param;
                                }
                            }
                        }
                    }
                    sql = sql.RemoveLast(",");
                    using (var command = new SqlCommand(sql, connection))
                    {
                        command.CommandTimeout = 0;
                        using (var reader = await command.ExecuteReaderAsync())
                        {
                            while (reader.Read())
                            {
                                var d = new BukuData();
                                Type type = d.GetType();
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
                                                p.SetValue(d, val, null);
                                            }
                                            else
                                            {
                                                p.SetValue(d, reader[p.Name].ToString(), null);
                                            }
                                        }
                                    }
                                }
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

        public async Task<List<BukuData>> CariBuku_GetSearch(CariBuku Data)
        {
            var res = new List<BukuData>();
            try
            {
                conn.ConnectionString = Config.ConStr;
                using (var connection = conn)
                {
                    connection.Open();
                    string sql = "exec SP_CariBuku_GetSearch " +
                        "@AllText='" + Data.AllText+"'," +
                        "@JudulBuku='" + Data.JudulBuku + "'," +
                        "@Pengarang='" + Data.Pengarang + "'," +
                        "@JenisBuku='" + Data.JenisBuku + "'" +
                        "";
                    
                    using (var command = new SqlCommand(sql, connection))
                    {
                        command.CommandTimeout = 0;
                        using (var reader = await command.ExecuteReaderAsync())
                        {
                            while (reader.Read())
                            {
                                var d = new BukuData();
                                d.IdBook = reader["IdBook"].ToString().ToInt();
                                d.JudulBuku = reader["JudulBuku"].ToString();
                                d.Pengarang = reader["Pengarang"].ToString();
                                d.JenisBuku = reader["JenisBuku"].ToString();
                                d.HargaSewaPerHari = reader["HargaSewaPerHari"].ToString();
                                d.Img = reader["Img"].ToString();
                                d.Status = reader["Status"].ToString().ToInt();
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

        public async Task<FormPeminjamanBuku> FormPeminjaman_GetById(int Id)
        {
            var res = new FormPeminjamanBuku();
            try
            {
                conn.ConnectionString = Config.ConStr;
                using (var connection = conn)
                {
                    connection.Open();
                    string sql = "exec SP_FormPeminjaman_GetById @Id=" + Id + "" +
                        "";

                    using (var command = new SqlCommand(sql, connection))
                    {
                        command.CommandTimeout = 0;
                        using (var reader = await command.ExecuteReaderAsync())
                        {
                            while (reader.Read())
                            {
                                res.IdBook = reader["IdBook"].ToString().ToInt();
                                res.JudulBuku = reader["JudulBuku"].ToString();
                                res.Pengarang = reader["Pengarang"].ToString();
                                res.JenisBuku = reader["JenisBuku"].ToString();
                                res.HargaSewaPerHari = reader["HargaSewaPerHari"].ToString();
                                res.Img = reader["Img"].ToString();
                                res.Status = reader["Status"].ToString().ToInt();
                                //res.SewaDari = reader["SewaDari"].ToString();
                                //res.Sewasampai = reader["Sewasampai"].ToString();
                                //res.TotalSewa = reader["TotalSewa"].ToString();

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
