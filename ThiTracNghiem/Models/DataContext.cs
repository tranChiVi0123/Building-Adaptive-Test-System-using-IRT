using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace ThiTracNghiem.Models
{
    public class DataContext: DbContext
    {
        public DbSet<CauHoi> CauHois { set; get; }
        public DbSet<CauHoiCuaDinh> CauHoiCuaDinhs { set; get; }
        public DbSet<ChiTietLichSu> ChiTietLichSus { set; get; }
        public DbSet<Chuong> Chuongs { set; get; }
        public DbSet<DapAn> DapAns { set; get; }
        public DbSet<DeThi> DeThis { set; get; }
        public DbSet<DinhKienThuc> DinhKienThucs { set; get; }
        public DbSet<LichSuLamBai> LichSuLamBais { set; get; }
        public DbSet<MaTranTrongSo> MaTranTrongSos { set; get; }
        public DbSet<MonHoc> MonHocs { set; get; }
        public DbSet<NoiDungDeThi> NoiDungDeThis { set; get; }
        public DbSet<TaiKhoanAdmin> TaiKhoanAdmins { set; get; }
        public DbSet<ThiSinh> ThiSinhs { set; get; }
        public DataContext()
            : base("mydata")
        {
            Database.SetInitializer<DataContext>(new DataInitializer());
        }

        public class DataInitializer : CreateDatabaseIfNotExists<DataContext>
        {
            protected override void Seed(DataContext context)
            {
                context.MonHocs.Add(new MonHoc { idMonHoc = "MH001", tenMonHoc = "Sinh học"});
                context.MonHocs.Add(new MonHoc { idMonHoc = "MH002", tenMonHoc = "Ngữ Văn"});
                context.Chuongs.Add(new Chuong { idChuong = "C0001", idMonHoc = "MH001", tenChuong = "Chương 1"});
                context.Chuongs.Add(new Chuong { idChuong = "C0002", idMonHoc = "MH001", tenChuong = "Chương 2"});
                context.Chuongs.Add(new Chuong { idChuong = "C0003", idMonHoc = "MH002", tenChuong = "Chương 1"});
                context.Chuongs.Add(new Chuong { idChuong = "C0004", idMonHoc = "MH002", tenChuong = "Chương 2"});
                context.TaiKhoanAdmins.Add(new TaiKhoanAdmin { tenDagNhap = "admin", matKhau = "admin", hoTen = "Admin", isAdmin = true });
                //context.SaveChanges();
                base.Seed(context);
            }
        }
    }
}