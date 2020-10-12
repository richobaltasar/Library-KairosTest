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
    public class SewaFunction
    {
        GlobalFunction GF = new GlobalFunction();
        MasterFunction f = new MasterFunction();
        public SqlConnection conn = new SqlConnection();
        public SqlCommand cmd = new SqlCommand();

        #region Transaksi Peminjaman
        public async Task<List<TransaksiTransaksiPeminjamanBuku>> TransaksiPeminjaman_Get()
        {
            var res = new List<TransaksiTransaksiPeminjamanBuku>();
            try
            {
                conn.ConnectionString = Config.ConStr;
                using (var connection = conn)
                {
                    connection.Open();
                    string sql = "exec SP_TransaksiPeminjaman_Get" +
                        "";

                    using (var command = new SqlCommand(sql, connection))
                    {
                        command.CommandTimeout = 0;
                        using (var reader = await command.ExecuteReaderAsync())
                        {
                            while (reader.Read())
                            {
                                var d = new TransaksiTransaksiPeminjamanBuku();
                                d.Id = reader["Id"].ToString().ToInt();
                                d.IdBuku = reader["IdBuku"].ToString().ToInt();
                                d.SewaDari = reader["SewaDari"].ToString();
                                d.Sewasampai = reader["Sewasampai"].ToString();
                                d.TotalSewa = reader["TotalSewa"].ToString();
                                d.Status = reader["Status"].ToString().ToInt();
                                d.IdUser_Penyewa = reader["IdUser_Penyewa"].ToString().ToInt();
                                d.HargaSewaPerHari = reader["HargaSewaPerHari"].ToString();
                                d.Img = reader["Img"].ToString();
                                d.JenisBuku = reader["JenisBuku"].ToString();
                                d.JudulBuku = reader["JudulBuku"].ToString();
                                d.Pengarang = reader["Pengarang"].ToString();
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
        public async Task<ErrorViewModel> TransaksiPeminjaman_Save(TransaksiTransaksiPeminjamanBuku Data)
        {
            var res = new ErrorViewModel();
            try
            {
                conn.ConnectionString = Config.ConStr;
                using (var connection = conn)
                {
                    connection.Open();
                    string sql = "exec SP_TransaksiPeminjaman_Save ";
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

        public async Task<ErrorViewModel> TransaksiPeminjaman_Del(int Id)
        {
            var res = new ErrorViewModel();
            try
            {
                conn.ConnectionString = Config.ConStr;
                using (var connection = conn)
                {
                    connection.Open();
                    string sql = "exec SP_TransaksiPeminjaman_Del @Id=" + Id.ToString() + "" +
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
        public async Task<TransaksiTransaksiPeminjamanBuku> TransaksiPeminjaman_GetById(int Id)
        {
            var res = new TransaksiTransaksiPeminjamanBuku();
            try
            {
                conn.ConnectionString = Config.ConStr;
                using (var connection = conn)
                {
                    connection.Open();
                    string sql = "exec SP_TransaksiPeminjaman_GetById @Id=" + Id + "" +
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
        public async Task<List<TransaksiTransaksiPeminjamanBuku>> TransaksiPeminjaman_GetSearch(TransaksiTransaksiPeminjamanBuku Data)
        {
            var res = new List<TransaksiTransaksiPeminjamanBuku>();
            try
            {
                conn.ConnectionString = Config.ConStr;
                using (var connection = conn)
                {
                    connection.Open();
                    string sql = "exec SP_TransaksiTransaksiPeminjamanBuku_GetSearch " +
                        "@JudulBuku='" + Data.JudulBuku + "'," +
                        "@Pengarang='" + Data.Pengarang + "'," +
                        "@JenisBuku='" + Data.JenisBuku + "'," +
                        "@IdUser_Penyewa="+Data.IdUser_Penyewa+"," +
                        "@Status=" + Data.Status+"" +
                        "";
                    
                    using (var command = new SqlCommand(sql, connection))
                    {
                        command.CommandTimeout = 0;
                        using (var reader = await command.ExecuteReaderAsync())
                        {
                            while (reader.Read())
                            {
                                var d = new TransaksiTransaksiPeminjamanBuku();
                                d.Id = reader["Id"].ToString().ToInt();
                                d.IdBuku = reader["IdBuku"].ToString().ToInt();
                                d.SewaDari = reader["SewaDari"].ToString();
                                d.Sewasampai = reader["Sewasampai"].ToString();
                                d.TotalSewa = reader["TotalSewa"].ToString();
                                d.Status = reader["Status"].ToString().ToInt();
                                d.IdUser_Penyewa = reader["IdUser_Penyewa"].ToString().ToInt();
                                d.HargaSewaPerHari = reader["HargaSewaPerHari"].ToString();
                                d.Img = reader["Img"].ToString();
                                d.JenisBuku = reader["JenisBuku"].ToString();
                                d.JudulBuku = reader["JudulBuku"].ToString();
                                d.Pengarang = reader["Pengarang"].ToString();
                                d.Nama_Penyewa= reader["Nama_Penyewa"].ToString();
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

        public async Task<ErrorViewModel> TransaksiPeminjaman_Checkout(int Id)
        {
            var res = new ErrorViewModel();
            try
            {
                conn.ConnectionString = Config.ConStr;
                using (var connection = conn)
                {
                    connection.Open();
                    string sql = "exec SP_TransaksiPeminjaman_Checkout @Id=" + Id.ToString() + "" +
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

        public async Task<ErrorViewModel> CariBuku_UpdateCart(TransaksiTransaksiPeminjamanBuku Data)
        {
            var res = new ErrorViewModel();
            try
            {
                conn.ConnectionString = Config.ConStr;
                using (var connection = conn)
                {
                    connection.Open();
                    //string sql = "exec SP_CariBuku_AddCart " +
                    string sql = "exec SP_CariBuku_UpdateCart " +
                        "@Id=" + Data.Id + "," +
                        "@IdBook=" + Data.IdBuku + "," +
                        "@IdUser_Penyewa=" + Data.IdUser_Penyewa + "," +
                        "@HargaSewaPerHari=" + Data.HargaSewaPerHari.toDecimal() + "," +
                        "@SewaDari='" + Data.SewaDari + "'," +
                        "@Sewasampai='" + Data.Sewasampai + "'," +
                        "@TotalSewa=" + Data.TotalSewa.toDecimal() + "" +
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
    }
}