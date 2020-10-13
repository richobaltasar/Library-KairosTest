using System;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using WebTestRikoAdeRinanda.Models;
using Microsoft.Extensions.Configuration;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Hosting;
using WebTestRikoAdeRinanda.Function;
using System.Diagnostics;
using System.IO;
using System.Text.RegularExpressions;
using System.Linq;
using System.Collections.Generic;
using Microsoft.AspNetCore.Mvc.Rendering;
using System.ServiceModel;
using ServiceCalculator;

namespace WebTestRikoAdeRinanda.Controllers
{
    public class SewaController : Controller
    {
        GlobalFunction GF = new GlobalFunction();
        MasterFunction f = new MasterFunction();
        SewaFunction s = new SewaFunction();
        

        private readonly IConfiguration _configuration;
        private IWebHostEnvironment _env;
        public SewaController(IConfiguration configuration, IWebHostEnvironment env)
        {
            _configuration = configuration;
            _env = env;
        }

        #region CariBuku
        public async Task<IActionResult> CariBuku()
        {
            Config.ConStr = _configuration.GetConnectionString("Db");
            var model = new CariBukuModel();
            try
            {

                if (string.IsNullOrEmpty(HttpContext.Session.GetString("_UserId")))
                {
                    var model2 = new alertLogin();
                    return await Task.Run(() => RedirectToAction("SignIn", "Home", model2));
                }
                else
                {
                    ViewBag.UserId = HttpContext.Session.GetString("_UserId");

                    var filter = new CariBuku();
                    model.DataBuku = await f.CariBuku_GetSearch(filter);
                    return await Task.Run(() => View(model));
                }
            }
            catch (Exception ex)
            {
                var Error = new ErrorViewModel();
                Error.MessageContent = ex.ToString();
                Error.MessageTitle = "Error ";
                Error.RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier;
                model.Error = Error;
                return await Task.Run(() => View(model));
            }
        }
        [NoDirectAccess]
        public async Task<IActionResult> CariBuku_Form_Sewa(int id = 0)
        {

            var model = new FormPeminjamanBuku();
            try
            {
                CalculatorSoapClient authorServiceClient = new CalculatorSoapClient(CalculatorSoapClient.EndpointConfiguration.CalculatorSoap);
                model = await f.FormPeminjaman_GetById(id);
                model.SewaDari = GF.GetDatetime().Left(10);
                model.Sewasampai = GF.GetDatetime().Left(10);
                model.TotalSewa = "0";
                if (model == null)
                {
                    return NotFound();
                }
                return await Task.Run(() => View(model));
            }
            catch (Exception ex)
            {
                var Error = new ErrorViewModel();
                Error.MessageContent = ex.ToString();
                Error.MessageTitle = "Error ";
                Error.RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier;
                model.Error = Error;
                return await Task.Run(() => View(model));
            }

        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> CariBuku_Search([Bind("AllText")] CariBuku data)
        {
            var model = new CariBukuModel();
            var r = new ErrorViewModel();
            if (ModelState.IsValid)
            {
                try
                {
                    model.DataBuku = await f.CariBuku_GetSearch(data);
                    return await Task.Run(() => Json(new { isValid = true, html = Helper.RenderRazorViewToString(this, "CariBuku_Grid", model) }));
                }
                catch (Exception ex)
                {
                    r.MessageContent = ex.ToString();
                    r.MessageTitle = "Error ";
                    r.RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier;
                    model.Error = r;
                    
                    return await Task.Run(() => Json(new
                    {
                        isValid = false,
                        message = r.MessageContent,
                        title = r.MessageTitle,
                        html = Helper.RenderRazorViewToString(this, "CariBuku_Grid", model)
                    }));
                }
            }
            else
            {
                r.MessageContent = "State Model tidak valid";
                r.MessageTitle = "Error ";
                r.RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier;
                model.Error = r;
                //model.ListData = await f.BukuData_Get();
                return await Task.Run(() => Json(new
                {
                    isValid = false,
                    message = r.MessageContent,
                    title = r.MessageTitle,
                    html = Helper.RenderRazorViewToString(this, "CariBuku_Grid", model)
                }));
            }
        }

        [HttpGet]
        public async Task<IActionResult> CariBuku_GetTotalSewa(string Dari, string Sampai,string Harga)
        {
            var r = new ErrorViewModel();
            if (ModelState.IsValid)
            {
                try
                {
                    int dayTotals = GF.GetDiffDays(Dari, Sampai);
                    CalculatorSoapClient authorServiceClient = new CalculatorSoapClient(CalculatorSoapClient.EndpointConfiguration.CalculatorSoap);
                    int d = await authorServiceClient.MultiplyAsync(dayTotals, Harga.ToInt());
                    string sewa = d.ToString().toNumber();
                    return await Task.Run(() => Json(new { isValid = true, totalSewa = sewa }));
                }
                catch (Exception ex)
                {
                    r.MessageContent = ex.ToString();
                    r.MessageTitle = "Error ";
                    r.RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier;
                    return await Task.Run(() => Json(new { isValid = false, message = r.MessageContent, title = r.MessageTitle }));
                }
            }
            else
            {
                r.MessageContent = "State Model tidak valid";
                r.MessageTitle = "Error ";
                r.RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier;
                return await Task.Run(() => Json(new { isValid = false, message = r.MessageContent, title = r.MessageTitle }));
            }
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> CariBuku_AddCart([Bind("Id,IdBook,SewaDari,Sewasampai,TotalSewa,Status,HargaSewaPerHari")] FormPeminjamanBuku data)
        {
            var r = new ErrorViewModel();
            if (ModelState.IsValid)
            {
                try
                {
                    if (string.IsNullOrEmpty(HttpContext.Session.GetString("_UserId")))
                    {
                        var model2 = new alertLogin();
                        return await Task.Run(() => RedirectToAction("SignIn", "Home", model2));
                    }
                    else
                    {
                        data.IdUser_Penyewa = HttpContext.Session.GetString("_UserId");
                        r = await f.CariBuku_AddCart(data);
                        if (r.MessageStatus == "success")
                        {
                            return await Task.Run(() => Json(new { isValid = true, message = r.MessageContent, title = r.MessageTitle }));
                        }
                        else
                        {
                            return await Task.Run(() => Json(new
                            {
                                isValid = false,
                                message = r.MessageContent,
                                title = r.MessageTitle
                            }));
                        }
                    }
                   
                }
                catch (Exception ex)
                {
                    r.MessageContent = ex.ToString();
                    r.MessageTitle = "Error ";
                    r.RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier;
                    return await Task.Run(() => Json(new
                    {
                        isValid = false,
                        message = r.MessageContent,
                        title = r.MessageTitle
                    }));
                }
            }
            else
            {
                r.MessageContent = "State Model tidak valid";
                r.MessageTitle = "Error ";
                r.RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier;
                //model.ListData = await f.BukuData_Get();
                return await Task.Run(() => Json(new
                {
                    isValid = false,
                    message = r.MessageContent,
                    title = r.MessageTitle
                }));
            }
        }
        #endregion

        #region TransaksiPeminjaman

        public async Task<IActionResult> TransaksiPeminjaman()
        {
            Config.ConStr = _configuration.GetConnectionString("Db");
            var model = new TransaksiTransaksiPeminjamanBukuModel();
            try
            {

                if (string.IsNullOrEmpty(HttpContext.Session.GetString("_UserId")))
                {
                    var model2 = new alertLogin();
                    return await Task.Run(() => RedirectToAction("SignIn", "Home", model2));
                }
                else
                {
                    ViewBag.UserId = HttpContext.Session.GetString("_UserId");

                    var Filter = new TransaksiTransaksiPeminjamanBuku();
                    Filter.IdUser_Penyewa = HttpContext.Session.GetString("_UserId").ToInt();
                    model.ListData = await s.TransaksiPeminjaman_GetSearch(Filter);
                    return await Task.Run(() => View(model));
                }
            }
            catch (Exception ex)
            {
                var Error = new ErrorViewModel();
                Error.MessageContent = ex.ToString();
                Error.MessageTitle = "Error ";
                Error.RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier;
                model.Error = Error;
                return await Task.Run(() => View(model));
            }
        }

        [NoDirectAccess]
        public async Task<IActionResult> TransaksiPeminjaman_Form(int id = 0)
        {
            var model = new TransaksiTransaksiPeminjamanBuku();
            try
            {
                if (id == 0)
                {
                    model.Id = id;
                    return await Task.Run(() => View(model));
                }
                else
                {
                    model = await s.TransaksiPeminjaman_GetById(id);
                    if (model == null)
                    {
                        return NotFound();
                    }
                    return await Task.Run(() => View(model));
                }
            }
            catch (Exception ex)
            {
                var Error = new ErrorViewModel();
                Error.MessageContent = ex.ToString();
                Error.MessageTitle = "Error ";
                Error.RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier;
                model.Error = Error;
                return await Task.Run(() => View(model));
            }

        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> TransaksiPeminjaman_Save([Bind("Id,IdBuku,SewaDari,Sewasampai,TotalSewa,Status,IdUser_Penyewa")] TransaksiTransaksiPeminjamanBuku data)
        {
            var r = new ErrorViewModel();
            if (ModelState.IsValid)
            {
                try
                {
                    r = await s.TransaksiPeminjaman_Save(data);
                    if (r.MessageStatus == "success")
                    {
                        data.Id = r.RequestId.ToInt();
                        return await Task.Run(() => Json(new { isValid = true }));
                    }
                    else
                    {
                        var Error = new ErrorViewModel();
                        Error.MessageContent = r.MessageContent;
                        Error.MessageTitle = r.MessageTitle;
                        Error.RequestId = r.RequestId;
                        data.Error = Error;
                        return await Task.Run(() => Json(new { isValid = false, message = r.MessageContent, title = r.MessageTitle, html = Helper.RenderRazorViewToString(this, "MenuData_Form", data) }));
                    }
                }
                catch (Exception ex)
                {
                    var Error = new ErrorViewModel();
                    Error.MessageContent = ex.ToString();
                    Error.MessageTitle = "Error ";
                    Error.RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier;
                    return await Task.Run(() => Json(new { isValid = false, message = Error.MessageContent, title = Error.MessageTitle, html = Helper.RenderRazorViewToString(this, "MenuData_Form", data) }));
                }
            }
            else
            {
                var Error = new ErrorViewModel();
                Error.MessageContent = "State Model tidak valid";
                Error.MessageTitle = "Error ";
                Error.RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier;
                return await Task.Run(() => Json(new { isValid = false, message = Error.MessageContent, title = Error.MessageTitle, html = Helper.RenderRazorViewToString(this, "MenuData_Form", data) }));
            }
        }

        [HttpPost, ActionName("TransaksiPeminjaman_Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> TransaksiPeminjaman_Delete(int Id)
        {
            var r = new ErrorViewModel();
            try
            {
                r = await s.TransaksiPeminjaman_Del(Id);
                if (r.MessageStatus == "success")
                {
                    return await Task.Run(() => Json(new { isValid = true, message = r.MessageContent, title = r.MessageTitle }));
                }
                else
                {
                    var Error = new ErrorViewModel();
                    return await Task.Run(() => Json(new { isValid = false, message = r.MessageContent, title = r.MessageTitle }));
                }
                
            }
            catch (Exception ex)
            {
                r.MessageContent = ex.ToString();
                r.MessageTitle = "Error ";
                r.RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier;
                return await Task.Run(() => Json(new { isValid = false, message = r.MessageContent, title = r.MessageTitle }));
            }

        }

        //search buku di transaksi peminjaman
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> TransaksiPeminjaman_Search([Bind("JudulBuku,Pengarang,JenisBuku,IdUser_Penyewa,Status")] TransaksiTransaksiPeminjamanBuku data)
        {
            var model = new TransaksiTransaksiPeminjamanBukuModel();
            var r = new ErrorViewModel();
            if (ModelState.IsValid)
            {
                try
                {
                    if (string.IsNullOrEmpty(HttpContext.Session.GetString("_UserId")))
                    {
                        var model2 = new alertLogin();
                        return await Task.Run(() => RedirectToAction("SignIn", "Home", model2));
                    }
                    else
                    {
                        data.IdUser_Penyewa = HttpContext.Session.GetString("_UserId").ToInt();
                        model.ListData = await s.TransaksiPeminjaman_GetSearch(data);
                        model.StatusTrx = data.Status;
                        return await Task.Run(() => Json(new { isValid = true, html = Helper.RenderRazorViewToString(this, "TransaksiPeminjaman_Table", model) }));
                    }
                }
                catch (Exception ex)
                {
                    r.MessageContent = ex.ToString();
                    r.MessageTitle = "Error ";
                    r.RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier;
                    model.Error = r;
                    model.ListData = await s.TransaksiPeminjaman_Get();
                    return await Task.Run(() => Json(new { isValid = false, message = r.MessageContent, title = r.MessageTitle, html = Helper.RenderRazorViewToString(this, "TransaksiPeminjaman_Table", data) }));
                }
            }
            else
            {
                r.MessageContent = "State Model tidak valid";
                r.MessageTitle = "Error ";
                r.RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier;
                model.Error = r;
                model.ListData = await s.TransaksiPeminjaman_Get();
                return await Task.Run(() => Json(new { isValid = false, message = r.MessageContent, title = r.MessageTitle, html = Helper.RenderRazorViewToString(this, "MenuData_Table", model) }));
            }
        }

        [HttpPost, ActionName("TransaksiPeminjaman_Checkout")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> TransaksiPeminjaman_Checkout(int Id)
        {
            var r = new ErrorViewModel();
            try
            {
                if (string.IsNullOrEmpty(HttpContext.Session.GetString("_UserId")))
                {
                    var model2 = new alertLogin();
                    return await Task.Run(() => RedirectToAction("SignIn", "Home", model2));
                }
                else
                {
                    r = await s.TransaksiPeminjaman_Checkout(HttpContext.Session.GetString("_UserId").ToInt());
                    if (r.MessageStatus == "success")
                    {
                        return await Task.Run(() => Json(new { isValid = true, message = r.MessageContent, title = r.MessageTitle, total = r.RequestId.toNumber() }));
                    }
                    else
                    {
                        var Error = new ErrorViewModel();
                        return await Task.Run(() => Json(new { isValid = false, message = r.MessageContent, title = r.MessageTitle }));
                    }
                }

            }
            catch (Exception ex)
            {
                r.MessageContent = ex.ToString();
                r.MessageTitle = "Error ";
                r.RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier;
                return await Task.Run(() => Json(new { isValid = false, message = r.MessageContent, title = r.MessageTitle }));
            }

        }


        [HttpGet]
        public async Task<IActionResult> CariBuku_GetDetailBook(int Id)
        {
            var r = new ErrorViewModel();
            if (ModelState.IsValid)
            {
                try
                {
                    var bookdetail = await f.BukuData_GetById(Id);
                    return await Task.Run(() => Json(new { isValid = true, 
                        judulBuku = bookdetail.JudulBuku, 
                        pengarang= bookdetail.Pengarang,
                        jenisBuku = bookdetail.JenisBuku,
                        hargaSewaPerHari =bookdetail.HargaSewaPerHari.toNumber(),
                        img = bookdetail.Img
                    }));
                }
                catch (Exception ex)
                {
                    r.MessageContent = ex.ToString();
                    r.MessageTitle = "Error ";
                    r.RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier;
                    return await Task.Run(() => Json(new { isValid = false, message = r.MessageContent, title = r.MessageTitle }));
                }
            }
            else
            {
                r.MessageContent = "State Model tidak valid";
                r.MessageTitle = "Error ";
                r.RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier;
                return await Task.Run(() => Json(new { isValid = false, message = r.MessageContent, title = r.MessageTitle }));
            }
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> CariBuku_UpdateCart([Bind("Id,IdBuku,SewaDari,Sewasampai,TotalSewa")] TransaksiTransaksiPeminjamanBuku data)
        {
            var r = new ErrorViewModel();
            if (ModelState.IsValid)
            {
                try
                {
                    if (string.IsNullOrEmpty(HttpContext.Session.GetString("_UserId")))
                    {
                        var model2 = new alertLogin();
                        return await Task.Run(() => RedirectToAction("SignIn", "Home", model2));
                    }
                    else
                    {
                        data.IdUser_Penyewa = HttpContext.Session.GetString("_UserId").ToInt();
                        r = await s.CariBuku_UpdateCart(data);
                        if (r.MessageStatus == "success")
                        {
                            return await Task.Run(() => Json(new { isValid = true, message = r.MessageContent, title = r.MessageTitle }));
                        }
                        else
                        {
                            return await Task.Run(() => Json(new
                            {
                                isValid = false,
                                message = r.MessageContent,
                                title = r.MessageTitle
                            }));
                        }
                    }

                }
                catch (Exception ex)
                {
                    r.MessageContent = ex.ToString();
                    r.MessageTitle = "Error ";
                    r.RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier;
                    return await Task.Run(() => Json(new
                    {
                        isValid = false,
                        message = r.MessageContent,
                        title = r.MessageTitle
                    }));
                }
            }
            else
            {
                r.MessageContent = "State Model tidak valid";
                r.MessageTitle = "Error ";
                r.RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier;
                //model.ListData = await f.BukuData_Get();
                return await Task.Run(() => Json(new
                {
                    isValid = false,
                    message = r.MessageContent,
                    title = r.MessageTitle
                }));
            }
        }
        #endregion

        #region KonfirmasiTransaksi
        public async Task<IActionResult> KonfirmasiTransaksi()
        {
            Config.ConStr = _configuration.GetConnectionString("Db");
            var model = new LogConfirmationModel();
            try
            {

                if (string.IsNullOrEmpty(HttpContext.Session.GetString("_UserId")))
                {
                    var model2 = new alertLogin();
                    return await Task.Run(() => RedirectToAction("SignIn", "Home", model2));
                }
                else
                {
                    ViewBag.UserId = HttpContext.Session.GetString("_UserId");

                    var Filter = new logConfirmation();
                    Filter.IdPenyewa = HttpContext.Session.GetString("_UserId").ToInt();
                    model.ListData = await s.KonfirmasiTransaksi_GetSearch(Filter);
                    return await Task.Run(() => View(model));
                }
            }
            catch (Exception ex)
            {
                var Error = new ErrorViewModel();
                Error.MessageContent = ex.ToString();
                Error.MessageTitle = "Error ";
                Error.RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier;
                model.Error = Error;
                return await Task.Run(() => View(model));
            }
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> KonfirmasiTransaksi_Search([Bind("IdTrx,NamaPenyewa")] logConfirmation data)
        {
            var model = new LogConfirmationModel();
            var r = new ErrorViewModel();
            try
            {
                model.ListData = await s.KonfirmasiTransaksi_GetSearch(data);
                return await Task.Run(() => Json(new { isValid = true, html = Helper.RenderRazorViewToString(this, "KonfirmasiTransaksi_Table", model) }));
            }
            catch (Exception ex)
            {
                r.MessageContent = ex.ToString();
                r.MessageTitle = "Error ";
                r.RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier;
                model.Error = r;

                return await Task.Run(() => Json(new
                {
                    isValid = false,
                    message = r.MessageContent,
                    title = r.MessageTitle,
                    html = Helper.RenderRazorViewToString(this, "KonfirmasiTransaksi_Table", model)
                }));
            }
            //if (ModelState.IsValid)
            //{

            //}
            //else
            //{
            //    r.MessageContent = "State Model tidak valid";
            //    r.MessageTitle = "Error ";
            //    r.RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier;
            //    model.Error = r;
            //    return await Task.Run(() => Json(new
            //    {
            //        isValid = false,
            //        message = r.MessageContent,
            //        title = r.MessageTitle,
            //        html = Helper.RenderRazorViewToString(this, "KonfirmasiTransaksi_Table", model)
            //    }));
            //}
        }

        //KonfirmasiTransaksi_FormPembayaran
        [NoDirectAccess]
        public async Task<IActionResult> KonfirmasiTransaksi_FormPembayaran(int id = 0)
        {
            var model = new KonfirmasiTransaksi_FormModel();
            try
            {
                if(id>0)
                {
                    model.DataForm = await s.KonfirmasiTransaksi_GetById(id);
                    model.ListData = await s.KonfirmasiTransaksi_DetailGet(id);
                    return await Task.Run(() => View(model));
                }
                else
                {
                    var Error = new ErrorViewModel();
                    Error.MessageContent = "Data not Exists";
                    Error.MessageTitle = "Error ";
                    Error.RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier;
                    model.Error = Error;
                    return await Task.Run(() => View(model));
                }
            }
            catch (Exception ex)
            {
                var Error = new ErrorViewModel();
                Error.MessageContent = ex.ToString();
                Error.MessageTitle = "Error ";
                Error.RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier;
                model.Error = Error;
                return await Task.Run(() => View(model));
            }

        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> KonfirmasiTransaksi_Bayar([Bind("IdTrx,CreateDate,IdPenyewa," +
            "Qty,TotalSewa,StatusConfirm,NamaPenyewa,KasirTerimaUang,UangKembalian")] logConfirmation data)
        {
            var r = new ErrorViewModel();
            if (ModelState.IsValid)
            {
                try
                {
                    if (string.IsNullOrEmpty(HttpContext.Session.GetString("_UserId")))
                    {
                        var model2 = new alertLogin();
                        return await Task.Run(() => RedirectToAction("SignIn", "Home", model2));
                    }
                    else
                    {
                        data.IdKasir = HttpContext.Session.GetString("_UserId").ToInt();
                        r = await s.KonfirmasiTransaksi_Bayar(data);
                        if (r.MessageStatus == "success")
                        {
                            return await Task.Run(() => Json(new { isValid = true, message = r.MessageContent, title = r.MessageTitle }));
                        }
                        else
                        {
                            var Error = new ErrorViewModel();
                            Error.MessageContent = r.MessageContent;
                            Error.MessageTitle = r.MessageTitle;
                            Error.RequestId = r.RequestId;
                            data.Error = Error;
                            return await Task.Run(() => Json(new { isValid = false, message = r.MessageContent, title = r.MessageTitle }));
                        }
                    }
                }
                catch (Exception ex)
                {
                    var Error = new ErrorViewModel();
                    Error.MessageContent = ex.ToString();
                    Error.MessageTitle = "Error ";
                    Error.RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier;
                    return await Task.Run(() => Json(new { isValid = false, message = Error.MessageContent, title = Error.MessageTitle}));
                }
            }
            else
            {
                var Error = new ErrorViewModel();
                Error.MessageContent = "State Model tidak valid";
                Error.MessageTitle = "Error ";
                Error.RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier;
                return await Task.Run(() => Json(new { isValid = false, message = Error.MessageContent, title = Error.MessageTitle}));
            }
        }

        #endregion
    }
}
