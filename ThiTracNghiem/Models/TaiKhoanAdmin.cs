using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace ThiTracNghiem.Models
{
    [Table("tblTAIKHOANADMIN")]
    public class TaiKhoanAdmin
    {
        [Key]
        public string tenDagNhap { set; get; }
        public string matKhau { set; get; }
        public string hoTen { set; get; }
        public bool isAdmin { set; get; }
        public void ThemTaiKhoan(string tDN, string hT, string admin)
        {
            DataContext datacontext = new DataContext();
            TaiKhoanAdmin TK = datacontext.TaiKhoanAdmins.SingleOrDefault(x => x.tenDagNhap == tDN);
            if (TK == null)
            {
                TK = new TaiKhoanAdmin();
                TK.tenDagNhap = tDN;
                TK.hoTen = hT;
                TK.matKhau = "123456";
                if (admin != null)
                {
                    if (admin.Equals("1"))
                    {
                        TK.isAdmin = true;
                    }
                }
                else
                {
                    TK.isAdmin = false;
                }
                datacontext.TaiKhoanAdmins.Add(TK);
                datacontext.SaveChanges();
            }
        }
        public void XoaTaiKhoan(string tDN)
        {
            DataContext datacontext = new DataContext();
            TaiKhoanAdmin TK = datacontext.TaiKhoanAdmins.SingleOrDefault(x => x.tenDagNhap == tDN);
            if (TK != null)
            {
                datacontext.TaiKhoanAdmins.Remove(TK);
                datacontext.SaveChanges();
            }
        }
    }
}