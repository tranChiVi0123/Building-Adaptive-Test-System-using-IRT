using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace ThiTracNghiem.Models
{
    [Table("tblMONHOC")]
    public class MonHoc
    {
        [Key]
        public string idMonHoc { set; get; }
        public string tenMonHoc { set; get; }
        public virtual ICollection<Chuong> CacChuong { set; get; }
        public virtual ICollection<DinhKienThuc> CacDinhKienThuc { set; get; }
        public string ThemMonHoc(string tenMonHoc)
        {
            DataContext datacontext = new DataContext();
            string IDMH = "MH00";
            if (datacontext.MonHocs.ToList().Count > 0)
            {
                IDMH = datacontext.MonHocs.OrderByDescending(x => x.idMonHoc).ToList()[0].idMonHoc;
            }
            IDMH = "MH" + String.Format("{0:00}", (Convert.ToInt32(IDMH.Substring(2, IDMH.Length - 2)) + 1));
            MonHoc MH = new MonHoc();
            MH.idMonHoc = IDMH;
            MH.tenMonHoc = tenMonHoc;
            datacontext.MonHocs.Add(MH);
            datacontext.SaveChanges();
            Chuong C = new Chuong();
            C.idChuong = IDMH;
            C.idMonHoc = IDMH;
            C.tenChuong = IDMH;
            datacontext.Chuongs.Add(C);
            datacontext.SaveChanges();
            return IDMH;
        }
        public void SuaMonHoc(string idMonHoc, string tenMonHoc)
        {
            DataContext datacontext = new DataContext();
            MonHoc MH = datacontext.MonHocs.SingleOrDefault(x => x.idMonHoc == idMonHoc);
            if (MH != null)
            {
                MH.tenMonHoc = tenMonHoc;
                datacontext.SaveChanges();
            }
        }
        public void XoaMonHoc(string idMonHoc)
        {
            DataContext datacontext = new DataContext();
            List<DinhKienThuc> dinhKienThuc = datacontext.DinhKienThucs.Where(x => x.idMonHoc == idMonHoc).ToList();
            for (int i = 0; i < dinhKienThuc.Count; i++)
            {
                int idD = dinhKienThuc[i].idDinhKienThuc;
                datacontext.CauHoiCuaDinhs.RemoveRange(datacontext.CauHoiCuaDinhs.Where(x => x.idDinhKienThuc == idD));
                datacontext.SaveChanges();
                dinhKienThuc[i].CacCauHoiCuaDinh = null;
                datacontext.DinhKienThucs.Remove(dinhKienThuc[i]);
            }
            List<Chuong> C = datacontext.Chuongs.Where(x => x.idMonHoc == idMonHoc).ToList();
            for (int i = 0; i < C.Count; i++)
            {
                string idC = C[i].idChuong;
                List<DeThi> DT = datacontext.DeThis.Where(x => x.idChuong == idC).ToList();
                for (int j = 0; j < DT.Count; j++)
                {
                    new NoiDungDeThi().XoaDeThi(DT[j].idDeThi);
                    new DeThi().XoaDeThi(DT[j].idDeThi);
                }
                List<CauHoi> CH = datacontext.CauHois.Where(x => x.idChuong == idC).ToList();
                for (int j = 0; j < CH.Count; j++)
                {
                    new CauHoi().XoaCauHoi(CH[j].idCauHoi);
                }
                datacontext.Chuongs.Remove(C[i]);
            }
            MonHoc MH = datacontext.MonHocs.SingleOrDefault(x => x.idMonHoc == idMonHoc);
            if (MH != null)
            {
                datacontext.MonHocs.Remove(MH);                
            }
            datacontext.SaveChanges();
        }
    }
}