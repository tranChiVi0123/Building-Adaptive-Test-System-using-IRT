using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace ThiTracNghiem.Models
{
    [Table("tblCAUHOI")]
    public class CauHoi
    {
        [Key]
        public string idCauHoi { set; get; }
        public string idChuong { set; get; }
        public string noiDung { set; get; }
        public int soDapAn { set; get; }
        public int SoCauDung { set; get; }
        public float doPhanBiet { set; get; }
        public float doKho { set; get; }
        public float c { set; get; }
        public float a2 { set; get; }
        public float b2 { set; get; }
        public int tgTraLoi { set; get; }
        [ForeignKey("idChuong")]
        public virtual Chuong Chuong { set; get; }
        public virtual ICollection<NoiDungDeThi> CacNoiDungDeThi { set; get; }
        public virtual ICollection<ChiTietLichSu> CacChiTietLichSu { set; get; }
        public virtual ICollection<DapAn> CacDapAn { set; get; }
        public virtual ICollection<CauHoiCuaDinh> CacCauHoiCuaDinh { set; get; }
        public void ThemCauHoi(string idchuong, string noidung, string[] dapan, string[] caudung,
            float dophanbiet, float dokho, int _tgTraLoi)
        {
            DataContext datacontext = new DataContext();
            string IDCH = "CH000000";
            if (datacontext.CauHois.ToList().Count > 0)
            {
                IDCH = datacontext.CauHois.OrderByDescending(x => x.idCauHoi).ToList()[0].idCauHoi;
            }
            IDCH = "CH" + String.Format("{0:000000}", (Convert.ToInt32(IDCH.Substring(2, IDCH.Length - 2)) + 1));
            CauHoi CH = new CauHoi();
            CH.idCauHoi = IDCH;
            CH.idChuong = idchuong;
            CH.noiDung = noidung;
            CH.SoCauDung = 0;
            for (int i = 0; i < caudung.Length; i++)
            {
                if (caudung[i].Equals("1"))
                {
                    CH.SoCauDung += 1;
                }
            }
            CH.soDapAn = dapan.Length;
            CH.doKho = dokho;
            CH.doPhanBiet = dophanbiet;
            CH.c = (float)CH.SoCauDung / (float)dapan.Length;
            CH.a2 = 0;
            CH.b2 = 0;
            CH.tgTraLoi = _tgTraLoi;
            datacontext.CauHois.Add(CH);
            datacontext.SaveChanges();
            for (int i = 0; i < dapan.Length; i++)
            {
                new DapAn().ThemDapAn(IDCH, dapan[i], caudung[i]);
            }
        }
        public bool XoaCauHoi(string idCauHoi)
        {
            DataContext datacontext = new DataContext();
            datacontext.ChiTietLichSus.RemoveRange(datacontext.ChiTietLichSus.Where(x => x.idCauHoi == idCauHoi));
            List<DapAn> DA = datacontext.DapAns.Where(x => x.idCauHoi == idCauHoi).ToList();
            for (int i = 0; i < DA.Count; i++)
            {
                datacontext.DapAns.Remove(DA[i]);
            }
            CauHoi CH = datacontext.CauHois.SingleOrDefault(x => x.idCauHoi == idCauHoi);
            if (CH != null)
            {
                try
                {
                    datacontext.CauHois.Remove(CH);
                    datacontext.SaveChanges();
                    return true;
                }
                catch { return false; }
            }
            else
            {
                return false;
            }
        }
        public void LuuSuaDoiCauHoi(string idCauHoi, string idchuong, string noidung, string[] dapan, string[] caudung,
            float dophanbiet, float dokho, int _tgTraLoi)
        {
            DataContext datacontext = new DataContext();
            datacontext.ChiTietLichSus.RemoveRange(datacontext.ChiTietLichSus.Where(x => x.idCauHoi == idCauHoi));
            List<DapAn> DA = datacontext.DapAns.Where(x => x.idCauHoi == idCauHoi).ToList();
            for (int i = 0; i < DA.Count; i++)
            {
                datacontext.DapAns.Remove(DA[i]);
            }
            CauHoi CH = datacontext.CauHois.SingleOrDefault(x => x.idCauHoi == idCauHoi);
            CH.idChuong = idchuong;
            CH.noiDung = noidung;
            CH.SoCauDung = 0;
            for (int i = 0; i < caudung.Length; i++)
            {
                if (caudung[i].Equals("1"))
                {
                    CH.SoCauDung += 1;
                }
            }
            CH.soDapAn = dapan.Length;
            CH.doKho = dokho;
            CH.doPhanBiet = dophanbiet;
            CH.c = (float)CH.SoCauDung / (float)dapan.Length;
            CH.a2 = 0;
            CH.b2 = 0;
            CH.tgTraLoi = _tgTraLoi;
            datacontext.SaveChanges();
            for (int i = 0; i < dapan.Length; i++)
            {
                new DapAn().ThemDapAn(idCauHoi, dapan[i], caudung[i]);
            }
        }
    }
}