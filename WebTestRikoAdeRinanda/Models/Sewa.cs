using System;
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

    public class logConfirmation
    {
        public int IdTrx { get; set; }
        public string CreateDate { get; set; }
        public int IdPenyewa { get; set; }
        public string NamaPenyewa { get; set; }
        public int Qty { get; set; }
        public string TotalSewa { get; set; }
        public int StatusConfirm { get; set; }

        public string KasirTerimaUang { get; set; }
        public string UangKembalian { get; set; }
        public int IdKasir { get; set; }
        public ErrorViewModel Error { get; set; }
    }

    public class LogConfirmationModel
    {
        public List<logConfirmation> ListData { get; set; }
        public ErrorViewModel Error { get; set; }
    }

    public class KonfirmasiTransaksi_FormModel
    {
        public List<TransaksiTransaksiPeminjamanBuku> ListData { get; set; }
        public logConfirmation DataForm { get; set; }
        
        public ErrorViewModel Error {get;set;}
    }

    public class PengembalianBukuModel
    {
        public List<TransaksiTransaksiPeminjamanBuku> ListData { get; set; }
        public ErrorViewModel Error { get; set; }

    }

    public class DetailHarianFilter
    {
        public string TglTrxFrom { get; set; }
        public string TglTrxUntil { get; set; }
    }
    public class DetailHarian
    {
        public string TanggalTransaksi { get; set; }
        public string JudulBuku { get; set; }
        public string Pengarang { get; set; }
        public string JenisBuku { get; set; }
        public string HargaPerHari { get; set; }
        public string JumlahHari { get; set; }
        public string TotalSewa { get; set; }
        public string NamaPenyewa { get; set; }
        public string NamaKasir { get; set; }
        public string KasirTerimaUang { get; set; }
        public string UangKembalian { get; set; }
        public string TanggalPengembalian { get; set; }
        public ErrorViewModel Error { get; set; }
    }

    public class DetailHarianModel
    {
        
        public List<DetailHarian> Listdata { get; set; }
        public ErrorViewModel Error { get; set; }
    }

    public class SummaryHarian
    {
        public string TanggalTransaksi { get; set; }
        public string NamaPenyewa { get; set; }
        public string TotalBuku { get; set; }
        public string JumlahHari { get; set; }
        public string TotalSewa { get; set; }
        public string NamaKasir { get; set; }
        public string KasirTerimaUang { get; set; }
        public string UangKembalian { get; set; }
        public string TanggalPengembalian { get; set; }
        public ErrorViewModel Error { get; set; }
    }

    public class SummaryHarianModel
    {

        public List<SummaryHarian> Listdata { get; set; }
        public ErrorViewModel Error { get; set; }
    }

    public class SummaryHarianFilter
    {
        public string TglTrxFrom { get; set; }
        public string TglTrxUntil { get; set; }
    }

}
