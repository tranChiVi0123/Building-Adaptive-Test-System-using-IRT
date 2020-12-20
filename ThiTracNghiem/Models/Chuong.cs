using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace ThiTracNghiem.Models
{
    [Table("tblCHUONG")]
    public class Chuong
    {
        [Key]
        public string idChuong { set; get; }
        public string idMonHoc { set; get; }
        public string tenChuong { set; get; }
        [ForeignKey("idMonHoc")]
        public virtual MonHoc MonHoc { set; get; }
        public virtual ICollection<DeThi> CacDeThi { set; get; }
        public virtual ICollection<CauHoi> CacCauHoi { set; get; }
        public string ThemChuong(string idMonHoc, string tenchuong)
        {
            DataContext datacontext = new DataContext();
            string IDC = "C0000";
            if (datacontext.Chuongs.ToList().Count > 0)
            {
                IDC = datacontext.Chuongs.OrderByDescending(x => x.idChuong).ToList()[0].idChuong;
            }
            IDC = "C" + String.Format("{0:0000}", (Convert.ToInt32(IDC.Substring(1, IDC.Length - 1)) + 1));
            Chuong C = new Chuong();
            C.idChuong = IDC;
            C.idMonHoc = idMonHoc;
            C.tenChuong = tenchuong;
            datacontext.Chuongs.Add(C);
            datacontext.SaveChanges();
            return IDC;
        }
        public void XoaChuong(string idChuong)
        {
            DataContext datacontext = new DataContext();
            List<DeThi> DT = datacontext.DeThis.Where(x => x.idChuong == idChuong).ToList();
            for (int i = 0; i < DT.Count; i++)
            {
                new NoiDungDeThi().XoaDeThi(DT[i].idDeThi);
                new DeThi().XoaDeThi(DT[i].idDeThi);
            }
            Chuong C = datacontext.Chuongs.SingleOrDefault(x => x.idChuong == idChuong);
            if (C != null)
            {
                datacontext.Chuongs.Remove(C);
                datacontext.SaveChanges();
            }
        }
        public void SuaChuong(string idChuong, string tenchuong)
        {
            DataContext datacontext = new DataContext();
            Chuong C = datacontext.Chuongs.SingleOrDefault(x => x.idChuong == idChuong);
            if (C != null)
            {
                C.tenChuong = tenchuong;
                datacontext.SaveChanges();
            }
        }
    }
}