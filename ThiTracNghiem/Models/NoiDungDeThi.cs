using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace ThiTracNghiem.Models
{
    [Table("tblNOIDUNGDETHI")]
    public class NoiDungDeThi
    {
        [Key]
        public int idNoiDung { set; get; }
        public string idDeThi { set; get; }
        public string idCauHoi { set; get; }
        [ForeignKey("idDeThi")]
        public virtual DeThi DeThi { set; get; }
        [ForeignKey("idCauHoi")]
        public virtual CauHoi CauHoi { set; get; }
        public void XoaDeThi(string idDeThi){
            DataContext datacontext = new DataContext();
            List<NoiDungDeThi> ND = datacontext.NoiDungDeThis.Where(x => x.idDeThi == idDeThi).ToList();
            for (int i = 0; i < ND.Count; i++)
            {
                datacontext.NoiDungDeThis.Remove(ND[i]);
            }
            datacontext.SaveChanges();
        }
        public void ThemDeThi(string idDeThi, string[] cauHoi)
        {
            DataContext datacontext = new DataContext();
            for (int i = 0; i < cauHoi.Length; i++)
            {
                NoiDungDeThi ND = new NoiDungDeThi();
                ND.idDeThi = idDeThi;
                ND.idCauHoi = cauHoi[i];
                datacontext.NoiDungDeThis.Add(ND);
                datacontext.SaveChanges();
            }
        }
    }
}