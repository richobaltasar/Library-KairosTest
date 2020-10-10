using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using WebTestRikoAdeRinanda.Models;
using System.Reflection;
using System.Data.SqlClient;
using System.Text.RegularExpressions;
using System.IO;

namespace WebTestRikoAdeRinanda.Function
{
    
    public static class StringExtensions
    {
        public static string RemoveLast(this string text, string character)
        {
            if (text.Length < 1) return text;
            return text.Remove(text.ToString().LastIndexOf(character), character.Length);
        }
        public static string Left(this string value, int maxLength)
        {
            if (string.IsNullOrEmpty(value)) return value;
            maxLength = Math.Abs(maxLength);

            return (value.Length <= maxLength
                   ? value
                   : value.Substring(0, maxLength)
                   );
        }
        public static string Right(this string value, int length)
        {
            return value.Substring(value.Length - length);
        }
        public static int ToInt(this string value)
        {
            return int.Parse(value);
        }
        public static int? AsInt(this string s)
        {
            int result;
            if (s == null)
                return null;
            else if (int.TryParse(s, out result))
                return result;
            else
                return null;
        }
        public static decimal toDecimal(this string value)
        {
            decimal res = 0;
            try
            {
                string number = Regex.Replace(value, "[^.0-9]", "");
                res = Convert.ToDecimal(number);
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                return 0;
            }
            return res;
        }
        public static string toNumber(this string value)
        {
            string res = "0";
            try
            {
                string number = Regex.Replace(value, "[^.0-9]", "");
                res = Convert.ToDecimal(number).ToString("#,##0");
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                return "0";
            }
            return res;
        }
    }

    public class StringCipher
    {
        public string key = "RIKO ADE RINANDA";
        private const int Keysize = 256;
        private const int DerivationIterations = 1000;

        public string Encrypt(string plainText, string passPhrase)
        {
            var saltStringBytes = Generate256BitsOfRandomEntropy();
            var ivStringBytes = Generate256BitsOfRandomEntropy();
            var plainTextBytes = Encoding.UTF8.GetBytes(plainText);
            using (var password = new Rfc2898DeriveBytes(passPhrase, saltStringBytes, DerivationIterations))
            {
                var keyBytes = password.GetBytes(Keysize / 8);
                using (var symmetricKey = new RijndaelManaged())
                {
                    symmetricKey.BlockSize = 256;
                    symmetricKey.Mode = CipherMode.CBC;
                    symmetricKey.Padding = PaddingMode.PKCS7;
                    using (var encryptor = symmetricKey.CreateEncryptor(keyBytes, ivStringBytes))
                    {
                        using (var memoryStream = new MemoryStream())
                        {
                            using (var cryptoStream = new CryptoStream(memoryStream, encryptor, CryptoStreamMode.Write))
                            {
                                cryptoStream.Write(plainTextBytes, 0, plainTextBytes.Length);
                                cryptoStream.FlushFinalBlock();
                                // Create the final bytes as a concatenation of the random salt bytes, the random iv bytes and the cipher bytes.
                                var cipherTextBytes = saltStringBytes;
                                cipherTextBytes = cipherTextBytes.Concat(ivStringBytes).ToArray();
                                cipherTextBytes = cipherTextBytes.Concat(memoryStream.ToArray()).ToArray();
                                memoryStream.Close();
                                cryptoStream.Close();
                                return Convert.ToBase64String(cipherTextBytes);
                            }
                        }
                    }
                }
            }
        }

        public string Decrypt(string cipherText, string passPhrase)
        {
            // Get the complete stream of bytes that represent:
            // [32 bytes of Salt] + [32 bytes of IV] + [n bytes of CipherText]
            var cipherTextBytesWithSaltAndIv = Convert.FromBase64String(cipherText);
            // Get the saltbytes by extracting the first 32 bytes from the supplied cipherText bytes.
            var saltStringBytes = cipherTextBytesWithSaltAndIv.Take(Keysize / 8).ToArray();
            // Get the IV bytes by extracting the next 32 bytes from the supplied cipherText bytes.
            var ivStringBytes = cipherTextBytesWithSaltAndIv.Skip(Keysize / 8).Take(Keysize / 8).ToArray();
            // Get the actual cipher text bytes by removing the first 64 bytes from the cipherText string.
            var cipherTextBytes = cipherTextBytesWithSaltAndIv.Skip((Keysize / 8) * 2).Take(cipherTextBytesWithSaltAndIv.Length - ((Keysize / 8) * 2)).ToArray();

            using (var password = new Rfc2898DeriveBytes(passPhrase, saltStringBytes, DerivationIterations))
            {
                var keyBytes = password.GetBytes(Keysize / 8);
                using (var symmetricKey = new RijndaelManaged())
                {
                    symmetricKey.BlockSize = 256;
                    symmetricKey.Mode = CipherMode.CBC;
                    symmetricKey.Padding = PaddingMode.PKCS7;
                    using (var decryptor = symmetricKey.CreateDecryptor(keyBytes, ivStringBytes))
                    {
                        using (var memoryStream = new MemoryStream(cipherTextBytes))
                        {
                            using (var cryptoStream = new CryptoStream(memoryStream, decryptor, CryptoStreamMode.Read))
                            {
                                var plainTextBytes = new byte[cipherTextBytes.Length];
                                var decryptedByteCount = cryptoStream.Read(plainTextBytes, 0, plainTextBytes.Length);
                                memoryStream.Close();
                                cryptoStream.Close();
                                return Encoding.UTF8.GetString(plainTextBytes, 0, decryptedByteCount);
                            }
                        }
                    }
                }
            }
        }

