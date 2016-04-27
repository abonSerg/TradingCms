using System;
using System.IO;
using System.Net;
using System.Net.Http;
using System.Net.Http.Headers;

namespace TradingCms.Helpers
{
    public static class ApiControllerHelper
    {
        public static HttpResponseMessage GetImageResponseMessage(string imgMimeType, byte[] img)
        {
            // Check if correct mime type
            MediaTypeHeaderValue mimeTypeHeader;
            try
            {
                mimeTypeHeader = new MediaTypeHeaderValue(imgMimeType);
            }
            catch (FormatException)
            {
                return new HttpResponseMessage(HttpStatusCode.InternalServerError);
            }

            // Create response
            var result = new HttpResponseMessage(HttpStatusCode.OK)
            {
                Content = new StreamContent(new MemoryStream(img))
            };

            result.Content.Headers.ContentType = mimeTypeHeader;
            return result;
        }
    }
}