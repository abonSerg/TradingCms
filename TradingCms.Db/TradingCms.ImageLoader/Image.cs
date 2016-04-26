namespace TradingCms.ImageLoader
{
    public struct Image
    {
        public byte[] ImgBytes { get; set; }
        public string ImgMimeType { get; set; }

        public Image(byte[] imgBytes, string imgMimeType)
            : this()
        {
            ImgBytes = imgBytes;
            ImgMimeType = imgMimeType;
        }
    }
}