﻿using System.Web;
using System.Web.Optimization;

namespace TradingCms
{
    public class BundleConfig
    {
        // For more information on bundling, visit http://go.microsoft.com/fwlink/?LinkId=301862
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new ScriptBundle("~/bundles/jquery").Include(
                        "~/Scripts/jquery-{version}.js"));

            // Use the development version of Modernizr to develop with and learn from. Then, when you're
            // ready for production, use the build tool at http://modernizr.com to pick only the tests you need.
            bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
                        "~/Scripts/modernizr-*"));

            bundles.Add(new ScriptBundle("~/bundles/bootstrap").Include(
                      "~/Scripts/bootstrap.js",
                      "~/Scripts/respond.js"));

            bundles.Add(new StyleBundle("~/Content/css").Include(
                      "~/Content/bootstrap.min.css",
                      "~/Content/fontawesome/font-awesome.min.css",
                      "~/Content/jquery.fancybox.css",
                      "~/Content/OwlCarousel/owl.carousel.css",
                      "~/Content/OwlCarousel/owl.theme.css",
                      "~/Content/fonts.css",
                      "~/Content/site.css",
                      "~/Content/media.css"));

            bundles.Add(new StyleBundle("~/Scripts/js").Include(
                      "~/Scripts/jquery.fancybox.pack.js",
                      "~/Scripts/owl.carousel.min.js",
                      "~/Scripts/script.js"));
        }
    }
}
