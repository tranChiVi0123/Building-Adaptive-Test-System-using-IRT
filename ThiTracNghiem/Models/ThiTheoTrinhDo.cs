using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ThiTracNghiem.Models
{
    public class ThiTheoTrinhDo
    {
        float trinhDoTS;
        CauHoi cauHoiDuocChon;
        List<CauHoi> tapCauHoi;
        List<CauHoi> cauHoiDaChon = new List<CauHoi>();
        List<float> hamThongTinCauHoi;
        List<bool> traLoi = new List<bool>();
        List<float> listTrinhDo = new List<float>();
        int soCauHoiCan;
        int soCauDung = 0;
        string idLSLB;
        int tgTraLoi;
        int phuongPhapThi;
        int soCauDaTraLoi;
        float se = 0;
        //IRT 3 tham số
        // Xác xuất tính IRT
        #region IRT3 tham số
        private float P_IRT3(float trinhDo, float doKho, float doPhanBiet, float c)// D = 1.72
        {
            return c + (1 - c) * (1.0f / (1.0f + (float)Math.Exp(-1.7f * doPhanBiet * (trinhDo - doKho))));
            //return c + (1 - c) * ((float)Math.Exp(-1.7f * doPhanBiet * (trinhDo - doKho)) /
            //    (1.0f + (float)Math.Exp(-1.7f * doPhanBiet * (trinhDo - doKho))));
        }
        private float daoHamP_IRT3(float trinhDo, float doKho, float doPhanBiet, float c)
        {
            return ((1 - c) * (float)(1.7f * doPhanBiet * ((float)Math.Exp(-1.7f * doPhanBiet * (trinhDo - doKho))))) /
                    ((float)Math.Pow((1.0f + (float)Math.Exp(-1.7f * doPhanBiet * (trinhDo - doKho))), 2));
            //return ((c-1) * (float)(1.7f * doPhanBiet * ((float)Math.Exp(1.7f * doPhanBiet * (trinhDo - doKho))))) /
            //        ((float)Math.Pow((1.0f + (float)Math.Exp(1.7f * doPhanBiet * (trinhDo - doKho))), 2));
        }
        private float I_IRT3(CauHoi CH)// Hàm thông tin câu hỏi
        {
            //float a = daoHamP_IRT3(TrinhDoTS, CH.doKho, CH.doPhanBiet, CH.c);
            //float b = P_IRT3(TrinhDoTS, CH.doKho, CH.doPhanBiet, CH.c);
            //float c = a + b;
            return (daoHamP_IRT3(TrinhDoTS, CH.doKho, CH.doPhanBiet, CH.c) * daoHamP_IRT3(TrinhDoTS, CH.doKho, CH.doPhanBiet, CH.c)) /
                (P_IRT3(TrinhDoTS, CH.doKho, CH.doPhanBiet, CH.c) * (1 - P_IRT3(TrinhDoTS, CH.doKho, CH.doPhanBiet, CH.c)));

            //return (float)((2.89 * CH.doPhanBiet * CH.doPhanBiet *(1-CH.c))/
            //    ((CH.c + Math.Exp(1.7*CH.doPhanBiet*(trinhDoTS - CH.doKho)))*
            //    (1+Math.Exp(1.7 * CH.doPhanBiet * (trinhDoTS - CH.doKho)))*
            //    (1 + Math.Exp(1.7 * CH.doPhanBiet * (trinhDoTS - CH.doKho)))));
        }
        private float S_IRT3(CauHoi CH, bool dung)
        {
            if (dung)
            {
                return daoHamP_IRT3(TrinhDoTS, CH.doKho, CH.doPhanBiet, CH.c) /
                    P_IRT3(TrinhDoTS, CH.doKho, CH.doPhanBiet, CH.c);
            }
            else
            {
                return -daoHamP_IRT3(TrinhDoTS, CH.doKho, CH.doPhanBiet, CH.c) /
                    (1 - P_IRT3(TrinhDoTS, CH.doKho, CH.doPhanBiet, CH.c));
            }
        }
        public void timCauHoi_IRT3()
        {
            hamThongTinCauHoi = new List<float>();
            for (int i = 0; i < tapCauHoi.Count; i++)
            {
                hamThongTinCauHoi.Add(I_IRT3(tapCauHoi[i]));
            }
            if (hamThongTinCauHoi.Count < 1)
            {
                cauHoiDuocChon = null;
                return;
            }
            float max = hamThongTinCauHoi[0];
            int k = 0;
            for (int i = 1; i < hamThongTinCauHoi.Count; i++)
            {
                if (hamThongTinCauHoi[i] > max)
                {
                    max = hamThongTinCauHoi[i];
                    k = i;
                }
            }
            var t = hamThongTinCauHoi;
            cauHoiDuocChon = tapCauHoi[k];
            cauHoiDaChon.Add(cauHoiDuocChon);
            tgTraLoi = cauHoiDuocChon.tgTraLoi;
            tapCauHoi.Remove(cauHoiDuocChon);
        }
        public void capNhatNangLuc_IRT3(bool dung)
        {            
            traLoi.Add(dung);
            float tongS = 0f, tongI = 0f;
            for (int i = 0; i < cauHoiDaChon.Count; i++)
            {
                tongS += S_IRT3(cauHoiDaChon[i], traLoi[i]);
                tongI += I_IRT3(cauHoiDaChon[i]);
            }
            trinhDoTS += tongS / tongI;
            ListTrinhDo.Add(TrinhDoTS);
        }
        #endregion

        #region Phương pháp IRT 1 tham số và Markov
        //----------------------------------------------------------------------
        //Theo phương pháp IRT
        private float P_IRT(float trinhDo, float b, float a)
        {
            try
            {
                return (float)Math.Exp(a * (trinhDo - b)) / (1.0f + (float)Math.Exp(a * (trinhDo - b)));
            }
            catch
            {
                return 0f;
            }
        }
        private float I_IRT(CauHoi CH)
        {
            try
            {
                float p = P_IRT(trinhDoTS, CH.doKho, CH.doPhanBiet);
                return CH.doPhanBiet * CH.doPhanBiet * p * (1 - p);
            }
            catch
            {
                return 0f;
            }
        }
        private float S_IRT(CauHoi CH, bool dung)
        {
            try
            {
                float p = P_IRT(trinhDoTS, CH.doKho, CH.doPhanBiet);
                if (dung)
                {
                    return CH.doPhanBiet * (1 - p);
                }
                else
                {
                    return CH.doPhanBiet * (-p);
                }
            }
            catch
            {
                return 0f;
            }
        }
        public void timCauHoi_IRT()
        {
            hamThongTinCauHoi = new List<float>();
            for (int i = 0; i < tapCauHoi.Count; i++)
            {
                hamThongTinCauHoi.Add(I_IRT(tapCauHoi[i]));
            }
            float max = hamThongTinCauHoi[0];
            int k = 0;
            for (int i = 1; i < hamThongTinCauHoi.Count; i++)
            {
                if (hamThongTinCauHoi[i] > max)
                {
                    max = hamThongTinCauHoi[i];
                    k = i;
                }
            }
            cauHoiDuocChon = tapCauHoi[k];
            cauHoiDaChon.Add(cauHoiDuocChon);
            tgTraLoi = cauHoiDuocChon.tgTraLoi;
            tapCauHoi.Remove(cauHoiDuocChon);
        }
        public void capNhatNangLuc_IRT(bool dung)
        {
            traLoi.Add(dung);
            float tongS = 0f, tongI = 0f;
            for (int i = 0; i < cauHoiDaChon.Count; i++)
            {
                tongS += S_IRT(cauHoiDaChon[i], traLoi[i]);
                tongI += I_IRT(cauHoiDaChon[i]);
            }
            trinhDoTS += tongS / tongI;
            ListTrinhDo.Add(trinhDoTS);
        }

        //--------------------------------------------------------------------------------------
        //Theo phương pháp Markov
        private float P(float trinhDo, float b, float a)
        {
            try
            {
                return 1.0f / (1 + (float)Math.Exp(-1.7f * a * (trinhDo - b)));
            }
            catch
            {
                return 0f;
            }
        }
        private float DaoHamP(float trinhDo, float b, float a)
        {
            try
            {
                return (float)(1.7f * a * ((float)Math.Exp(-1.7f * a * (trinhDo - b)))) /
                    ((float)Math.Pow((1 + (float)Math.Exp(-1.7f * a * (trinhDo - b))), 2));
            }
            catch
            {
                return 0f;
            }
        }
        private float DaoHamHieuP(float trinhDo, float b, float a)
        {
            return -DaoHamP(trinhDo, b, a);
        }
        private float I(CauHoi CH, bool dung){
            float Pdh = 0f, p = 0f, hieuPDaoHam = 0f;
            if (dung)
            {
                Pdh = DaoHamP(trinhDoTS, CH.doKho, CH.doPhanBiet);
                p = P(trinhDoTS, CH.doKho, CH.doPhanBiet);
                hieuPDaoHam = DaoHamHieuP(trinhDoTS, CH.doKho, CH.doPhanBiet);
            }
            else
            {
                Pdh = DaoHamP(trinhDoTS, CH.a2, CH.b2);
                p = P(trinhDoTS, CH.a2, CH.b2);
                hieuPDaoHam = DaoHamHieuP(trinhDoTS, CH.a2, CH.b2);
            }
            try
            {
                return ((float)Math.Pow(Pdh, 2)) / (p * (hieuPDaoHam));
            }
            catch
            {
                return 0f;
            }
        }        
        private float S(CauHoi CH, bool dung)
        {
            float Pdh = 0f, p = 0f, HieuPdh = 0f, s = 0f;
            try
            {
                if (dung)
                {
                    Pdh = DaoHamP(trinhDoTS, CH.doKho, CH.doPhanBiet);
                    p = P(trinhDoTS, CH.doKho, CH.doPhanBiet);
                    HieuPdh = DaoHamHieuP(trinhDoTS, CH.doKho, CH.doPhanBiet);
                    s = ((1 - p) * Pdh)/(p*HieuPdh);
                }
                else
                {
                    Pdh = DaoHamP(trinhDoTS, CH.a2, CH.b2);
                    p = P(trinhDoTS, CH.a2, CH.b2);
                    HieuPdh = DaoHamHieuP(trinhDoTS, CH.a2, CH.b2);
                    s = ((- p) * Pdh)/(p*HieuPdh);
                }
                return s;
            }
            catch
            {
                return 0f;
            }
        }        
        public void timCauHoi(bool dung)
        {
            hamThongTinCauHoi = new List<float>();
            for (int i = 0; i < tapCauHoi.Count; i++)
            {
                hamThongTinCauHoi.Add(I(tapCauHoi[i], dung));
            }
            float max = hamThongTinCauHoi[0];
            int k = 0;
            for (int i = 1; i < hamThongTinCauHoi.Count; i++)
            {
                if (hamThongTinCauHoi[i] > max)
                {
                    max = hamThongTinCauHoi[i];
                    k = i;
                }
            }
            cauHoiDuocChon = tapCauHoi[k];
            cauHoiDaChon.Add(cauHoiDuocChon);
            tgTraLoi = cauHoiDuocChon.tgTraLoi;
            tapCauHoi.Remove(cauHoiDuocChon);
        }        
        public void capNhatNangLuc(bool dung)
        {
            traLoi.Add(dung);
            float tongS = 0f, tongI = 0f;
            for (int i = 0; i < cauHoiDaChon.Count; i++)
            {
                tongS += S(cauHoiDaChon[i], traLoi[i]);
                tongI += I(cauHoiDaChon[i], traLoi[i]);
            }
            trinhDoTS += tongS / tongI;
            SE = (float)(1 / Math.Sqrt(tongI));
            listTrinhDo.Add(trinhDoTS);
        }
        //---------------------------------------------------------------------------------
        //properties
#endregion
        public float TrinhDoTS{
            set
            {
                trinhDoTS = value;
            }
            get
            {
                return trinhDoTS;
            }
        }
        public CauHoi CauHoiDuocChon
        {
            set
            {
                cauHoiDuocChon = value;
            }
            get
            {
                return cauHoiDuocChon;
            }
        }
        public List<CauHoi> TapCauHoi
        {
            set
            {
                tapCauHoi = value;
            }
            get
            {
                return tapCauHoi;
            }
        }
        public int SoCauHoiCan
        {
            set
            {
                soCauHoiCan = value;
            }
            get
            {
                return soCauHoiCan;
            }
        }
        public int SoCauDung
        {
            set
            {
                soCauDung = value;
            }
            get
            {
                return soCauDung;
            }
        }
        public int soCauDaLam
        {
            get
            {
                return cauHoiDaChon.Count;
            }
        }
        public string IDLSLB
        {
            set
            {
                idLSLB = value;
            }
            get
            {
                return idLSLB;
            }
        }
        public int TGTraLoi
        {
            set
            {
                tgTraLoi = value;
            }
            get
            {
                return tgTraLoi;
            }
        }
        public int PhuongPhapThi
        {
            set
            {
                phuongPhapThi = value;
            }
            get
            {
                return phuongPhapThi;
            }
        }
        public List<float> ListTrinhDo
        {
            set
            {
                listTrinhDo = value;
            }
            get
            {
                return listTrinhDo;
            }
        }
        public List<bool> TraLoi
        {
            set
            {
                traLoi = value;
            }
            get
            {
                return traLoi;
            }
        }
        public int SoCauDaTraLoi
        {
            set
            {
                soCauDaTraLoi = value;
            }
            get
            {
                return soCauDaTraLoi;
            }
        }
        public float SE
        {
            set
            {
                se = value;
            }
            get
            {
                return se;
            }
        }
    }
}