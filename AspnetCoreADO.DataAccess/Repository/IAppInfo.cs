using System.Collections.Generic;
using AspnetCoreADO.DataAccess.Model;
using AspnetCoreADO.Configuration;

namespace AspnetCoreADO.DataAccess.Repository
{
    public interface IAppInfoRepo
    {
        AppInfo GetInfo();

    }        
}
