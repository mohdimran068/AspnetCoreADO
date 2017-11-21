using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using AspnetCoreADO.DataAccess.Model;
using AspnetCoreADO.BAL;

namespace AspnetCoreADO.Controllers
{
    [Route("api/employees")]
    public class EmployeeController : Controller
    { 
        public EmployeeController(IEmployeeBS dbOps)
        {
            balDIOBJ = dbOps;
        }

        public IEmployeeBS balDIOBJ { get; set; }

        //public EmployeeController(IStudentBS dbOps)
        //{
        //    studentDIOBJ = dbOps;
        //}

        //public IStudentBS studentDIOBJ { get; set; }

        [HttpGet]
        [Route("getall")]        
        public List<Person> GetEmployees()
        {
            return balDIOBJ.GetEmployees();
            
        }
        //[HttpGet]
        //[Route("allstu")]
        //public List<Person> GetStudents()
        //{
        //    return studentDIOBJ.GetStudents();
        //}
    }
}
