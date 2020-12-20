using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ThiTracNghiem.Models;

namespace ThiTracNghiem.Controllers
{
    public class AdminController : Controller
    {
        //
        // GET: /Admin/
        DataContext datacontext = new DataContext();
        public ActionResult Admin()
        {
            return View("AdminDangNhap");
        }
        public ActionResult CheckAdminLogin(FormCollection form)
        {
            string username = "";
            string pass = "";
            if (form["username"] != null) username = form["username"];
            if (form["pass"] != null) pass = form["pass"];
            TaiKhoanAdmin TK = datacontext.TaiKhoanAdmins.SingleOrDefault(x => x.tenDagNhap == username);
            if (TK != null)
            {
                if (TK.matKhau == pass)
                {
                    Session["Admin"] = TK;
                    return RedirectToAction("QLDeThi", "QuanLyDeThi");
                }
                else
                {
                    ViewBag.username = username;
                    ViewBag.TB = "Mật khẩu sai";
                }
            }
            else
            {
                ViewBag.TB = "Tài khoản này không tồn tại";
            }
            return View("AdminDangNhap");
        }
        public ActionResult DangXuat()
        {
            Session["Admin"] = null;
            return View("AdminDangNhap");
        }
        public ActionResult CaNhan()
        {
            return View();
        }
        public ActionResult DoiMatKhau(FormCollection form)
        {
            string idTK = ((TaiKhoanAdmin)Session["Admin"]).tenDagNhap;
            string matKhaucu = "", matkhaumoi = "", xacnhanMK = "";
            if (form["MatKhauCu"] != null) matKhaucu = form["MatKhauCu"].ToString().Trim();
            if (form["MatKhauMoi"] != null) matkhaumoi = form["MatKhauMoi"].ToString().Trim();
            if (form["XacNhanMK"] != null) xacnhanMK = form["XacNhanMK"].ToString().Trim();
            TaiKhoanAdmin TK = datacontext.TaiKhoanAdmins.SingleOrDefault(x => x.tenDagNhap == idTK);
            if (TK != null)
            {
                if (TK.matKhau == matKhaucu)
                {
                    if (matkhaumoi == xacnhanMK)
                    {
                        TK.matKhau = matkhaumoi;
                        datacontext.SaveChanges();
                        ViewBag.TB = "Đã đổi mật khẩu thành công";
                    }
                    else
                    {
                        ViewBag.TB = "Xác nhận mật khẩu sai";
                    }
                }
                else
                {
                    ViewBag.TB = "Mật khẩu sai";
                }
            }
            return View("CaNhan");
        }
        public JsonResult SuaHoTen(string hoTen)
        {
            string idTK = ((TaiKhoanAdmin)Session["Admin"]).tenDagNhap;
            TaiKhoanAdmin TK = datacontext.TaiKhoanAdmins.SingleOrDefault(x => x.tenDagNhap == idTK);
            if (TK != null)
            {
                TK.hoTen = hoTen;
                datacontext.SaveChanges();
                Session["Admin"] = TK;
            }
            return Json("", JsonRequestBehavior.AllowGet);
        }
        public ActionResult QuanLyTaiKhoan()
        {
            string TKHT = ((TaiKhoanAdmin)Session["Admin"]).tenDagNhap;
            if (!((TaiKhoanAdmin)Session["Admin"]).isAdmin)
            {
                return View("/QuanLyDeThi/QLDeThi");
            }
            else
            {
                int tongSoBangGhi = datacontext.TaiKhoanAdmins.Count()-1;
                PhanTrang PT = new PhanTrang();
                PT.trangHienTai = 1;
                PT.tongSoTrang = tongSoBangGhi / PT.soBangGhi + (tongSoBangGhi % PT.soBangGhi > 0 ? 1 : 0);
                ViewBag.PhanTrang = PT;
                return View(datacontext.TaiKhoanAdmins.OrderBy(x => x.hoTen)
                    .Where(x => x.tenDagNhap != TKHT)
                    .Skip((PT.trangHienTai - 1) * PT.soBangGhi)
                    .Take(PT.soBangGhi).ToList());
            }
        }
        public JsonResult LayTaiKhoan(string tDN)
        {
            TaiKhoanAdmin TK = datacontext.TaiKhoanAdmins.SingleOrDefault(x => x.tenDagNhap == tDN);
            if (TK != null)
            {
                return Json("true", JsonRequestBehavior.AllowGet);
            }
            return Json("", JsonRequestBehavior.AllowGet);
        }
        public ActionResult ThemTaiKhoan(FormCollection form)
        {
            new TaiKhoanAdmin().ThemTaiKhoan(form["TDN"],form["hoTen"],form["admin"]);
            return RedirectToAction("QuanLyTaiKhoan","Admin");
        }
        public ActionResult ReLoadTaiKhoan(string tDN, int trang, string tim)
        {
            string TKHT = ((TaiKhoanAdmin)Session["Admin"]).tenDagNhap;
            if (tDN != "") new TaiKhoanAdmin().XoaTaiKhoan(tDN);
            int tongSoBangGhi = datacontext.TaiKhoanAdmins.Count()-1;
            PhanTrang PT = new PhanTrang();
            PT.trangHienTai = trang;
            PT.tongSoTrang = tongSoBangGhi / PT.soBangGhi + (tongSoBangGhi % PT.soBangGhi > 0 ? 1 : 0);
            ViewBag.PhanTrang = PT;
            return View("_BangTaiKhoan", datacontext.TaiKhoanAdmins.Where(y => y.hoTen.Contains(tim) && y.tenDagNhap != TKHT)
                .OrderBy(x => x.hoTen)
                .Skip((PT.trangHienTai - 1) * PT.soBangGhi)
                .Take(PT.soBangGhi).ToList());
        }
        public JsonResult ResetMK(string tDN)
        {
            TaiKhoanAdmin TK = datacontext.TaiKhoanAdmins.SingleOrDefault(x => x.tenDagNhap == tDN);
            if (TK != null)
            {
                TK.matKhau = "123456";
                datacontext.SaveChanges();
            }
            return Json("", JsonRequestBehavior.AllowGet);
        }
    }
}
