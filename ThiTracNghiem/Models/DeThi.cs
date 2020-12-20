using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace ThiTracNghiem.Models
{
    [Table("tblDETHI")]
    public class DeThi
    {
        [Key]
        public string idDeThi { set; get; }
        public string idChuong { set; get; }
        public string tenDeThi { set; get; }
        public int thoiGianLamBai { set; get; }
        [ForeignKey("idChuong")]
        public virtual Chuong Chuong { set; get; }
        public virtual ICollection<NoiDungDeThi> CacNoiDungDeThi { set; get; }
        public string XoaDeThi(string idDe)
        {
            string str="";
            DataContext datacontext = new DataContext();
            DeThi DT = datacontext.DeThis.SingleOrDefault(x => x.idDeThi == idDe);
            if (DT != null)
            {
                str = DT.idChuong;
                datacontext.DeThis.Remove(DT);
            }
            datacontext.SaveChanges();
            return str;
        }
        public string ThemDe(string idChuong, string tenDe, int thoiGian)
        {
            DataContext datacontext = new DataContext();
            string IDDT = "DT00000";
            if (datacontext.DeThis.ToList().Count > 0)
            {
                IDDT = datacontext.DeThis.OrderByDescending(x => x.idDeThi).ToList()[0].idDeThi;
            }
            IDDT = "DT" + String.Format("{0:00000}", (Convert.ToInt32(IDDT.Substring(2, IDDT.Length - 2)) + 1));
            DeThi DT = new DeThi();
            DT.idDeThi = IDDT;
            DT.idChuong = idChuong;
            DT.tenDeThi = tenDe;
            DT.thoiGianLamBai = thoiGian;
            datacontext.DeThis.Add(DT);
            datacontext.SaveChanges();
            return IDDT;
        }
        public void SuaTenDeThi(string idDeThi, string tenDeThi)
        {
            DataContext datacontext = new DataContext();
            DeThi DT = datacontext.DeThis.SingleOrDefault(x => x.idDeThi == idDeThi);
            if (DT != null)
            {
                DT.tenDeThi = tenDeThi;
                datacontext.SaveChanges();
            }
        }
    }
}