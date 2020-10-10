﻿using System;
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


namespace WebTestRikoAdeRinanda.Controllers
{
    public class SewaController : Controller
    {
        GlobalFunction GF = new GlobalFunction();
        MasterFunction f = new MasterFunction();

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
                if (id == 0)
                {
                    model.IdBook = id;
                    return await Task.Run(() => View(model));
                }
                else
                {
                    model = await f.FormPeminjaman_GetById(id);

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
        #endregion
    }
}
