using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace ThiTracNghiem.Models
{
    [Table("tblDAPAN")]
    public class DapAn
    {
        [Key]
        public string idDapAn { set; get; }
        public string idCauHoi { set; get; }
        public string noiDung { set; get; }
        public bool isDapAnDung { set; get; }
        [ForeignKey("idCauHoi")]
        public virtual CauHoi CauHoi { set; get; }
        public virtual ICollection<ChiTietLichSu> CacChiTietLichSu { set; get; }
        public void ThemDapAn(string idcauhoi, string noidung, string isdung)
        {
            DataContext datacontext = new DataContext();
            string IDDA = "DA0000000";
            if (datacontext.DapAns.ToList().Count > 0)
            {
                IDDA = datacontext.DapAns.OrderByDescending(x => x.idDapAn).ToList()[0].idDapAn;
            }
            IDDA = "DA" + String.Format("{0:0000000}", (Convert.ToInt32(IDDA.Substring(2, IDDA.Length - 2)) + 1));
            DapAn dapAn = new DapAn();
            dapAn.idDapAn = IDDA;
            dapAn.idCauHoi = idcauhoi;
            dapAn.noiDung = noidung;
            if (isdung.Equals("1"))
            {
                dapAn.isDapAnDung = true;
            }
            else
            {
                dapAn.isDapAnDung = false;
            }
            datacontext.DapAns.Add(dapAn);
            datacontext.SaveChanges();
        }
        public bool XoaDapAn(string idDapAn)
        {
            DataContext datacontext = new DataContext();
            DapAn DA = datacontext.DapAns.SingleOrDefault(x => x.idDapAn == idDapAn);
            if (DA != null)
            {
                try
                {
                    datacontext.DapAns.Remove(DA);
                    datacontext.SaveChanges();
                    return true;
                }
                catch
                {
                    return false;
                }
            }
            else
            {
                return false;
            }
        }
    }
}