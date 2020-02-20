using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace traineedatabasetask
{
    public partial class webformregistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {

            ADIOLayer ada = new ADIOLayer();
            int ido = Convert.ToInt32(tidT.Text);
            string nam = (name.Text);
            string loc = (DropDownListloc.Text);

            string tech = (DropDownListdopmain.Text);
            DateTime dat = Calendar1.SelectedDate;
            ada.Insertrow(ido, nam, loc, tech, dat);


        }


    }
}