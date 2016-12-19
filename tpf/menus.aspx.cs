using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace tpf
{
    public partial class menus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(DropDownList1.SelectedValue == null)
            {
                GridView1.Visible = false;
            }
            else
            {
                GridView1.Visible = true;
                XmlDataSource2.XPath = "/menus/item[@menu='" + DropDownList1.SelectedValue + "']";
            }
        }
    }
}