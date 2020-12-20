using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ThiTracNghiem.Models;

namespace ThiTracNghiem.Controllers
{
    public class QuanLyDeThiController : Controller
    {
        //
        // GET: /QuanLyDeThi/

        DataContext datacontext = new DataContext();
        public ActionResult QLDeThi()
        {
            ViewBag.TieuDe = "TẤT CẢ CÂU HỎI CỦA HỆ THỐNG";
            int tongSoBangGhi = datacontext.CauHois.Count();
            PhanTrang PT = new PhanTrang();
            PT.trangHienTai = 1;
            PT.tongSoTrang = tongSoBangGhi / PT.soBangGhi + (tongSoBangGhi % PT.soBangGhi > 0 ? 1 : 0);
            ViewBag.PhanTrang = PT;
            return View(datacontext.CauHois.
                OrderByDescending(x => x.idCauHoi)
                .Skip((PT.trangHienTai - 1) * PT.soBangGhi)
                .Take(PT.soBangGhi).ToList());
        }
        public ActionResult ReLoadToanBoCauHoi(int trang, string tim)
        {
            ViewBag.TieuDe = "TẤT CẢ CÂU HỎI CỦA HỆ THỐNG";
            int tongSoBangGhi = datacontext.CauHois.Where(y => y.noiDung.Contains(tim)).Count();
            PhanTrang PT = new PhanTrang();
            PT.trangHienTai = trang;
            PT.tongSoTrang = tongSoBangGhi / PT.soBangGhi + (tongSoBangGhi % PT.soBangGhi > 0 ? 1 : 0);
            ViewBag.PhanTrang = PT;
            return View("_XemCauHoi",datacontext.CauHois
                .Where(y=>y.noiDung.Contains(tim))
                .OrderByDescending(x => x.idCauHoi)
                .Skip((PT.trangHienTai - 1) * PT.soBangGhi)
                .Take(PT.soBangGhi).ToList());
        }
        public ActionResult ViewThemMH()
        {
            return View("_ThemMonHoc");
        }
        public ActionResult TaoCauHoi()
        {
            List<MonHoc> MH = datacontext.MonHocs.ToList();
            ViewBag.MonHoc = MH;
            if (MH.Count > 0)
            {
                string idMH = MH[0].idMonHoc;
                ViewBag.Chuong = datacontext.Chuongs.Where(x => x.idMonHoc == idMH).ToList();
            }
            return View();
        }
        public JsonResult getChuong(string idMonHoc)
        {
            return Json((from C in datacontext.Chuongs
                         where C.idMonHoc == idMonHoc
                         select new { C.idChuong, C.tenChuong }).ToList(), JsonRequestBehavior.AllowGet);
        }
        [ValidateInput(false)]
        public ActionResult LuuCauHoi(FormCollection form)
        {
            string[] soCauTL = form["soCauTL"].Split(',');
            List<string> cauTraLoi = new List<string>();
            for (int i = 0; i < soCauTL.Length; i++)
            {
                if (Convert.ToInt32(soCauTL[i]) == (i + 1))
                {
                    cauTraLoi.Add(form["TraLoi_" + soCauTL[i]]);
                }
            }
            string[] TraLoi = new string[cauTraLoi.Count];
            for (int i = 0; i < cauTraLoi.Count; i++)
            {
                TraLoi[i] = cauTraLoi[i];
            }
                new CauHoi().ThemCauHoi(form["MonHoc"], form["CauHoi"], TraLoi, form["CauTLDung"].Split(','),
                    (float)Convert.ToDouble(form["DoPhanBiet"]), (float)Convert.ToDouble(form["DoKho"]),
                    Convert.ToInt32(form["tgTraLoi"]));            
            return RedirectToAction("TaoCauHoi");
        }
        public JsonResult XoaCauHoi(string idCauHoi)
        {
            bool daXoa = new CauHoi().XoaCauHoi(idCauHoi);
            if (daXoa)
            {
                return Json("1", JsonRequestBehavior.AllowGet);
            }
            else
            {
                return Json("0", JsonRequestBehavior.AllowGet);
            }
        }
        public ActionResult SuaCauHoi(string idCauHoi)
        {
            List<MonHoc> MH = datacontext.MonHocs.ToList();
            ViewBag.MonHoc = MH;
            if (MH.Count > 0)
            {
                string idMH = MH[0].idMonHoc;
                ViewBag.Chuong = datacontext.Chuongs.Where(x => x.idMonHoc == idMH).ToList();
            }
            CauHoi CH = datacontext.CauHois.SingleOrDefault(x => x.idCauHoi == idCauHoi);
            return View("_SuaCauHoi", CH);
        }
        public ActionResult LayNoiDungCauHoi(string idCauHoi)
        {
            CauHoi CH = datacontext.CauHois.SingleOrDefault(x => x.idCauHoi == idCauHoi);
            return View("_CauHoi", CH);
        }
        [ValidateInput(false)]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult LuuSuaDoiCauHoi(FormCollection form)
        {
            string idCauHoi = form["idCauHoi"];
            string[] soCauTL = form["soCauTL"].Split(',');
            List<string> cauTraLoi = new List<string>();
            for (int i = 0; i < soCauTL.Length; i++)
            {
                if (Convert.ToInt32(soCauTL[i]) == (i + 1))
                {
                    cauTraLoi.Add(form["TraLoi_" + soCauTL[i]]);
                }
            }
            string[] TraLoi = new string[cauTraLoi.Count];
            for (int i = 0; i < cauTraLoi.Count; i++)
            {
                TraLoi[i] = cauTraLoi[i];
            }
            string CHCH = form["CauHoi"];
            new CauHoi().LuuSuaDoiCauHoi(idCauHoi, form["MonHoc"], form["CauHoi"], TraLoi, form["CauTLDung"].Split(','),
                    (float)Convert.ToDouble(form["DoPhanBiet"]), (float)Convert.ToDouble(form["DoKho"]), Convert.ToInt32(form["tgTraLoi"]));
            CauHoi CH = datacontext.CauHois.SingleOrDefault(x => x.idCauHoi == idCauHoi);
            return View("_CauHoi", CH);
        }
        public ActionResult CauHoiCuaMonHoc(string idMonHoc)
        {
            ViewBag.idMonHoc = idMonHoc;
            ViewBag.TieuDe = "TẤT CẢ CÂU HỎI CỦA MÔN " + datacontext.MonHocs.SingleOrDefault(x => x.idMonHoc == idMonHoc).tenMonHoc;
            int tongSoBangGhi = datacontext.CauHois.Where(x => x.Chuong.MonHoc.idMonHoc == idMonHoc).Count();
            PhanTrang PT = new PhanTrang();
            PT.trangHienTai = 1;
            PT.tongSoTrang = tongSoBangGhi / PT.soBangGhi + (tongSoBangGhi % PT.soBangGhi > 0 ? 1 : 0);
            ViewBag.PhanTrang = PT;
            List<CauHoi> CH = datacontext.CauHois.Where(x => x.Chuong.MonHoc.idMonHoc == idMonHoc)
                .OrderByDescending(y => y.idCauHoi).Skip((PT.trangHienTai - 1) * PT.soBangGhi)
                .Take(PT.soBangGhi).ToList();
            return View("CauHoiMonHoc", CH);
        }
        public ActionResult ReLoadCauHoiCuaMonHoc(int trang, string idMonHoc, string tim)
        {
            ViewBag.idMonHoc = idMonHoc;
            ViewBag.TieuDe = "TẤT CẢ CÂU HỎI CỦA MÔN " + datacontext.MonHocs.SingleOrDefault(x => x.idMonHoc == idMonHoc).tenMonHoc;
            int tongSoBangGhi = datacontext.CauHois.Where(x => x.Chuong.MonHoc.idMonHoc == idMonHoc && x.noiDung.Contains(tim)).Count();
            PhanTrang PT = new PhanTrang();
            PT.trangHienTai = trang;
            PT.tongSoTrang = tongSoBangGhi / PT.soBangGhi + (tongSoBangGhi % PT.soBangGhi > 0 ? 1 : 0);
            ViewBag.PhanTrang = PT;
            List<CauHoi> CH = datacontext.CauHois
                .Where(x => x.Chuong.MonHoc.idMonHoc == idMonHoc && x.noiDung.Contains(tim))
                .OrderByDescending(y => y.idCauHoi)
                .Skip((PT.trangHienTai - 1) * PT.soBangGhi)
                .Take(PT.soBangGhi).ToList();
            return View("_XemCauHoi", CH);
        }
        public ActionResult CauHoiCuaChuong(string idChuong)
        {
            ViewBag.idChuong = idChuong;
            ViewBag.TieuDe = "TẤT CẢ CÂU HỎI CỦA " + datacontext.Chuongs.SingleOrDefault(x => x.idChuong == idChuong).tenChuong;
            int tongSoBangGhi = datacontext.CauHois.Where(x => x.Chuong.idChuong == idChuong).Count();
            PhanTrang PT = new PhanTrang();
            PT.trangHienTai = 1;
            PT.tongSoTrang = tongSoBangGhi / PT.soBangGhi + (tongSoBangGhi % PT.soBangGhi > 0 ? 1 : 0);
            ViewBag.PhanTrang = PT;
            List<CauHoi> CH = datacontext.CauHois
                .Where(x => x.Chuong.idChuong == idChuong)
                .OrderByDescending(y => y.idCauHoi)
                .Skip((PT.trangHienTai - 1) * PT.soBangGhi)
                .Take(PT.soBangGhi).ToList();
            return View("CauHoiTrongChuong", CH);
        }
        public ActionResult ReLoadCauHoiCuaChuong(int trang, string idChuong, string tim)
        {
            ViewBag.idChuong = idChuong;
            ViewBag.TieuDe = "TẤT CẢ CÂU HỎI CỦA " + datacontext.Chuongs.SingleOrDefault(x => x.idChuong == idChuong).tenChuong;
            int tongSoBangGhi = datacontext.CauHois.Where(x => x.Chuong.idChuong == idChuong && x.noiDung.Contains(tim)).Count();
            PhanTrang PT = new PhanTrang();
            PT.trangHienTai = trang;
            PT.tongSoTrang = tongSoBangGhi / PT.soBangGhi + (tongSoBangGhi % PT.soBangGhi > 0 ? 1 : 0);
            ViewBag.PhanTrang = PT;
            List<CauHoi> CH = datacontext.CauHois
                .Where(x => x.Chuong.idChuong == idChuong && x.noiDung.Contains(tim))
                .OrderByDescending(y => y.idCauHoi)
                .Skip((PT.trangHienTai - 1) * PT.soBangGhi)
                .Take(PT.soBangGhi).ToList();
            return View("_XemCauHoi", CH);
        }
        public ActionResult CauHoiCuaDinh(string idDinhKiemTHuc)
        {
            int idDinh = Convert.ToInt32(idDinhKiemTHuc);
            ViewBag.idDinhKiemTHuc = idDinh;
            ViewBag.TieuDe = "TẤT CẢ CÂU HỎI CỦA " + datacontext.DinhKienThucs.SingleOrDefault(x => x.idDinhKienThuc == idDinh).tenDinhKienThuc;
            List<CauHoi> CH = datacontext.CauHois.Where(x => (datacontext.CauHoiCuaDinhs.Where(y => y.idDinhKienThuc == idDinh).Select(z => z.idCauHoi)).Contains(x.idCauHoi)).ToList();
            return View("NoiDungDeThi", CH);
        }
        public ActionResult TatCaCauHoi(int idDinhKienThuc)
        {
            DinhKienThuc DT = datacontext.DinhKienThucs.Single(x => x.idDinhKienThuc == idDinhKienThuc);
            ViewBag.idMonHoc = DT.idMonHoc;
            int tongSoBangGhi = datacontext.CauHois.Where(x => x.Chuong.idMonHoc == DT.idMonHoc).Count();
            PhanTrang PT = new PhanTrang();
            PT.trangHienTai = 1;
            PT.tongSoTrang = tongSoBangGhi / PT.soBangGhi + (tongSoBangGhi % PT.soBangGhi > 0 ? 1 : 0);
            ViewBag.PhanTrang = PT;
            List<CauHoi> CH = datacontext.CauHois
                .Where(x => x.Chuong.idMonHoc == DT.idMonHoc)
                .OrderByDescending(y => y.idCauHoi)
                .Skip((PT.trangHienTai - 1) * PT.soBangGhi)
                .Take(PT.soBangGhi).ToList();
            return View("_TatCaCauHoi",CH);
        }
        public ActionResult ReLoadTatCaCauHoi(int trang, string tim, string idMonHoc)
        {
            ViewBag.idMonHoc = idMonHoc;
            int tongSoBangGhi = datacontext.CauHois.Where(x => x.Chuong.idMonHoc == idMonHoc && x.noiDung.Contains(tim)).Count();
            PhanTrang PT = new PhanTrang();
            PT.trangHienTai = trang;
            PT.tongSoTrang = tongSoBangGhi / PT.soBangGhi + (tongSoBangGhi % PT.soBangGhi > 0 ? 1 : 0);
            ViewBag.PhanTrang = PT;
            List<CauHoi> CH = datacontext.CauHois
                .Where(x => x.Chuong.idMonHoc == idMonHoc && x.noiDung.Contains(tim))
                .OrderByDescending(y => y.idCauHoi)
                .Skip((PT.trangHienTai - 1) * PT.soBangGhi)
                .Take(PT.soBangGhi).ToList();
            return View("_CauHoiSuaDe", CH);
        }
        public ActionResult LuuDinhKienThuc(FormCollection form)
        {
            int idDinh = Convert.ToInt32(form["idDeThi"]);
            CauHoiCuaDinh ND = new CauHoiCuaDinh();
            ND.XoaCauHoi(idDinh);
            ND.ThemCauHoi(idDinh, form["CauHoi"].Split(','));
            return CauHoiCuaDinh(idDinh + "");
        }
       
