using AspnetCoreADO.Configuration;
using AspnetCoreADO.DataAccess.Model;
using Microsoft.Extensions.Options;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace AspnetCoreADO.DataAccess.Repository
{
    public class DBOperations : IDBOperation
    {
        private readonly ConnectionStrings connectionStrings;


        public DBOperations(IOptions<ConnectionStrings> options)
        {
            connectionStrings = options.Value;
        }

        /// <summary>
        /// Function: GetEmployees
        /// Get Employee Records from Database
        /// </summary>
        /// <returns></returns>

        public List<Employee> GetEmployees()
        {
            List<Employee> lstEmployees = new List<Employee>();
            try
            {
                string ConnectionPath = connectionStrings.DbConnection;

                using (var sqlCon = new SqlConnection(ConnectionPath))
                {
                    using (SqlCommand cmd = new SqlCommand("usp_GetEmployees", sqlCon))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;

                        sqlCon.Open();

                        using (SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.CloseConnection))
                        {

                            while (dr.Read())
                            {
                                lstEmployees
                                    .Add
                                    (
                                        new Employee
                                        {
                                            EmployeeID = Convert.ToInt32(dr["EmployeeID"].ToString())
                                             ,
                                            EmployeeName = dr["EmployeeName"].ToString()
                                             ,
                                            EmailAddress = dr["EmailAddress"].ToString()
                                             ,
                                            PhoneNumber = dr["PhoneNumber"].ToString()
                                        }

                                    );
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return lstEmployees;
        }
    }
}
