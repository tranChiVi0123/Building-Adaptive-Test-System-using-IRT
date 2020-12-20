using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace ThiTracNghiem.Models
{
    [Table("tblTHISINH")]
    public class ThiSinh
    {
        [Key]
        public string idThiSinh { set; get; }
        public string hoTen { set; get; }
        public DateTime ngaySinh { set; get; }
        public string gioiTinh { set; get; }
        public string email { set; get; }
        public string tenDangNhap { set; get; }
        public string matKhau { set; get; }
        public int soBaiLam { set; get; }
        public float tongSoDiem { set; get; }
        public float DTB { set; get; }
        public string xepLoai { set; get; }
        public float nangLuc { set; get; }
        public virtual ICollection<LichSuLamBai> CacLichSuLamBai { set; get; }
        public string ThemThiSinh(string hoten, DateTime ngaysinh, string gioitinh, string email, string tenDN, string pass)
        {
            DataContext datacontext = new DataContext();
            ThiSinh thisinh = datacontext.ThiSinhs.FirstOrDefault(x => x.tenDangNhap == tenDN || x.email == email);
            if (thisinh == null)
            {
                string IDTS = "TS00";
                if (datacontext.ThiSinhs.ToList().Count > 0)
                {
                    IDTS = datacontext.ThiSinhs.OrderByDescending(x => x.idThiSinh).ToList()[0].idThiSinh;
                }
                IDTS = "TS" + String.Format("{0:000}", (Convert.ToInt32(IDTS.Substring(2, IDTS.Length - 2)) + 1));
                ThiSinh TS = new ThiSinh();
                TS.idThiSinh = IDTS;
                TS.hoTen = hoten;
                TS.ngaySinh = ngaysinh;
                TS.gioiTinh = gioitinh;
                TS.email = email;
                TS.tenDangNhap = tenDN;
                TS.matKhau = pass;
                TS.soBaiLam = 0;
                TS.tongSoDiem = 0.0f;
                TS.DTB = 0.0f;
                TS.xepLoai = "Yếu";
                TS.nangLuc = 0f;
                datacontext.ThiSinhs.Add(TS);
                try
                {
                    datacontext.SaveChanges();
                }
                catch(Exception e) {
                    Console.WriteLine(e.Message);
                }
                return IDTS;
            }
            return "";
        }
        public void EditThiSinh(string idTS, string hoten, DateTime ngaysinh, string gioitinh)
        {
            DataContext datacontext = new DataContext();
            ThiSinh TS = datacontext.ThiSinhs.SingleOrDefault(x => x.idThiSinh == idTS);
            if (TS != null)
            {
                TS.hoTen = hoten;
                TS.ngaySinh = ngaysinh;
                TS.gioiTinh = gioitinh;
                datacontext.SaveChanges();
            }
        }
        public void XoaThiSinh(string idTS)
        {
            DataContext datacontext = new DataContext();
            ThiSinh TS = datacontext.ThiSinhs.SingleOrDefault(x => x.idThiSinh == idTS);
            if (TS != null)
            {
                List<string> LSLB = datacontext.LichSuLamBais.Where(x => x.maThiSinh == idTS).Select(x=>x.idLichSuLamBai).ToList();
                for (int i = 0; i < LSLB.Count; i++)
                {
                    new LichSuLamBai().XoaLichSu(LSLB[i]);
                }
                datacontext.ThiSinhs.Remove(TS);
                datacontext.SaveChanges();
            }
        }
    }
}