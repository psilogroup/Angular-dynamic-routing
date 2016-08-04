using AngularDynamicService.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using System.Web.Http;

namespace AngularDynamicService.Controllers
{
    [RoutePrefix("api/templates")]
    public class TemplateProviderController : ApiController
    {
        private AngularDynamicDbContext context = new AngularDynamicDbContext();

        [HttpGet]
        [Route("get-template")]
        public Task<HttpResponseMessage> GetTemplate(int Id)
        {

            var template = (from q in context.Pagina where q.Id == Id select q.HTML).FirstOrDefault();
            var response = Request.CreateResponse(HttpStatusCode.OK);
            response.Content = new StringContent(template, Encoding.UTF8, "text/html");
            
            var tsc = new TaskCompletionSource<HttpResponseMessage>();
            tsc.SetResult(response);
            return tsc.Task;
        }
    }
}
