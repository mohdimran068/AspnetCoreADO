using AspnetCoreADO.DataAccess.Model;
using AspnetCoreADO.DataAccess.Repository;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace AspnetCoreADO.BAL
{
    public class StudentBS : IStudentBS
    {
        public IDBOperation DBRecords { get; set; }

        public StudentBS(IDBOperation dbOps)
        {
            DBRecords = dbOps;
        }

        /// <summary>
        /// Function: GetEmployees
        /// Get Employee Records from Database
        /// </summary>
        /// <returns></returns>

        public List<Person> GetStudents()
        {
            return DBRecords.GetEmployees();
        }
    }
}
