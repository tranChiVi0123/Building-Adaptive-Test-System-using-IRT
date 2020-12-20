using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace ThiTracNghiem.Models
{
    [Table("tblCHITIETLICHSU")]
    public class ChiTietLichSu
    {
        [Key]
        public int idChiTiet { set; get; }
        public string idLichSuLamBai { set; get; }
        public string idCauHoi { set; get; }
        public string idDapAn { set; get; }
        [ForeignKey("idCauHoi")]
        public virtual CauHoi CauHoi { set; get; }
        [ForeignKey("idDapAn")]
        public virtual DapAn DapAn { set; get; }
        [ForeignKey("idLichSuLamBai")]
        public virtual LichSuLamBai LicSuLamBai { set; get; }
        public void ThemChiTiet(string idLS, string idcauhoi, string iddapan)
        {
            DataContext datacontext = new DataContext();
            ChiTietLichSu CT = new ChiTietLichSu();
            CT.idLichSuLamBai = idLS;
            CT.idCauHoi = idcauhoi;
            CT.idDapAn = iddapan;
            datacontext.ChiTietLichSus.Add(CT);
            try
            {
                datacontext.SaveChanges();
            }
            catch { }
        }
    }
}