using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;
using Serilog;

namespace Session3Barebone
{
    public class Program
    {
        public static void Main(string[] args)
        {
            //21. Create rolling file logger
            Log.Logger = new LoggerConfiguration()
                .WriteTo.Elasticsearch("http://localhost:9200/").CreateLogger();
              //  .WriteTo.RollingFile("c:\\temp\\log-{Date}.txt").CreateLogger();

            CreateHostBuilder(args).Build().Run();
        }

        public static IHostBuilder CreateHostBuilder(string[] args) =>

             Host.CreateDefaultBuilder(args)
                .ConfigureWebHostDefaults(webBuilder =>
                {
                    webBuilder.UseStartup<Startup>();
                }) //22. configure logging
                .ConfigureLogging(logging =>
                {
                    logging.ClearProviders();
                    logging.AddSerilog();
                });
    }
}
