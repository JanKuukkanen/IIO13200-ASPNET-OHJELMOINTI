using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.Threading.Tasks;

namespace JAMK.ICT.BL
{
    public class Lotto
    {
        private string Tyyppi;
        private int SuurinNro;
        private int PieninNro;
        private int NroLkm;
        //private List<int> Arvot = new List<int>();

        public Lotto()
        {
            Tyyppi = "";
            SuurinNro = 0;
            PieninNro = 0;
            NroLkm = 0;
        }

        public Lotto(string arvonta)
        {
            Tyyppi = arvonta;

            if (Tyyppi == "Suomi")
            {
                SuurinNro = 39;
                PieninNro = 0;
                NroLkm = 7;
            }
            else if (Tyyppi == "VikingLotto")
            {
                SuurinNro = 48;
                PieninNro = 0;
                NroLkm = 6;
            }
        }

        public List<int> ArvoRivi()
        {

            Random random = new Random();
            List<int> Arvot = new List<int>();

            for (int nro = 0; nro < NroLkm; nro++)
            {
                int randomNumber = 0;
                
                randomNumber = random.Next(PieninNro, SuurinNro);
                Arvot.Add(randomNumber);
            }
            return Arvot;
        }
    }
}