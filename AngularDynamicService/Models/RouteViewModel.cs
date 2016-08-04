using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AngularDynamicService.Models
{
    public class RouteViewModel
    {
        public string RouteName { get; set; }
        public string Descricao { get; set; }
        public string Controller { get; set; }
        public string URL { get; set; }
        public string TemplateURL { get; set; }
        public int Ordem { get; set; }
    }
}