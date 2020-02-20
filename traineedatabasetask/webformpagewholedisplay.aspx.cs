using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TraineeDatabaseTask
{
    public partial class WebFormForWHOEDISPLAY : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            ADIOLayer ad1 = new ADIOLayer();


            var s = ad1.GetData();
            GridView1.DataSource = s;
            GridView1.DataBind();

        }
    }
}