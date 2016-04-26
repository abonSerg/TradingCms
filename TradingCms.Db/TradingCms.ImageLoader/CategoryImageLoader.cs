using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace TradingCms.ImageLoader
{
    public class CategoryImageLoader
    {
        private readonly Dictionary<string, Image> _images;
        private readonly Dictionary<int, string> _categories;

        private readonly string _conectionString;
        private const string ImagePath = "Content/Categories";
        private const string SelectQuery = "select Categories.Id, CategoryTranslations.Name " +
                                           "from Categories join CategoryTranslations on CategoryTranslations.CategoryId = Categories.Id;";
        private const string UpdateQuery = "Update Categories SET Img=@img, ImgMimeType=@imgMimeType where Id = ";

        public CategoryImageLoader(string conectionString)
        {
            _conectionString = conectionString;
            _images = new Dictionary<string, Image>();
            _categories = new Dictionary<int, string>();
        }

        private void ConvertImages()
        {
            foreach (var path in Directory.GetFiles(ImagePath))
            {
                var imgBytes = LoadImg(path);
                var imgMimeType = ImageMimeTypes.GetContentType(path);
                var img = new Image(imgBytes, imgMimeType);

                _images.Add(Path.GetFileNameWithoutExtension(path), img);
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

        private int FillCategoryImgs()
        {
            var counter = 0;
            if (_images.Count > 0)
            {
                using (var connection = new SqlConnection(_conectionString))
                {
                    foreach (var img in _images)
                    {
                        foreach (var category in _categories)
                        {
                            if (category.Value == img.Key)
                            {
                                if (TrySaveImg(img.Value, category.Key, connection))
                                {
                                    counter++;
                                    Console.WriteLine("Image for Category.Name '" + category.Value + "' was added");
                                }
                                else
                                {
                                    Console.WriteLine("WARNING : image for Category.Name '" + category.Value + "' was not added");
                                }
                            }
                        }
                    }
                }
            }
            return counter;
        }

        private static bool TrySaveImg(Image img, int categoryId, SqlConnection connection)
        {
            if (img.ImgBytes == null || categoryId < 1) return false;
            if (connection.State != ConnectionState.Open) connection.Open();

            var cmd = new SqlCommand(UpdateQuery + categoryId, connection);

            cmd.Parameters.Add(new SqlParameter("img", img.ImgBytes));
            cmd.Parameters.Add(new SqlParameter("imgMimeType", img.ImgMimeType));

            var rowsAffected = cmd.ExecuteNonQuery();
            var res = rowsAffected > 0;
            return res;
        }

        private void GetCategories()
        {
            using (var connection = new SqlConnection(_conectionString))
            {
                connection.Open();

                var cmd = new SqlCommand(SelectQuery, connection);
                var reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    _categories.Add((int)reader[0], reader[1].ToString());
                }
            }
        }

        public void Perform()
        {
            GetCategories();
            ConvertImages();

            if (_categories.Count > 0 && _images.Count > 0)
            {
                var count = FillCategoryImgs();
                Console.WriteLine(count + " images was added in Categories");
            }
        }
    }
}