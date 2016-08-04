using AngularDynamicService.Models;
using AngularDynamicService.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web.Http;

namespace AngularDynamicService.Controllers
{
    [RoutePrefix("api/routes")]
    public class DynamicRouteController : ApiController
    {
        private AngularDynamicDbContext context = new AngularDynamicDbContext();

        [HttpGet]
        [Route("get-route")]
        public Task<HttpResponseMessage> GetRoute()
        {
            List<RouteViewModel> routes = new List<RouteViewModel>();
            //URL Base da página externa
            string urlBase = Request.RequestUri.Scheme + "://" + Request.RequestUri.Authority + "/api/templates/get-template?Id=";

            //monta lista de rotas
            routes = (from mn in context.Menu
                      join pg in context.Pagina on mn.Pagina.Id equals pg.Id
                      select new RouteViewModel
                      {
                          RouteName = pg.Nome,
                          Controller = pg.NomeController,
                          Descricao = mn.Nome,
                          Ordem = mn.Ordem,
                          URL = mn.URL,
                          TemplateURL = !pg.Interna ? urlBase+pg.Id.ToString() : pg.HTML
                      }).ToList();

            var response = Request.CreateResponse(HttpStatusCode.OK, new { data = routes });

            var tsc = new TaskCompletionSource<HttpResponseMessage>();
            tsc.SetResult(response);
            return tsc.Task;

        }

    }
}
