using AngularDynamicService.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity.ModelConfiguration;
using System.Linq;
using System.Web;

namespace AngularDynamicService.Repository.Map
{
    public class MenuMap :  EntityTypeConfiguration<Menu>
    {
        public MenuMap()
        {
            ToTable("Menu");
            HasKey(x => x.Id);
            Property(x => x.Nome).IsRequired().HasMaxLength(200);
            Property(x => x.URL).IsOptional().HasMaxLength(400);
            Property(x => x.Ordem).IsRequired();

            HasOptional(x => x.Pagina);

            
        }
    }
}