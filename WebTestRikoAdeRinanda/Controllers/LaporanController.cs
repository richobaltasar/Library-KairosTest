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
    public class LaporanController : Controller
    {
        GlobalFunction GF = new GlobalFunction();
        MasterFunction f = new MasterFunction();
        SewaFunction s = new SewaFunction();


        private readonly IConfiguration _configuration;
        private IWebHostEnvironment _env;
        public LaporanController(IConfiguration configuration, IWebHostEnvironment env)
        {
            _configuration = configuration;
            _env = env;
        }

        #region DetailHarian
        public async Task<IActionResult> DetailHarian()
        {
            Config.ConStr = _configuration.GetConnectionString("Db");
            var model = new DetailHarianModel();
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
                    var Filter = new DetailHarianFilter();
                    Filter.TglTrxFrom = GF.GetDatetime().Left(10);
                    Filter.TglTrxUntil = GF.GetDatetime().Left(10);
                    model.Listdata = await s.DetailHarian_GetSearch(Filter);
                    model.FilterData = Filter;
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
        public async Task<IActionResult> DetailHarian_Search([Bind("TglTrxFrom,TglTrxUntil")] DetailHarianFilter data)
        {
            var model = new DetailHarianModel();
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
                        model.Listdata = await s.DetailHarian_GetSearch(data);
                        return await Task.Run(() => Json(new { isValid = true, html = Helper.RenderRazorViewToString(this, "DetailHarian_Table", model) }));
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
            else
            {
                r.MessageContent = "State Model tidak valid";
                r.MessageTitle = "Error ";
                r.RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier;
                return await Task.Run(() => Json(new { isValid = false, message = r.MessageContent, title = r.MessageTitle }));
            }
        }
        #endregion

    }
}
