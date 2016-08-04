using AngularDynamicService.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity.ModelConfiguration;
using System.Linq;
using System.Web;

namespace AngularDynamicService.Repository.Map
{
    public class PaginaMap : EntityTypeConfiguration<Pagina>
    {
        public PaginaMap()
        {
            ToTable("Pagina");

            HasKey(x => x.Id);
            Property(x => x.Descricao).IsRequired().HasMaxLength(100);
            Property(x => x.Interna).IsRequired();
            Property(x => x.NomeController).IsRequired().HasMaxLength(50);
            Property(x => x.Ativa).IsRequired();
            Property(x => x.Nome).IsOptional();
            Property(x => x.HTML).HasColumnType("text").IsOptional();
            
        }
    }
}