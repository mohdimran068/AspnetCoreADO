using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;

using AspnetCoreADO.DataAccess.Repository;
using AspnetCoreADO.DataAccess.Model;

namespace AspnetCoreADO.Controllers
{
    [Route("api/employees")]
    public class EmployeeController : Controller
    { 
        public EmployeeController(IDBOperation dbOps)
        {
            DBRecords = dbOps;
        }
        public IDBOperation DBRecords { get; set; }

        [HttpGet]
        [Route("getall")]        
        public List<Employee> GetEmployees()
        {
            return DBRecords.GetEmployees();
            
        }
    }
}
