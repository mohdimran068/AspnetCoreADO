using AspnetCoreADO.Configuration;
using Microsoft.Extensions.Options;

namespace AspnetCoreADO.DataAccess.Repository
{
    public class AppInfoRepo : IAppInfoRepo
    {
        private readonly AppInfo AppInfos;


        public AppInfoRepo(IOptions<AppInfo> options)
        {
            AppInfos = options.Value;
        }

        /// <summary>
        /// Function: GetEmployees
        /// Get Employee Records from Database
        /// </summary>
        /// <returns></returns>

        public AppInfo GetInfo()
        {
            return AppInfos;
        }
    }
}
