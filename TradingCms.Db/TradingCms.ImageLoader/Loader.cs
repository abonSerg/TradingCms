using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;

namespace TradingCms.ImageLoader
{
    public struct Image
    {
        public byte[] ImgBytes { get; set; }
        public string ImgMimeType { get; set; }

        public Image(byte[] imgBytes, string imgMimeType) : this()
        {
            ImgBytes = imgBytes;
            ImgMimeType = imgMimeType;
        }
    }

    public class Loader
    {
        private readonly Dictionary<string, string[]> _imagePathes;
        private readonly Dictionary<string, List<Image>> _images;
        private readonly List<string> _subSategories;

        private readonly string _conectionString;
        private const string SelectQuery = "select Products.Id, CategoryTranslations.Name" +
            " from Products join Categories on Products.CategoryId = Categories.Id" +
            " join CategoryTranslations on CategoryTranslations.CategoryId = Categories.Id  where  CategoryTranslations.Name = ";

        private const string InsertQuery = " Insert into ProductImages (Img, ProductId, ImgMimeType) values (@img, @prodId, @imgMimeType)";

        public Loader(string conectionString)
        {
            _conectionString = conectionString;
            _imagePathes = new Dictionary<string, string[]>();
            _images = new Dictionary<string, List<Image>>();
            _subSategories = new List<string>(new[] {
                "N'Ноутбуки'",
                "N'Планшеты'",
                "N'Электронные книги'",
                "N'Смартфоны'",
                "N'MP3-плееры'",
                "N'Зарядные устройства'",
                "N'Холодильники'",
                "N'Плиты'",
                "N'Стиральные машины'",
                "N'Беговые дорожки'",
                "N'Велотренажеры'",
                "N'Гантели, диски'",
                "N'Лодки'",
                "N'Бинокли'",
                "N'Рации'"
            });

            LoadImgPathes();
        }

        //Do not forget to set "Copy always" value for files after adding in file properties
        private void LoadImgPathes()
        {
            try
            {
                _imagePathes.Add("Bikes", Directory.GetFiles("Content/Bikes"));
                _imagePathes.Add("Binocles", Directory.GetFiles("Content/Binocles"));
                _imagePathes.Add("Boats", Directory.GetFiles("Content/Boats"));
                _imagePathes.Add("Chargers", Directory.GetFiles("Content/Chargers"));
                _imagePathes.Add("EReaders", Directory.GetFiles("Content/Ereaders"));
                _imagePathes.Add("Fridges", Directory.GetFiles("Content/Fridges"));
                _imagePathes.Add("Gymtools", Directory.GetFiles("Content/Gymtools"));
                _imagePathes.Add("Mobiles", Directory.GetFiles("Content/Mobiles"));
                _imagePathes.Add("Notebooks", Directory.GetFiles("Content/Notebooks"));
                _imagePathes.Add("Players", Directory.GetFiles("Content/Players"));
                _imagePathes.Add("Radio", Directory.GetFiles("Content/Radio"));
                _imagePathes.Add("Runmachines", Directory.GetFiles("Content/Runmachines"));
                _imagePathes.Add("Stoves", Directory.GetFiles("Content/Stoves"));
                _imagePathes.Add("Tablets", Directory.GetFiles("Content/Tablets"));
                _imagePathes.Add("Washers", Directory.GetFiles("Content/Washers"));
            }
            catch
            {
                Console.WriteLine("Check file-folders");
            }
        }

        public void ConvertImages()
        {
            foreach (var pare in _imagePathes)
            {
                var imageList = (from path in pare.Value
                                 let imgBytes = LoadImg(path)
                                 let imgMimeType = ImageMimeTypes.GetContentType(path)
                                 where imgBytes != null
                                 select new Image(imgBytes, imgMimeType)).ToList();

                _images.Add(pare.Key, imageList);
            }
        }

        private static byte[] LoadImg(string filePath)
        {
            try
            {
                using (var stream = new FileStream(filePath, FileMode.Open, FileAccess.Read))
                {
                    using (var reader = new BinaryReader(stream))
                    {
                        return reader.ReadBytes((int)stream.Length);
                    }
                }
            }
            catch (Exception)
            {
                Console.WriteLine("error");
                return null;
            }
        }