        public ActionResult QuanLyDeMuc()
        {
            List<MonHoc> MH = datacontext.MonHocs.ToList();            
            if (MH.Count > 0)
            {
                ViewBag.MonHoc = MH;
                string idMH = MH[0].idMonHoc;
                List<Chuong> C = datacontext.Chuongs.Where(x => x.idMonHoc == idMH).ToList();                
                if (C.Count > 0)
                {
                    ViewBag.Chuong = C;
                    string idC = C[0].idChuong;
                    List<DeThi> DT = datacontext.DeThis.Where(x => x.idChuong == idC).ToList();
                    if (DT.Count > 0)
                    {
                        ViewBag.DeThi = DT;
                    }
                }
            }
            return View();
        }
        public ActionResult SuaMonHoc(string idMonHoc, string tenMonHoc)
        {
            new MonHoc().SuaMonHoc(idMonHoc,tenMonHoc);
            List<MonHoc> MH = datacontext.MonHocs.ToList();
            if (MH.Count > 0)
            {
                ViewBag.MonHoc = MH;
            }
            return View("_MonHoc");
        }
        public ActionResult XoaMonHoc(string idMonHoc)
        {
            new MonHoc().XoaMonHoc(idMonHoc);
            List<MonHoc> MH = datacontext.MonHocs.ToList();
            if (MH.Count > 0)
            {
                ViewBag.MonHoc = MH;
            }
            return View("_MonHoc");
        }
        public ActionResult XemChuong(string idMonHoc)
        {
            List<DinhKienThuc> C = datacontext.DinhKienThucs.Where(x => x.idMonHoc == idMonHoc).ToList();
            if (C.Count > 0)
            {
                ViewBag.DinhKienThuc = C;
            }
            return View("_ChuongCuaMonHoc");
        }
        public ActionResult SuaChuong(int idChuong, string tenChuong)
        {
            DinhKienThuc dinh = datacontext.DinhKienThucs.FirstOrDefault(x => x.idDinhKienThuc == idChuong);
            if (dinh != null)
            {
                dinh.tenDinhKienThuc = tenChuong;
                datacontext.SaveChanges();
            }
            string idMH = dinh.idMonHoc;
            List<DinhKienThuc> C = datacontext.DinhKienThucs.Where(x => x.idMonHoc == idMH).ToList();
            if (C.Count > 0)
            {
                ViewBag.DinhKienThuc = C;
            }
            return View("_ChuongCuaMonHoc");
        }
        public ActionResult XoaChuong(string idChuong)
        {
            string idMH = datacontext.Chuongs.SingleOrDefault(x => x.idChuong == idChuong).idMonHoc;
            new Chuong().XoaChuong(idChuong);
            List<Chuong> C = datacontext.Chuongs.Where(x => x.idMonHoc == idMH).ToList();
            if (C.Count > 0)
            {
                ViewBag.Chuong = C;
            }
            return View("_ChuongCuaMonHoc");
        }
        public ActionResult XemDeThi(string idChuong)
        {
            List<DeThi> DT = datacontext.DeThis.Where(x => x.idChuong == idChuong).ToList();
            if (DT.Count > 0)
            {
                ViewBag.DeThi = DT;
            }
            return View("_DeCuaChuong");
        }
        public ActionResult SuaTenDeThi(string idDeThi, string tenDeThi)
        {
            new DeThi().SuaTenDeThi(idDeThi, tenDeThi);
            string idC = datacontext.DeThis.SingleOrDefault(x => x.idDeThi == idDeThi).idChuong;
            List<DeThi> DT = datacontext.DeThis.Where(x => x.idChuong == idC).ToList();
            if (DT.Count > 0)
            {
                ViewBag.DeThi = DT;
            }
            return View("_DeCuaChuong");
        }
    }
}
