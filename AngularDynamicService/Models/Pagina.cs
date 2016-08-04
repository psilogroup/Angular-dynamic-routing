using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AngularDynamicService.Models
{
    public class Pagina
    {
        public int Id { get; set; }
        public string Nome { get; set; }
        public string Descricao { get; set; }
        public bool Interna { get; set; }
        public bool Ativa { get; set; }
        public string NomeController { get; set; }
        public string HTML { get; set; }
        
    }
}