        public DataSet GetProductData()
        {
            var dataSet = new DataSet();

            foreach (var subSategory in _subSategories)
            {
                var table = new DataTable(subSategory);

                using (var connection = new SqlConnection(_conectionString))
                {
                    var cmd = new SqlCommand(SelectQuery + subSategory, connection);
                    connection.Open();

                    var adapter = new SqlDataAdapter(cmd);
                    adapter.Fill(table);
                }

                dataSet.Tables.Add(table);
            }

            return dataSet;
        }

        private void FillProductImgs(DataTable products, IEnumerable<Image> imgs)
        {
            var rowCount = products.Rows.Count;

            if (rowCount == 0) return;

            var i = 0;

            using (var connection = new SqlConnection(_conectionString))
            {
                foreach (var img in imgs)
                {
                    i = i <= rowCount - 1 ? i : 0;

                    if (TrySaveImg(img, products.Rows[i][0].ToString(), connection))
                    {
                        Console.WriteLine("Image for Product Type " + products.TableName + " was added");
                    }
                    else
                    {
                        Console.WriteLine("WARNING : image for Product Type " + products.TableName + " was not added");
                    }

                    i = ++i;
                }
            }
        }

        private static bool TrySaveImg(Image img, string productId, SqlConnection connection)
        {
            if (img.ImgBytes == null || string.IsNullOrEmpty(productId)) return false;
            if (connection.State != ConnectionState.Open) connection.Open();

            var cmd = new SqlCommand(InsertQuery, connection);

            cmd.Parameters.Add(new SqlParameter("img", img.ImgBytes));
            cmd.Parameters.Add(new SqlParameter("prodId", productId));
            cmd.Parameters.Add(new SqlParameter("imgMimeType", img.ImgMimeType));

            var rowsAffected = cmd.ExecuteNonQuery();
            var res = rowsAffected > 0;
            return res;
        }

        public void Perform()
        {
            ConvertImages();

            var productDataSet = GetProductData();

            foreach (var image in _images)
            {
                switch (image.Key)
                {
                    case "Bikes":
                        FillProductImgs(productDataSet.Tables["N'Велотренажеры'"], image.Value);
                        break;
                    case "Binocles":
                        FillProductImgs(productDataSet.Tables["N'Бинокли'"], image.Value);
                        break;
                    case "Boats":
                        FillProductImgs(productDataSet.Tables["N'Лодки'"], image.Value);
                        break;
                    case "Chargers":
                        FillProductImgs(productDataSet.Tables["N'Зарядные устройства'"], image.Value);
                        break;
                    case "EReaders":
                        FillProductImgs(productDataSet.Tables["N'Электронные книги'"], image.Value);
                        break;
                    case "Fridges":
                        FillProductImgs(productDataSet.Tables["N'Холодильники'"], image.Value);
                        break;
                    case "Gymtools":
                        FillProductImgs(productDataSet.Tables["N'Гантели, диски'"], image.Value);
                        break;
                    case "Mobiles":
                        FillProductImgs(productDataSet.Tables["N'Смартфоны'"], image.Value);
                        break;
                    case "Notebooks":
                        FillProductImgs(productDataSet.Tables["N'Ноутбуки'"], image.Value);
                        break;
                    case "Players":
                        FillProductImgs(productDataSet.Tables["N'MP3-плееры'"], image.Value);
                        break;
                    case "Radio":
                        FillProductImgs(productDataSet.Tables["N'Рации'"], image.Value);
                        break;
                    case "Runmachines":
                        FillProductImgs(productDataSet.Tables["N'Беговые дорожки'"], image.Value);
                        break;
                    case "Stoves":
                        FillProductImgs(productDataSet.Tables["N'Плиты'"], image.Value);
                        break;
                    case "Tablets":
                        FillProductImgs(productDataSet.Tables["N'Планшеты'"], image.Value);
                        break;
                    case "Washers":
                        FillProductImgs(productDataSet.Tables["N'Стиральные машины'"], image.Value);
                        break;
                    default:
                        Console.WriteLine("Type " + image.Key + " isn't found");
                        break;
                }
            }
        }
    }
}