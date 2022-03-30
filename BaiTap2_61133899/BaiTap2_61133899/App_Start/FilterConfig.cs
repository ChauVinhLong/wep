using System.Web;
using System.Web.Mvc;

namespace BaiTap2_61133899
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}
