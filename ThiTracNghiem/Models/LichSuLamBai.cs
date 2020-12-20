using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace ThiTracNghiem.Models
{
    [Table("tblLICHSULAMBAI")]
    public class LichSuLamBai
    {
        [Key]
        public string idLichSuLamBai { set; get; }
        public string maThiSinh { set; get; }
        public string maDeThi { set; get; }
        public DateTime thoiGian { set; get; }
        public string noiDung { set; get; }
        [ForeignKey("maThiSinh")]
        public virtual ThiSinh ThiSinh { set; get; }
        public virtual ICollection<ChiTietLichSu> CacChiTietLichSu { set; get; }
        public string ThemLichSuLamBai(string iddeThi, string idthisinh, string noidung)
        {
            DataContext datacontext = new DataContext();
            string IDLS = "LS0000000";
            if (datacontext.LichSuLamBais.ToList().Count > 0)
            {
                IDLS = datacontext.LichSuLamBais.OrderByDescending(x => x.idLichSuLamBai).ToList()[0].idLichSuLamBai;
            }
            IDLS = "LS" + String.Format("{0:0000000}", (Convert.ToInt32(IDLS.Substring(2, IDLS.Length - 2)) + 1));
            LichSuLamBai LSLB = new LichSuLamBai();
            LSLB.idLichSuLamBai = IDLS;
            LSLB.maDeThi = iddeThi;
            LSLB.maThiSinh = idthisinh;
            LSLB.thoiGian = DateTime.Now;
            LSLB.noiDung = noidung;
            datacontext.LichSuLamBais.Add(LSLB);
            datacontext.SaveChanges();
            return IDLS;
        }
        public void XoaLichSu(string idLS)
        {
            DataContext datacontext = new DataContext();
            List<ChiTietLichSu> CT = datacontext.ChiTietLichSus.Where(x => x.idLichSuLamBai == idLS).ToList();
            for (int i = 0; i < CT.Count; i++)
            {
                datacontext.ChiTietLichSus.Remove(CT[i]);
            }
            datacontext.SaveChanges();
            LichSuLamBai LS = datacontext.LichSuLamBais.SingleOrDefault(x => x.idLichSuLamBai == idLS);
            datacontext.LichSuLamBais.Remove(LS);
            datacontext.SaveChanges();
        }
    }
}