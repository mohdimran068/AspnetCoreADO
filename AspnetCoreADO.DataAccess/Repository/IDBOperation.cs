using System.Collections.Generic;
using AspnetCoreADO.DataAccess.Model;

namespace AspnetCoreADO.DataAccess.Repository
{
    public interface IDBOperation
    {
        List<Person> GetEmployees();

    }        
}
