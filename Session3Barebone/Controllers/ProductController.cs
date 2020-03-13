using AutoMapper;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using Session3Barebone.DataModels;
using Session3Barebone.Models;
using Session3Barebone.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Session3Barebone.Controllers
{
    [ApiController]
    [Route("[controller]")] 
    public class ProductController : ControllerBase
    {
        //2. Add field for EF context
        private CoreDatabaseContext dbContext;
        //7. Add mapper field
        private IMapper mapper;
        //15. Add dapper field
        private IDService dataService;
        //18. Add logger field
        private ILogger<ProductController> logger;



        //3. Inject context in constructor
        //8. Inject automapper in constructor
        //16. Inject dapper in constructor
        //19. Inject logger in constructor
        public ProductController(CoreDatabaseContext dbContext, IMapper mapper, IDService dataService, ILogger<ProductController> logger)
        {
            this.dbContext = dbContext;
            this.mapper = mapper;
            this.dataService = dataService;
            this.logger = logger;
        }
        [HttpGet]
        public ActionResult Get()
        {
            //4. Get result
            // return Ok(dbContext.Product);
            //9. map to response 
            //var dataResult = dbContext.Product;
            //var result = mapper.Map<IEnumerable<ProductResponse>>(dataResult);
            //return Ok(result);
            //17. Get from dapper
            //20. Log something
            logger.LogInformation("Starting something");
            var dataResult = dataService.GetAllProducts();
            var result = mapper.Map<IEnumerable<ProductResponse>>(dataResult);
            return Ok(result);
        }
    }
}
