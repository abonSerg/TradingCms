using System.Linq;
using System.Net;
using System.Web.Mvc;
//using NHibernate.Exceptions;
using TradingCms.Data;
using TradingCms.Data.Access.Repositories;

namespace TradingCms.Controllers
{
    public class ProductController : Controller
    {
        public IRepository<Product> ProductRepository { get; set; }
        
        // GET: Product
        public ActionResult Index()
        {
            var products = ProductRepository.Items.ToList();
            return View(products);
        }

        // GET: Product/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }

            var product = ProductRepository.Find(id);

            if (product == null)
            {
                return HttpNotFound();
            }

            return View(product);
        }

        public ActionResult Product()
        {
            return View();
        }

        // GET: Product/Create
        //public ActionResult Create()
        //{
        //    return View();
        //}

        // POST: Product/Create
        //[HttpPost]
        //[ValidateAntiForgeryToken]
        //public ActionResult Create(Product product)
        //{
        //    try
        //    {
        //        if (ModelState.IsValid)
        //        {
        //            ProductRepository.Add(product);
        //            ProductRepository.Flush();
        //            return RedirectToAction("Index");
        //        }
        //    }
        //    catch (DataException)
        //    {
        //        ModelState.AddModelError("", "Unable to save changes. Try again, and if the problem persists see your system administrator.");
        //    }
        //    return View(product);
        //}

        // GET: Product/Edit/5
        //public ActionResult Edit(int? id)
        //{
        //    if (id == null)
        //    {
        //        return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
        //    }
        //    var product = ProductRepository.Find(id);
        //    if (product == null)
        //    {
        //        return HttpNotFound();
        //    }
        //    return View(product);
        //}

        // POST: Product/Edit/5
        //[HttpPost]
        //[ValidateAntiForgeryToken]
        //public ActionResult Edit(Product product)
        //{
        //    try
        //    {
        //        if (ModelState.IsValid)
        //        {
        //            ProductRepository.Update(product);
        //            ProductRepository.Flush();

        //            return RedirectToAction("Index");
        //        }
        //    }
        //    catch (DataException)
        //    {
        //        ModelState.AddModelError("", "Unable to save changes. Try again, and if the problem persists, see your system administrator.");
        //    }
        //    return View(product);
        //}

        // GET: Product/Delete/5
        //public ActionResult Delete(int? id, bool? saveChangesError = false)
        //{
        //    if (id == null)
        //    {
        //        return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
        //    }
        //    if (saveChangesError.GetValueOrDefault())
        //    {
        //        ViewBag.ErrorMessage = "Delete failed. Try again, and if the problem persists see your system administrator.";
        //    }
        //    var product = ProductRepository.Find(id);
        //    if (product == null)
        //    {
        //        return HttpNotFound();
        //    }
        //    return View(product); 
        //}

        // POST: Product/Delete/5
        //[HttpPost, ActionName("Delete")]
        //[ValidateAntiForgeryToken]
        //public ActionResult DeleteConfirmed(int id) 
        //{
        //    try
        //    {
        //        var product = ProductRepository.Find(id);
        //        ProductRepository.Delete(product);
        //        ProductRepository.Flush();
        //    }
        //    catch (DataException)
        //    {
        //        return RedirectToAction("Delete", new { id = id, saveChangesError = true });
        //    }
        //    return RedirectToAction("Index");
        //}
    }
}
