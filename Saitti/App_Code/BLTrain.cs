using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for BLTrain
/// </summary>
/// 
namespace JAMK.IT
{
    public class Train
    {
        public string TrainNumber { get; set; }
        public bool Cancelled { get; set; }
        public string DepartureDate { get; set; }
    }

    public class Station
    {
        public string StationName { get; set; }
        public string StationShortCode { get; set; }
    }
}