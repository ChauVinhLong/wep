using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using BaiTap2_61133899.Models;

namespace BaiTap2_61133899.Controllers
{
    public class SinhVien_61133899Controller : Controller
    {
        // GET: SinhVien_61133899
        public ActionResult FormCollectionIndex()
        {
            return View();
        }
        //Sử dụng FormCollection:
        [HttpPost]
        public ActionResult FormCollection(FormCollection field)
        {
            string Id = field["Id"];
            string Name = field["Name"];
            double Marks = Convert.ToDouble(field["Marks"]);
            ViewBag.Id = Id;
            ViewBag.Name = Name;
            ViewBag.Marks = Marks;
            return View(ViewBag);
        }
        // sử dụng Request
        public ActionResult RequestIndex()
        {
            return View();
        }
        [HttpPost]
        public ActionResult UseRequest()
        {
            string Id = Request["Id"];
            string Name = Request["Name"];
            double Marks = Convert.ToDouble(Request["Marks"]);
            ViewBag.Id = Id;
            ViewBag.Name = Name;
            ViewBag.Marks = Marks;
            return View(ViewBag);
        }
        // su dung Action
        public ActionResult ActionIndex()
        {
            return View();
        }       
        [HttpPost]
        public ActionResult UseAction(string Id, string Name, double Marks)
        {
            ViewBag.Id = Id;
            ViewBag.Name = Name;
            ViewBag.Marks = Marks;
            return View(ViewBag);
        }
        // sử dụng Model
        public ActionResult Model_Register()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Model_InfoRegister(StudentInfo s)
        {
            ViewBag.id = s.id;
            ViewBag.name = s.name;
            ViewBag.marks = s.marks;
            return View();
        }
    }
}