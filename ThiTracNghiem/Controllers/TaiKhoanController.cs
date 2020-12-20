using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ThiTracNghiem.Models;

namespace ThiTracNghiem.Controllers
{
    public class TaiKhoanController : Controller
    {
        //
        // GET: /TaiKhoan/
        DataContext datacontext = new DataContext();
        public ActionResult DangKy()
        {
            return View("DangKyTaiKhoan");
        }
        public JsonResult KiemTraTenDN(string tenDN)
        {
            string kq = "true";
            if (datacontext.ThiSinhs.Where(x => x.tenDangNhap == tenDN).ToList().Count < 1)
            {
                kq = "false";
            }
            return Json(kq, JsonRequestBehavior.AllowGet);
        }
        public JsonResult KiemTraEmail(string email)
        {
            string kq = "true";
            if (datacontext.ThiSinhs.Where(x => x.email == email).ToList().Count < 1)
            {
                kq = "false";
            }
            return Json(kq, JsonRequestBehavior.AllowGet);
        }
        public ActionResult TaoTaiKhoan(FormCollection form)
        {
            Session["idDangNhap"] = new ThiSinh().ThemThiSinh(form["txtHoTen"], Convert.ToDateTime(form["txtNgaySinh"]), form["gioiTinh"],
                form["email"], form["txtTenDN"], form["pass"]);
            Session["tenDangNhap"] = form["txtTenDN"];
            return RedirectToAction("TrangChu","TrangThiSinh");
        }
        public ActionResult UserDangNhap()
        {
            return View();
        }
        public ActionResult CheckUserLogin(FormCollection form)
        {
            string username = "";
            string pass = "";
            if (form["username"] != null) username = form["username"];
            if (form["pass"] != null) pass = form["pass"];
            ThiSinh TS = datacontext.ThiSinhs.SingleOrDefault(x => x.tenDangNhap == username);
            if (TS != null)
            {
                if (TS.matKhau == pass)
                {
                    Session["tenDangNhap"] = TS.tenDangNhap;
                    Session["idDangNhap"] = TS.idThiSinh;
                    return RedirectToAction("TrangChu", "TrangThiSinh");
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
            return View("UserDangNhap");
        }
        public ActionResult CaNhan()
        {
            if (Session["idDangNhap"] == null)
            {
                return RedirectToAction("UserDangNhap", "TaiKhoan");
            }
            string idTS = Session["idDangNhap"].ToString();
            ViewBag.ThiSinh = datacontext.ThiSinhs.SingleOrDefault(x => x.idThiSinh == idTS);
            return View();
        }
        public ActionResult DoiMatKhau(FormCollection form)
        {
            string idTS = Session["idDangNhap"].ToString();
            string matKhaucu = "", matkhaumoi = "", xacnhanMK = "";
            if (form["MatKhauCu"] != null) matKhaucu = form["MatKhauCu"].ToString().Trim();
            if (form["MatKhauMoi"] != null) matkhaumoi = form["MatKhauMoi"].ToString().Trim();
            if (form["XacNhanMK"] != null) xacnhanMK = form["XacNhanMK"].ToString().Trim();
            ThiSinh TS = datacontext.ThiSinhs.SingleOrDefault(x => x.idThiSinh == idTS);
            if (TS != null)
            {
                if (TS.matKhau == matKhaucu)
                {
                    if (matkhaumoi == xacnhanMK)
                    {
                        TS.matKhau = matkhaumoi;
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
            if (Session["idDangNhap"] == null)
            {
                return RedirectToAction("UserDangNhap", "TaiKhoan");
            }
            ViewBag.ThiSinh = TS;
            return View("CaNhan");
        }
        public ActionResult LuuThayDoiTaiKhoan(FormCollection form)
        {
            new ThiSinh().EditThiSinh(Session["idDangNhap"].ToString(), form["txtHoTen"], Convert.ToDateTime(form["txtNgaySinh"]), form["gioiTinh"]);
            return RedirectToAction("CaNhan");
        }
        public ActionResult DangXuat()
        {
            Session["tenDangNhap"] = null;
            Session["idDangNhap"] = null;
            return RedirectToAction("TrangChu", "TrangThiSinh");
        }
    }
}
