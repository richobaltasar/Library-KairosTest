# Library-KairosTest
.NET DEVELOPER TECHNICAL SKILL TEST

Langkah-langkah menjalankan solution :
1. Clone source code pada link berikut : https://github.com/richobaltasar/Library-KairosTest
2. Extract file lalu akan terdapat File :
   - WebTestRikoAdeRinanda.sln -- ini file Solution
   - DB -- ini adalah file backup database
   - WebTestRikoAdeRinanda -- ini adalah file project web
   - Database -- ini file project Database
3. Restore Database pada file DB, 
   - open SQL management studio --> pada folder Databases click kanan - pilih Restore Database.
   - Rubah source pada device dan pilih file DB backup yg telah diextract.
   - Add - pilih filename dengan all files - lalu tekan Ok dan Ok
   
*Menggunakan Visual Studio :*
1. Click file solution --> WebTestRikoAdeRinanda.sln, lalu di project "WebTestRikoAdeRinanda" rubah ConnectionStrings DB pada file appsettings.Development.json.
   sesuai dengan Server Database anda
2. Build Solution dan Start debugging (F5).

*Menggunakan Visual Code*
1. Open Visual Code dan open folder dan pilih project pada folder WebTestRikoAdeRinanda dan rubah ConnectionStrings DB pada file appsettings.Development.json.
   sesuai dengan Server Database anda
2. Click Terminal - New Terminal dan akan muncul terminal dibawah panel.
3. ketik Command : dotnet run
4. Open browser dan ketik url : https://localhost:5001/

# <--- User Info ---> #
# Administrator #
  -*username : root*
  -*password : q1w2*
# Penyewa #
  1. -*username : riko*
     -*password : q1w2*
  2. -*username : guest*
     -*password : q1w2*

# <-- Menu Function -->
1.CariBuku : untuk mencari buku yang ingin disewa oleh penyewa. cara nya : search buku yang ingin dipinjam lalu tekan tombol pinjam dan isi tanggal peminjaman dan tekan tombol Addlist, akan muncul popup pilihan checkout sekarang atau mau menambahkan buku ke list peminjaman lagi.

2.Transaksi 
  - Peminjaman Buku : menu ini berisi list data peminjaman dengan berbagai status, jika buku telah dimasukan ke list Peminjaman, maka akan muncul pada Status "Menunggu Checkout", tekan tombol checkout diposisi bawah table untuk melakukan check dan melakukan pembayaran ke kasir sesuai popup yang tampil.
  - Konfirmasi : untuk mengkonfirmasi pembayaran penyewa yang telah melakukan checkout dari menu Peminjaman Buku, dapat difilter sesuai nama penyewa atau No. ID Transaksi.Tekan tombol pada kolom action untuk melakukan Konfirmasi pembayaran dan masukan uang yang dibayarkan penyewa dan secara automatis muncul jumlah kembalian,Tekan Tombol Submit dan Transaksi selesai dan status buku berubah menjadi "Dalam peminjaman" pada menu peminjaman Buku.
  - Pengembalian : menu ini untuk melakukan pengembalian buku dan jika sudah disubmit maka status pada Peminjaman Buku berubah menjadi "Telah Selesai"
3.Laporan
  - Laporan Harian 
    * Detail Harian merupakan laporan peminjaman buku dengan status "Telah Selesai"
    * Summary Harian merupakan laporan transaksi peminjaman buku
4.Data Master
  - Registrasi User - untuk menambah, mengubah dan menghapus Data User.
  - Buku Master - - untuk menambah, mengubah dan menghapus Data Buku.
5.Setting - menu untuk memanagement module, menu, role akses group, role menu tree, Form Layout dan Data List Item.
 
    

         


  
