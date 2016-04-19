using System.Collections.Generic;
using System.IO;

namespace TradingCms.ImageLoader
{
    public static class ImageMimeTypes
    {
        private static Dictionary<string, string> _contentTypes;

        private static void InitializeMimeTypes()
        {
            _contentTypes = new Dictionary<string, string>
            {
                {"art", "image/x-jg"},
                {"bm", "image/bmp"},
                {"bmp", "image/bmp"},
                {"fif", "image/fif"},
                {"fpx", "image/vnd.fpx"},
                {"g3", "image/g3fax"},
                {"gif", "image/gif"},
                {"ico", "image/x-icon"},
                {"ief", "image/ief"},
                {"iefs", "image/ief"},
                {"jfif", "image/jpeg"},
                {"jfif-tbnl", "image/jpeg"},
                {"jpe", "image/jpeg"},
                {"jpeg", "image/jpeg"},
                {"jpg", "image/jpeg"},
                {"jps", "image/x-jps"},
                {"jut", "image/jutvision"},
                {"mcf", "image/vasa"},
                {"nap", "image/naplps"},
                {"naplps", "image/naplps"},
                {"nif", "image/x-niff"},
                {"niff", "image/x-niff"},
                {"pbm", "image/x-portable-bitmap"},
                {"pct", "image/x-pict"},
                {"pcx", "image/x-pcx"},
                {"pgm", "image/x-portable-graymap"},
                {"pic", "image/pict"},
                {"pict", "image/pict"},
                {"pm", "image/x-xpixmap"},
                {"png", "image/png"},
                {"ppm", "image/x-portable-pixmap"},
                {"qif", "image/x-quicktime"},
                {"qti", "image/x-quicktime"},
                {"qtif", "image/x-quicktime"},
                {"rast", "image/cmu-raster"},
                {"rf", "image/vnd.rn-realflash"},
                {"rgb", "image/x-rgb"},
                {"rp", "image/vnd.rn-realpix"},
                {"svf", "image/vnd.dwg"},
                {"tif", "image/tiff"},
                {"turbot", "image/florian"},
                {"wbmp", "image/vnd.wap.wbmp"},
                {"xbm", "image/x-xbitmap"},
                {"xif", "image/vnd.xiff"},
                {"xpm", "image/x-xpixmap"},
                {"x-png", "image/png"},
                {"xwd", "image/x-xwd"}
            };
        }

        public static string GetContentType(string fileName)
        {
            if (_contentTypes == null || !(_contentTypes.Count > 0))
            {
                InitializeMimeTypes();
            }

            var fileInfo = new FileInfo(fileName);
            var extension = fileInfo.Extension.Replace(".", "");

            var contentType = "";
            if (_contentTypes != null) _contentTypes.TryGetValue(extension.ToLower(), out contentType);

            if (string.IsNullOrEmpty(contentType))
            {
                contentType = "application/octet-stream";
            }

            return contentType;
        }
    }
}