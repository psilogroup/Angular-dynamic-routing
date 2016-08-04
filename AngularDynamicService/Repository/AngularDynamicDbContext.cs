using AngularDynamicService.Models;
using AngularDynamicService.Repository.Map;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace AngularDynamicService.Repository
{
    public class AngularDynamicDbContext : DbContext
    {
        public DbSet<Menu> Menu { get; set; }
        public DbSet<Pagina> Pagina { get; set; }
        
        public AngularDynamicDbContext() : base("AngularDynamic")
        {

        }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Configurations.Add(new MenuMap());
            modelBuilder.Configurations.Add(new PaginaMap());
        }
    }
}