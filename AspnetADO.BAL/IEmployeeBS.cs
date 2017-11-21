using System.Collections.Generic;
using AspnetCoreADO.DataAccess.Model;

namespace AspnetCoreADO.BAL
{
    public interface IEmployeeBS
    {
        List<Employee> GetEmployees();

    }        
}
