using System.Collections.Generic;
using AspnetCoreADO.DataAccess.Model;

namespace AspnetCoreADO.BAL
{
    public interface IStudentBS
    {
        List<Person> GetStudents();

    }        
}
