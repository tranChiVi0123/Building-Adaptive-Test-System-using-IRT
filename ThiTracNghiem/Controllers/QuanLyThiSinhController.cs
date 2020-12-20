using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ThiTracNghiem.Models;

namespace ThiTracNghiem.Controllers
{
    public class QuanLyThiSinhController : Controller
    {
        //
        // GET: /QuanLyThiSinh/
        DataContext datacontext = new DataContext();
        public ActionResult QuanLyThiSinh()
        {
            int tongSoBangGhi = datacontext.ThiSinhs.Count();
            PhanTrang PT = new PhanTrang();
            PT.trangHienTai = 1;
            PT.tongSoTrang = tongSoBangGhi / PT.soBangGhi + (tongSoBangGhi % PT.soBangGhi > 0 ? 1 : 0);
            ViewBag.PhanTrang = PT;
            return View(datacontext.ThiSinhs.OrderBy(x => x.hoTen)
                .Skip((PT.trangHienTai - 1) * PT.soBangGhi)
                .Take(PT.soBangGhi).ToList());
        }
        public ActionResult ReLoadThiSinh(string idThiSinh, int trang, string tim)
        {
            if (idThiSinh != "") new ThiSinh().XoaThiSinh(idThiSinh);
            int tongSoBangGhi = datacontext.ThiSinhs.Count();
            PhanTrang PT = new PhanTrang();
            PT.trangHienTai = trang;
            PT.tongSoTrang = tongSoBangGhi / PT.soBangGhi + (tongSoBangGhi % PT.soBangGhi > 0 ? 1 : 0);
            ViewBag.PhanTrang = PT;
            return View("_BangThiSinh", datacontext.ThiSinhs.Where(y => y.hoTen.Contains(tim))
                .OrderBy(x => x.hoTen)
                .Skip((PT.trangHienTai - 1) * PT.soBangGhi)
                .Take(PT.soBangGhi).ToList());
        }
        public JsonResult ResetMK(string idTK)
        {
            ThiSinh TS = datacontext.ThiSinhs.SingleOrDefault(x => x.idThiSinh == idTK);
            if (TS != null)
            {
                TS.matKhau = "123456";
                datacontext.SaveChanges();
            }
            return Json("", JsonRequestBehavior.AllowGet);
        }
    }
}
