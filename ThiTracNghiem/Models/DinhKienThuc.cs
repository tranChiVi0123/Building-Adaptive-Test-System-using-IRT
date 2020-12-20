using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace ThiTracNghiem.Models
{
    [Table("tblDINHKIENTHUC")]
    public class DinhKienThuc
    {
        [Key]
        public int idDinhKienThuc { set; get; }
        public string idMonHoc { set; get; }
        public string tenDinhKienThuc { set; get; }
        public int LoaiDinh { set; get; }
        [ForeignKey("idMonHoc")]
        public virtual MonHoc MonHoc { set; get; }
        public virtual ICollection<CauHoiCuaDinh> CacCauHoiCuaDinh { set; get; }
        public int ThemDinhKienThuc(string idMonHoc, string tenDinhKienThuc)
        {
            DataContext datacontext = new DataContext();
            DinhKienThuc DT = new DinhKienThuc();
            DT.idMonHoc = idMonHoc;
            DT.tenDinhKienThuc = tenDinhKienThuc;
            DT.LoaiDinh = 0;
            datacontext.DinhKienThucs.Add(DT);
            datacontext.SaveChanges();
            List<DinhKienThuc> cacDinh = datacontext.DinhKienThucs.Where(x => x.idMonHoc == idMonHoc).ToList();
            for (int i = 0; i < cacDinh.Count; i++)
            {
                MaTranTrongSo maTran = new MaTranTrongSo();
                maTran.tuDinh = cacDinh[i].idDinhKienThuc;
                maTran.denDinh = DT.idDinhKienThuc;
                maTran.coTheDen = false;
                maTran.trongSo = 0;
                maTran.trongSoMax = 0;
                datacontext.MaTranTrongSos.Add(maTran);
                MaTranTrongSo maTran2 = new MaTranTrongSo();
                maTran2.denDinh = cacDinh[i].idDinhKienThuc;
                maTran2.tuDinh = DT.idDinhKienThuc;
                maTran2.coTheDen = false;
                maTran2.trongSo = 0;
                maTran2.trongSoMax = 0;
                datacontext.MaTranTrongSos.Add(maTran2);
            }
            MaTranTrongSo maTran3 = new MaTranTrongSo();
            maTran3.tuDinh = DT.idDinhKienThuc;
            maTran3.denDinh = DT.idDinhKienThuc;
            maTran3.coTheDen = false;
            maTran3.trongSo = 0;
            maTran3.trongSoMax = 0;
            datacontext.MaTranTrongSos.Add(maTran3);
            datacontext.SaveChanges();
            return DT.idDinhKienThuc;
        }
    }
}