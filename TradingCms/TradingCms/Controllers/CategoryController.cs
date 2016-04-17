using System.Linq;
using System.Net;
using System.Web.Mvc;
//using NHibernate.Exceptions;
using TradingCms.Data;
using TradingCms.Data.Access.Repositories;

namespace TradingCms.Controllers
{
    public class CategoryController : Controller
    {
        public IRepository<Category> CategoryRepository { get; set; }

        // GET: Category
        public ActionResult Index()
        {
            var categories = CategoryRepository.Items.ToList();
            return View(categories);
        }

        // GET: Category/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }

            var category = CategoryRepository.Find(id);

            if (category == null)
            {
                return HttpNotFound();
            }
            return View(category);
        }

        public ActionResult Cart()
        {
            return View();
        }

        public ActionResult Registration()
        {
            return View();
        }

        public ActionResult Subcategories()
        {
            return View();
        }

        // GET: Category/Create
        //public ActionResult Create()
        //{
        //    return View();
        //}

        // POST: Category/Create
        //[HttpPost]
        //[ValidateAntiForgeryToken]
        //public ActionResult Create(Category category)
        //{
        //    try
        //    {
        //        if (ModelState.IsValid)
        //        {
        //            CategoryRepository.Add(category);
        //            CategoryRepository.Flush();
        //            return RedirectToAction("Index");
        //        }
        //    }
        //    catch (DataException)
        //    {
        //        ModelState.AddModelError("", "Unable to save changes. Try again, and if the problem persists see your system administrator.");
        //    }
        //    return View(category);
        //}

        // GET: Category/Edit/5
        //public ActionResult Edit(int? id)
        //{
        //    if (id == null)
        //    {
        //        return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
        //    }
        //    var category = CategoryRepository.Find(id);
        //    if (category == null)
        //    {
        //        return HttpNotFound();
        //    }
        //    return View(category);
        //}

        // POST: Category/Edit/5
        //[HttpPost]
        //[ValidateAntiForgeryToken]
        //public ActionResult Edit(Category category)
        //{
        //    try
        //    {
        //        if (ModelState.IsValid)
        //        {
        //            CategoryRepository.Update(category);
        //            CategoryRepository.Flush();

        //            return RedirectToAction("Index");
        //        }
        //    }
        //    catch (DataException)
        //    {
        //        ModelState.AddModelError("", "Unable to save changes. Try again, and if the problem persists, see your system administrator.");
        //    }
        //    return View(category);
        //}

        // GET: Category/Delete/5
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
        //    var category = CategoryRepository.Find(id);
        //    if (category == null)
        //    {
        //        return HttpNotFound();
        //    }
        //    return View(category);
        //}

        // POST: Category/Delete/5
        //[HttpPost, ActionName("Delete")]
        //[ValidateAntiForgeryToken]
        //public ActionResult DeleteConfirmed(int id)
        //{
        //    try
        //    {
        //        var category = CategoryRepository.Find(id);
        //        CategoryRepository.Delete(category);
        //        CategoryRepository.Flush();
        //    }
        //    catch (DataException)
        //    {
        //        return RedirectToAction("Delete", new { id = id, saveChangesError = true });
        //    }
        //    return RedirectToAction("Index");
        //}
    }
}