using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ThiTracNghiem.Models
{
    public class PhanTrang
    {
        public int trangHienTai { set; get; }
        public int tongSoTrang { set; get; }
        public int soBangGhi { set; get; }
        public PhanTrang()
        {
            soBangGhi = 10;
        }
        public PhanTrang(int tongSoTrang, int trangHienTai)
        {
            soBangGhi = 10;
            this.tongSoTrang = tongSoTrang;
            this.trangHienTai = trangHienTai;
        }
    }
}