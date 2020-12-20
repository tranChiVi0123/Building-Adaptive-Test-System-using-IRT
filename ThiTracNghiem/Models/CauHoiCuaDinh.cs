using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace ThiTracNghiem.Models
{
    [Table("tblCAUHOICUADINH")]
    public class CauHoiCuaDinh
    {
        [Key]
        public int idCauHoiCuaDinh { set; get; }
        public int idDinhKienThuc { set; get; }
        public string idCauHoi { set; get; }
        [ForeignKey("idCauHoi")]
        public virtual CauHoi CauHoi { set; get; }
        public virtual DinhKienThuc DinhKienThuc { set; get; }
        public void XoaCauHoi(int idDinh)
        {
            DataContext datacontext = new DataContext();
            List<CauHoiCuaDinh> ND = datacontext.CauHoiCuaDinhs.Where(x => x.idDinhKienThuc == idDinh).ToList();
            for (int i = 0; i < ND.Count; i++)
            {
                datacontext.CauHoiCuaDinhs.Remove(ND[i]);
            }
            datacontext.SaveChanges();
        }
        public void ThemCauHoi(int idDinh, string[] cauHoi)
        {
            DataContext datacontext = new DataContext();
            for (int i = 0; i < cauHoi.Length; i++)
            {
                CauHoiCuaDinh ND = new CauHoiCuaDinh();
                ND.idDinhKienThuc = idDinh;
                ND.idCauHoi = cauHoi[i];
                datacontext.CauHoiCuaDinhs.Add(ND);
                datacontext.SaveChanges();
            }
        }
    }
}