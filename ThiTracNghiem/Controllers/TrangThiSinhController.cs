using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ThiTracNghiem.Models;

namespace ThiTracNghiem.Controllers
{
    public class TrangThiSinhController : Controller
    {
        //
        // GET: /TrangThiSinh/
        DataContext datacontext = new DataContext();
        public ActionResult TrangChu()
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
                }
            }
            return View();
        }
        public JsonResult getChuong(string idMonHoc)
        {
            return Json((from C in datacontext.Chuongs
                         where C.idMonHoc == idMonHoc
                         select new { C.idChuong, C.tenChuong }).ToList(), JsonRequestBehavior.AllowGet);
        }
        public JsonResult getCauHoiToiDa(string idMonHoc, string idChuong)
        {
            int soCau = 0;
            if (idChuong == "0")
            {
                if (idMonHoc == "0")
                    soCau = datacontext.CauHois.Count();
                else
                    soCau = datacontext.CauHois.Where(x => x.Chuong.idMonHoc == idMonHoc).Count();
            }
            else
                soCau = datacontext.CauHois.Where(x => x.idChuong == idChuong).Count();
            return Json(soCau+"", JsonRequestBehavior.AllowGet);
        }
        public ActionResult ThiDeNgauNhien(FormCollection form)
        {
            if (Session["idDangNhap"] == null)
                return RedirectToAction("UserDangNhap", "TaiKhoan");
            string idMonHoc = form["MonHoc"];
            string idChuong = form["Chuong"];
            int soCauHoi = Convert.ToInt32(form["SoCauHoi"]);
            int cachLam = Convert.ToInt32(form["cachLam"]);
            List<CauHoi> CH = new List<CauHoi>();
            if (idChuong == "0" || idChuong == null)
            {
                if (idMonHoc == "0" || idMonHoc == null)
                    CH = datacontext.CauHois.ToList();
                else
                    CH = datacontext.CauHois.Where(x => x.Chuong.idMonHoc == idMonHoc).ToList();
            }
            else
            {
                CH = datacontext.CauHois.Where(x => x.idChuong == idChuong).ToList();
            }
            if (cachLam == 1)//IRT
                return ThiTheoTrinhDoTS(CH, 1, idMonHoc);
            if (cachLam == 2)//IRT3
                return ThiTheoTrinhDoTS(CH, 2, idMonHoc);
            if (cachLam == 3)//IRT 1.7
                return ThiTheoTrinhDoTS(CH, 3, idMonHoc);

            Random ran = new Random();
            List<CauHoi> CauHoiChoDe = new List<CauHoi>();
            string[] cauHoi = new string[soCauHoi];
            int i = 0;
            while (i < soCauHoi)
            {
                int id = ran.Next(CH.Count);
                if (!cauHoi.Contains(CH[id].idCauHoi))
                {
                    cauHoi[i] = CH[id].idCauHoi;
                    CauHoiChoDe.Add(CH[i++]);
                }
            }
            ViewBag.CauHoi = CauHoiChoDe;
            ViewBag.thoiGian = soCauHoi;
            ViewBag.idDeThi = "0";
            return View("TrangLamBai");
        }
        public ActionResult ThiTheoTrinhDoTS(List<CauHoi> CH, int phuongPhapThi, string idMonHoc)
        {
            string idTS = Session["idDangNhap"].ToString();
            //Gán các trạng thái ban đầu để thi trắc nghiệm thích ứng
            //-----------------------------------------------------
            ThiTheoTrinhDo TTTD = new ThiTheoTrinhDo();
            TTTD.SoCauHoiCan = CH.Count;
            TTTD.TapCauHoi = CH;
            TTTD.TrinhDoTS = datacontext.ThiSinhs.SingleOrDefault(x => x.idThiSinh == idTS).nangLuc;
            TTTD.PhuongPhapThi = phuongPhapThi;
            TTTD.ListTrinhDo.Add(TTTD.TrinhDoTS);
            //--------------------------------------------------------
            if (phuongPhapThi == 1)
                TTTD.timCauHoi_IRT();
            else if (phuongPhapThi == 2)
                //TTTD.timCauHoi_IRT3();
                TTTD.timCauHoi_IRT3();
            else
                TTTD.timCauHoi(true);

            TTTD.IDLSLB = new LichSuLamBai().ThemLichSuLamBai("0", Session["idDangNhap"].ToString(), "Đề thi với câu hỏi được chọn theo trình độ");
            //Lưu trạng thái vào session để lưu quá trình thi và đưa đến trang làm bài
            Session["ThiTheoTrinhDo"] = TTTD;
            return View("ThiTheoTrinhDo");
        }
        public ActionResult KiemTraTraLoiCauHoi(string idCauHoi, string dapAnDaChon)
        {
            //Lấy lại trạng thái trước khi trả lời
            ThiTheoTrinhDo thiTheoTD = (ThiTheoTrinhDo)Session["ThiTheoTrinhDo"];            
            float TrinhDoCu = thiTheoTD.TrinhDoTS;
            thiTheoTD.SoCauDaTraLoi += 1;
            bool kiemTra = false;
            if (dapAnDaChon != null)
                //Kiểm tra câu trả lời là đúng hay sai
                kiemTra = KiemTraCauTraLoi(idCauHoi, dapAnDaChon.Split(','), thiTheoTD.IDLSLB);
            if (kiemTra)
                thiTheoTD.SoCauDung += 1;
            //----------------------------------------------
            if (thiTheoTD.PhuongPhapThi == 1)
                thiTheoTD.capNhatNangLuc_IRT(kiemTra);
            else if (thiTheoTD.PhuongPhapThi == 2)
                //Cập nhật năng lực
                thiTheoTD.capNhatNangLuc_IRT3(kiemTra);
            else
                thiTheoTD.capNhatNangLuc(kiemTra);
            //---------------------------------------
            var delta = Math.Abs(TrinhDoCu - thiTheoTD.TrinhDoTS);
            bool sigmal = false;
            if(thiTheoTD.ListTrinhDo.Count > 10)
            {
                int count = thiTheoTD.ListTrinhDo.Count - 1;
                if(Math.Abs(thiTheoTD.ListTrinhDo[count - 5] - thiTheoTD.TrinhDoTS) < 0.05)
                {
                    sigmal = true;
                }
            }
            //Kiểm tra điều kiện dừng
            if (delta <= 0.01 || delta > 100 ||
                thiTheoTD.SoCauDaTraLoi == thiTheoTD.SoCauHoiCan ||
                thiTheoTD.TrinhDoTS > 15 ||
                thiTheoTD.TrinhDoTS < -10 ||
                sigmal)
            {
                if (delta > 10 || thiTheoTD.TrinhDoTS > 15 || thiTheoTD.TrinhDoTS < -10)
                {
                    thiTheoTD.TrinhDoTS = TrinhDoCu;
                }
                thiTheoTD.SoCauHoiCan = thiTheoTD.soCauDaLam;
                return View("_NopBai");               
            }
            //-----------------------------------------
            //Tìm câu hỏi tiếp theo nếu chưa xác định dc trình độ
            if (thiTheoTD.PhuongPhapThi == 1)
            {
                thiTheoTD.timCauHoi_IRT();
            }
            else if (thiTheoTD.PhuongPhapThi == 2)
            {
                thiTheoTD.timCauHoi_IRT3();
            }
            else
            {
                thiTheoTD.timCauHoi(true);
            }            
            return View("_CauHoiThi");
        }
        public ActionResult NopBaiThiTheoTD()
        {
            ThiTheoTrinhDo thiTheoTD = (ThiTheoTrinhDo)Session["ThiTheoTrinhDo"];
            float Diem = (float)((float)thiTheoTD.SoCauDung * (float)(10.0 / thiTheoTD.SoCauHoiCan));
            ViewBag.Diem = Diem;
            LichSuLamBai LS = datacontext.LichSuLamBais.SingleOrDefault(x => x.idLichSuLamBai == thiTheoTD.IDLSLB);
            LS.noiDung += " <b>(Làm được " + thiTheoTD.SoCauDung + "/" + thiTheoTD.SoCauHoiCan + " câu, được " + String.Format("{0:#.00}", Diem) + " điểm)</b>";
            CapNhatDiemThi(Diem, thiTheoTD.TrinhDoTS + "");
            ViewBag.tongSoCauHoi = thiTheoTD.TraLoi.Count;
            ViewBag.chonDung = thiTheoTD.SoCauDung;
            ViewBag.trinhDo = thiTheoTD.TrinhDoTS;
            ViewBag.traLoi = thiTheoTD.TraLoi;
            ViewBag.listTrinhDo = thiTheoTD.ListTrinhDo;
            Session["ThiTheoTrinhDo"] = null;
            return View("KetQuaThi");
        }
        public ActionResult ChamDiem(FormCollection form)
        {
            string idDN = "";
            if (Session["idDangNhap"] == null)
                return RedirectToAction("UserDangNhap", "TaiKhoan");
            else
                idDN = (string)Session["idDangNhap"];
            string[] CauHoi = form["CauHoiDaLam"].Split(',');
            int soCauDung = 0;
            string idDeThi = form["idDeThi"];
            string idLSLB = "";
            if (idDeThi != "0")
            {
                DeThi DT = datacontext.DeThis.SingleOrDefault(x => x.idDeThi == idDeThi);
                idLSLB = new LichSuLamBai().ThemLichSuLamBai(form["idDeThi"], Session["idDangNhap"].ToString(), DT.tenDeThi + " " + DT.Chuong.tenChuong + " môn " + DT.Chuong.MonHoc.tenMonHoc);
            }
            else
            {
                idLSLB = new LichSuLamBai().ThemLichSuLamBai(form["idDeThi"], Session["idDangNhap"].ToString(), "Đề thi với câu hỏi được chọn ngẫu nhiên");
            }
            for (int i = 0; i < CauHoi.Length; i++)
            {
                try
                {
                    if (KiemTraCauTraLoi(CauHoi[i], form["DapAnCuaCauHoi_" + CauHoi[i]].Split(','), idLSLB))
                        soCauDung += 1;
                }
                catch { }
            }
            float Diem = (float)((float)soCauDung * (float)(10.0 / CauHoi.Length));
            ViewBag.Diem = Diem;
            LichSuLamBai LS = datacontext.LichSuLamBais.SingleOrDefault(x => x.idLichSuLamBai == idLSLB);
            LS.noiDung += " <b>(Làm được " + soCauDung + "/" + CauHoi.Length + " câu, được " + String.Format("{0:#.00}", Diem) + " điểm)</b>";
            CapNhatDiemThi(Diem, null);
            ViewBag.tongSoCauHoi = CauHoi.Length;
            ViewBag.chonDung = soCauDung;
            ViewBag.trinhDo = datacontext.ThiSinhs.SingleOrDefault(x => x.idThiSinh == idDN).nangLuc;
            return View("KetQuaThi");
        }
        private bool KiemTraCauTraLoi(string idCauHoi, string[] DapAnDaChon, string idLSLB)
        {
            List<DapAn> DapAnDung = datacontext.DapAns.Where(x => x.CauHoi.idCauHoi == idCauHoi && x.isDapAnDung == true).ToList();
            bool Dung = true;
            if (DapAnDaChon.Length != DapAnDung.Count)
            {
                Dung = false;
                for (int j = 0; j < DapAnDaChon.Length; j++)
                {
                    new ChiTietLichSu().ThemChiTiet(idLSLB, idCauHoi, DapAnDaChon[j]);
                }
            }
            else
            {
                int chonDung = 0;
                for (int j = 0; j < DapAnDaChon.Length; j++)
                {
                    new ChiTietLichSu().ThemChiTiet(idLSLB, idCauHoi, DapAnDaChon[j]);
                    for (int k = 0; k < DapAnDung.Count; k++)
                    {
                        if (DapAnDaChon[j] == DapAnDung[k].idDapAn)
                        {
                            chonDung += 1;
                            break;
                        }
                    }
                }
                if (chonDung != DapAnDung.Count)
                {
                    Dung = false;
                }
            }
            return Dung;
        }
        private void CapNhatDiemThi(float Diem, string nangLuc)
        {
            string idTS = Session["idDangNhap"].ToString();
            ThiSinh TS = datacontext.ThiSinhs.SingleOrDefault(x => x.idThiSinh == idTS);
            TS.soBaiLam += 1;
            TS.tongSoDiem += Diem;
            TS.DTB = TS.tongSoDiem / TS.soBaiLam;
            if (TS.DTB >= 9.0f) TS.xepLoai = "Xuất sắc";
            if (TS.DTB < 9.0f && TS.DTB >= 8.0f) TS.xepLoai = "Giỏi";
            if (TS.DTB < 8.0f && TS.DTB >= 6.5f) TS.xepLoai = "Khá";
            if (TS.DTB < 6.5f && TS.DTB >= 5.0f) TS.xepLoai = "Trung Bình";
            if (TS.DTB < 5.0f) TS.xepLoai = "Yếu";
            if (nangLuc != null) TS.nangLuc = (float)Convert.ToDouble(nangLuc);
            datacontext.SaveChanges();  // Còn lỗi theta = NaN   
        }
        public ActionResult LichSuLamBai()
        {
            if (Session["idDangNhap"] == null)
            {
                return RedirectToAction("UserDangNhap", "TaiKhoan");
            }
            string idTS = Session["idDangNhap"].ToString();
            int tongSoBangGhi = datacontext.LichSuLamBais.Where(x => x.maThiSinh == idTS).Count();
            PhanTrang PT = new PhanTrang();
            PT.trangHienTai = 1;
            PT.tongSoTrang = tongSoBangGhi / PT.soBangGhi + (tongSoBangGhi % PT.soBangGhi > 0 ? 1 : 0);
            ViewBag.PhanTrang = PT;
            return View(datacontext.LichSuLamBais.Where(x => x.maThiSinh == idTS).OrderByDescending(x=>x.thoiGian).Skip((PT.trangHienTai - 1) * PT.soBangGhi).Take(PT.soBangGhi).ToList());
        }
        public ActionResult ReLoadLS(string xoaLS, int trang)
        {
            string[] idLSs;
            if (!xoaLS.Equals(""))
            {
                idLSs = xoaLS.Split(',');
                for (int i = 0; i < idLSs.Length; i++)
                {
                    if (!idLSs[i].Equals(""))
                    {
                        new LichSuLamBai().XoaLichSu(idLSs[i]);
                    }
                }
            }
            string idTS = Session["idDangNhap"].ToString();
            int tongSoBangGhi = datacontext.LichSuLamBais.Where(x => x.maThiSinh == idTS).Count();
            PhanTrang PT = new PhanTrang();
            PT.trangHienTai = trang;
            PT.tongSoTrang = tongSoBangGhi / PT.soBangGhi + (tongSoBangGhi % PT.soBangGhi > 0 ? 1 : 0);
            ViewBag.PhanTrang = PT;
            List<LichSuLamBai> LS = datacontext.LichSuLamBais.Where(x => x.maThiSinh == idTS).OrderByDescending(x=>x.thoiGian).Skip((PT.trangHienTai - 1) * PT.soBangGhi).Take(PT.soBangGhi).ToList();
            if (LS.Count == 0)
            {
                if (PT.trangHienTai > 1)
                {
                    PT.trangHienTai -= 1;
                    LS = datacontext.LichSuLamBais.Where(x => x.maThiSinh == idTS).OrderByDescending(x => x.thoiGian).Skip((PT.trangHienTai - 1) * PT.soBangGhi).Take(PT.soBangGhi).ToList();
                }
            }
            return View("_BangLichSu",LS);
        }
        public ActionResult ChiTietLichSu(string idLichSu)
        {
            if (Session["idDangNhap"] == null)
            {
                return RedirectToAction("UserDangNhap", "TaiKhoan");
            }
            ViewBag.ChiTietLichSu = datacontext.ChiTietLichSus.Where(x => x.idLichSuLamBai == idLichSu).ToList();
            LichSuLamBai LS = datacontext.LichSuLamBais.SingleOrDefault(x => x.idLichSuLamBai == idLichSu);
            ViewBag.CauHoi = datacontext.CauHois.Where(x => (datacontext.ChiTietLichSus.Where(y => y.idLichSuLamBai == idLichSu).Select(z => z.idCauHoi)).Contains(x.idCauHoi)).ToList();
            ViewBag.tieuDe = LS.noiDung;
            return View();
        }
        public ActionResult BangXepHang()
        {
            ViewBag.TaiKhoan = datacontext.ThiSinhs.OrderByDescending(x => x.DTB).Take(30);
            return View();
        }
    }
}
