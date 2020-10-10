using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;

namespace WebTestRikoAdeRinanda.Models
{
    public class UserData
    {
        public int id { get; set; }
        public string username { get; set; }
        public string password { get; set; }
        public int RoleId { get; set; }
        public string RoleName { get; set; }
        public string NamaLengkap { get; set; }
        public string Photo { get; set; }
        public IFormFile File_Photo { get; set; }

        public int Status { get; set; }

        public ErrorViewModel Error { get; set; }
    }

    public class UserDataModel
    {
        public List<UserData> ListData { get; set; }
        public ErrorViewModel Error { get; set; }
    }
}
