using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TradingCms.ImageLoader
{
    class Loader
    {
        Dictionary<string, string[]> imagePathes;
        Dictionary<string, List<byte[]>> images;
        List<string> subSategories;

        string conectionString;

        string selectQuery = "select Products.Id, CategoryTranslations.Name" +
                               " from Products join Categories on Products.CategoryId = Categories.Id " +
                               "join CategoryTranslations on CategoryTranslations.CategoryId = Categories.Id  where  CategoryTranslations.Name = ";

        string insertQuery = " Insert into ProductImages (Img, ProductId) values (@img, @prodId)";

        public Loader(string conectionString) 
        {
            this.conectionString = conectionString;
            imagePathes = new Dictionary<string, string[]>();
            images = new Dictionary<string, List<byte[]>>();
            subSategories = new List<string>(new string[]
                                      {"N'Ноутбуки'",
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
                imagePathes.Add("Bikes", Directory.GetFiles("Content/Bikes"));
                imagePathes.Add("Binocles", Directory.GetFiles("Content/Binocles"));
                imagePathes.Add("Boats", Directory.GetFiles("Content/Boats"));
                imagePathes.Add("Chargers", Directory.GetFiles("Content/Chargers"));
                imagePathes.Add("EReaders", Directory.GetFiles("Content/Ereaders"));
                imagePathes.Add("Fridges", Directory.GetFiles("Content/Fridges"));
                imagePathes.Add("Gymtools", Directory.GetFiles("Content/Gymtools"));
                imagePathes.Add("Mobiles", Directory.GetFiles("Content/Mobiles"));
                imagePathes.Add("Notebooks", Directory.GetFiles("Content/Notebooks"));
                imagePathes.Add("Players", Directory.GetFiles("Content/Players"));
                imagePathes.Add("Radio", Directory.GetFiles("Content/Radio"));
                imagePathes.Add("Runmachines", Directory.GetFiles("Content/Runmachines"));
                imagePathes.Add("Stoves", Directory.GetFiles("Content/Stoves"));
                imagePathes.Add("Tablets", Directory.GetFiles("Content/Tablets"));
                imagePathes.Add("Washers", Directory.GetFiles("Content/Washers"));
            }
            catch 
            {
                Console.WriteLine("Check file-folders");
            }
        }

        public void ConvertImages() 
        {
            foreach (var pare in imagePathes) 
            {
                byte[] img = null;
                var imageList = new List<byte[]>();
                foreach (var path in pare.Value) 
                {
                    img = LoadImg(path);

                    if(img != null)
                        imageList.Add(img);
                }

                images.Add(pare.Key, imageList);
            }
        }
    
        private byte[] LoadImg(string filePath) 
        {
            try
            {
                using (FileStream stream = new FileStream(filePath, FileMode.Open, FileAccess.Read)) 
                {
                    using (BinaryReader reader = new BinaryReader(stream)) 
                    {
                        return reader.ReadBytes((int)stream.Length);
                    }
                }
            }
            catch (Exception e) 
            {
                Console.WriteLine("error");
                return null;
            }
        }

        public DataSet GetProductData()
        {
            var dataSet = new DataSet();

            foreach (var subSategory in subSategories) 
            {
                DataTable table = new DataTable(subSategory);

                using (SqlConnection connection = new SqlConnection(conectionString))
                {
                    SqlCommand cmd = new SqlCommand(selectQuery + subSategory, connection);
                    connection.Open();

                    SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                    adapter.Fill(table);
                }

                dataSet.Tables.Add(table);
            }

            return dataSet;
        }


        private void FillProductImgs(DataTable products, List<byte[]> imgs) 
        {
            int rowCount = products.Rows.Count;

            if (rowCount == 0)
                return;

            int i = 0;

            using (SqlConnection connection = new SqlConnection(conectionString))
            {
                foreach (var img in imgs)
                {
                    i = i <= rowCount - 1 ? i : 0;

                    if(TrySaveImg(img,products.Rows[i][0].ToString(), connection))
                        Console.WriteLine("Image for Product Type " + products.TableName + " was added");
                    else
                        Console.WriteLine("WARNING : image for Product Type " + products.TableName + " was not added");

                    i = ++i;
                }
            }
        }

        private bool TrySaveImg(byte[] img, string productId, SqlConnection connection) 
        {
            bool res = false;
            if (img != null && !string.IsNullOrEmpty(productId))
            {

                if (connection.State != ConnectionState.Open)
                    connection.Open();

                SqlCommand cmd = new SqlCommand(insertQuery, connection);

                cmd.Parameters.Add(new SqlParameter("img", img));
                cmd.Parameters.Add(new SqlParameter("prodId", productId));
 
                int rowsAffected = cmd.ExecuteNonQuery();
                res = rowsAffected > 0;

            }
            return res;
        }


        public void Perform() 
        {
            ConvertImages();

            var productDataSet = GetProductData();

            foreach (var image in images) 
            {
                switch (image.Key)
                {
                    case "Bikes":
                        FillProductImgs(productDataSet.Tables["N'Велотренажеры'"],image.Value);
                        break;
                    case "Binocles":
                        FillProductImgs(productDataSet.Tables["N'Бинокли'"],image.Value);
                        break;
                    case "Boats":
                        FillProductImgs(productDataSet.Tables["N'Лодки'"],image.Value);
                        break;
                    case "Chargers":
                        FillProductImgs(productDataSet.Tables["N'Зарядные устройства'"],image.Value);
                        break;
                    case "EReaders":
                        FillProductImgs(productDataSet.Tables["N'Электронные книги'"],image.Value);
                        break;
                    case "Fridges":
                        FillProductImgs(productDataSet.Tables["N'Холодильники'"],image.Value);
                        break;
                    case "Gymtools":
                        FillProductImgs(productDataSet.Tables["N'Гантели, диски'"],image.Value);
                        break;
                    case "Mobiles":
                        FillProductImgs(productDataSet.Tables["N'Смартфоны'"],image.Value);
                        break;
                    case "Notebooks":
                        FillProductImgs(productDataSet.Tables["N'Ноутбуки'"],image.Value);
                        break;
                    case "Players":
                        FillProductImgs(productDataSet.Tables["N'MP3-плееры'"],image.Value);
                        break;
                    case "Radio":
                        FillProductImgs(productDataSet.Tables["N'Рации'"],image.Value);
                        break;
                    case "Runmachines":
                        FillProductImgs(productDataSet.Tables["N'Беговые дорожки'"],image.Value);
                        break;
                    case "Stoves":
                        FillProductImgs(productDataSet.Tables["N'Плиты'"],image.Value);
                        break;
                    case "Tablets":
                        FillProductImgs(productDataSet.Tables["N'Планшеты'"],image.Value);
                        break;
                    case "Washers":
                        FillProductImgs(productDataSet.Tables["N'Стиральные машины'"],image.Value);
                        break;
                    default:
                        Console.WriteLine("Type " + image.Key + " isn't found");
                        break;
                }
            }
        }

    }
}
