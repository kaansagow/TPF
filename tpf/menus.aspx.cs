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
            var temp = dropbox.SelectedIndex;
            switch (temp)
            {
                case 0:
                    GridView1.Visible = true;
                    GridView2.Visible = false;
                    GridView3.Visible = false;
                    GridView4.Visible = false;
                    GridView5.Visible = false;
                    GridView6.Visible = false;
                    break;
                case 1:
                    GridView1.Visible = false;
                    GridView2.Visible = true;
                    GridView3.Visible = false;
                    GridView4.Visible = false;
                    GridView5.Visible = false;
                    GridView6.Visible = false;
                    break;
                case 2:
                    GridView1.Visible = false;
                    GridView2.Visible = false;
                    GridView3.Visible = true;
                    GridView4.Visible = false;
                    GridView5.Visible = false;
                    GridView6.Visible = false;
                    break;
                case 3:
                    GridView1.Visible = false;
                    GridView2.Visible = false;
                    GridView3.Visible = false;
                    GridView4.Visible = true;
                    GridView5.Visible = false;
                    GridView6.Visible = false;
                    break;
                case 4:
                    GridView1.Visible = false;
                    GridView2.Visible = false;
                    GridView3.Visible = false;
                    GridView4.Visible = false;
                    GridView5.Visible = true;
                    GridView6.Visible = false;
                    break;
                case 5:
                    GridView1.Visible = false;
                    GridView2.Visible = false;
                    GridView3.Visible = false;
                    GridView4.Visible = false;
                    GridView5.Visible = false;
                    GridView6.Visible = true;
                    break;
            }
        }
    }
}