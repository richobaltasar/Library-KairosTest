﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebTestRikoAdeRinanda.Models
{
    public class TransaksiTransaksiPeminjamanBuku
    {
        public int Id { get; set; }
        public int IdBuku { get; set; }
        public string JudulBuku { get; set; }
        public string Pengarang { get; set; }
        public string JenisBuku { get; set; }
        public string HargaSewaPerHari { get; set; }

        public string Img { get; set; }
        public string SewaDari { get; set; }
        public string Sewasampai { get; set; }
        public string TotalSewa { get; set; }
        public int Status { get; set; }
        public int IdUser_Penyewa { get; set; }
        public string Nama_Penyewa { get; set; }
        public ErrorViewModel Error { get; set; }
    }

    public class TransaksiTransaksiPeminjamanBukuModel
    {
        public List<TransaksiTransaksiPeminjamanBuku> ListData { get; set; }
        public int StatusTrx { get; set; }
        public ErrorViewModel Error { get; set; }
    }
}