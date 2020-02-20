using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TraineeDatabaseTask
{
    public partial class WebFormForUpdate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ADIOLayer ada = new ADIOLayer();



            int idno = Convert.ToInt32(TextBox1.Text);
            string domain = DropDownListdopmain.Text;
            var singlestudent = ada.Update(idno, domain);

            GridView1.DataSource = singlestudent;
            GridView1.Dispose();


        }
    }
}