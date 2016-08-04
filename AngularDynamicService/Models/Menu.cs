using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AngularDynamicService.Models
{
    public class Menu
    {
        public int Id { get; set; }
        public string Nome { get; set; }
        public int Ordem { get; set; }
        public string URL { get; set; }
        public virtual Pagina Pagina { get; set; }
    }
}