        private static byte[] Generate256BitsOfRandomEntropy()
        {
            var randomBytes = new byte[32]; // 32 Bytes will give us 256 bits.
            using (var rngCsp = new RNGCryptoServiceProvider())
            {
                // Fill the array with cryptographically secure random bytes.
                rngCsp.GetBytes(randomBytes);
            }
            return randomBytes;
        }
    }

    public class GlobalFunction
    {
        public SqlConnection conn = new SqlConnection();
        public SqlCommand cmd = new SqlCommand();

        public string GenID()
        {
            StringBuilder builder = new StringBuilder();
            Enumerable
               .Range(65, 26)
                .Select(e => ((char)e).ToString())
                .Concat(Enumerable.Range(97, 26).Select(e => ((char)e).ToString()))
                .Concat(Enumerable.Range(0, 10).Select(e => e.ToString()))
                .OrderBy(e => Guid.NewGuid())
                .Take(11)
                .ToList().ForEach(e => builder.Append(e));
            string id = builder.ToString();
            return id;
        }
        public string GuidSha256(string url)
        {
            SHA256 shaAlgorithm = new SHA256Managed();
            byte[] shaDigest = shaAlgorithm.ComputeHash(ASCIIEncoding.ASCII.GetBytes(url));
            return BitConverter.ToString(shaDigest);
        }
        public object GetPropValue(object source, string propertyName)
        {
            var property = source.GetType().GetRuntimeProperties().FirstOrDefault(p => string.Equals(p.Name, propertyName, StringComparison.OrdinalIgnoreCase));
            if (property != null)
            {
                if (property.GetValue(source) != null)
                {
                    return property?.GetValue(source);
                }
                else
                {
                    return null;
                }
            }
            else
            {
                return null;
            }

        }
        

        #region UserPP
        public UserData GetProfileUser(int IdUser)
        {
            var res = new UserData();
            try
            {
                conn.ConnectionString = Config.ConStr;
                using (var connection = conn)
                {
                    connection.Open();
                    string sql = "exec SP_GetProfileUser " +
                        "@IdUser=" + IdUser + "";
                    using (var command = new SqlCommand(sql, connection))
                    {
                        command.CommandTimeout = 0;
                        using (var reader = command.ExecuteReader())
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
        public List<ModuleData> GetModulByAkses(string IdUser)
        {
            var res = new List<ModuleData>();
            try
            {
                conn.ConnectionString = Config.ConStr;
                using (var connection = conn)
                {
                    connection.Open();
                    string sql = "exec SP_GetModulByAkses " +
                        "@IdUser=" + IdUser + "";
                    using (var command = new SqlCommand(sql, connection))
                    {
                        command.CommandTimeout = 0;
                        using (var reader = command.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                var d = new ModuleData();
                                d.IdModul = reader["IdModul"].ToString().ToInt();
                                d.NamaModule = reader["NamaModule"].ToString();
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

        public List<MenuData> GetMenuByAkses(string IdUser,string IdModule,string Posisi)
        {
            var res = new List<MenuData>();
            try
            {
                conn.ConnectionString = Config.ConStr;
                using (var connection = conn)
                {
                    connection.Open();
                    string sql = "exec SP_GetMenuByAkses " +
                        "@IdUser=" + IdUser + "," +
                        "@IdModule=" + IdModule + "," +
                        "@Posisi=" + Posisi + "" +
                        "";
                    using (var command = new SqlCommand(sql, connection))
                    {
                        command.CommandTimeout = 0;
                        using (var reader = command.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                var d = new MenuData();
                                d.idMenu = reader["idMenu"].ToString().ToInt();
                                d.NamaMenu = reader["NamaMenu"].ToString();
                                d.Action = reader["Action"].ToString();
                                d.Controller= reader["Controller"].ToString();
                                d.Img = reader["Img"].ToString();
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
