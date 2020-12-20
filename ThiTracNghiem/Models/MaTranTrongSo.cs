using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace ThiTracNghiem.Models
{
    [Table("tblMATRANTRONGSO")]
    public class MaTranTrongSo
    {
        [Key]
        public int idTrongSo { set; get; }
        public int tuDinh { set; get; }
        public int denDinh { set; get; }
        public bool coTheDen { set; get; }
        public float trongSo { set; get; }
        public float trongSoMax { set; get; }
    }
}