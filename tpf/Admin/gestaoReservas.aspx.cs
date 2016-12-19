using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace tpf.Admin
{
    public partial class gestaoReservas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void reservationItemUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            HyperLink hyper = (HyperLink)row.FindControl("HyperLink1");
            XmlDocument xdoc = XmlDataSource2.GetXmlDocument();

            XmlElement reserva = xdoc.SelectSingleNode("reservas/item[@id='" + hyper.Text + "']") as XmlElement;
            reserva.SelectSingleNode("reserva").InnerText = e.NewValues["reserva"].ToString();
            reserva.SelectSingleNode("telefone").InnerText = e.NewValues["telefone"].ToString();
            reserva.SelectSingleNode("email").InnerText = e.NewValues["email"].ToString();
            reserva.SelectSingleNode("data").InnerText = e.NewValues["data"].ToString();
            reserva.SelectSingleNode("pessoas").InnerText = e.NewValues["pessoas"].ToString();

            XmlDataSource2.Save();
            XmlDataSource1.DataBind();
        

            e.Cancel = true;
            GridView1.EditIndex = -1;
            Response.Redirect(Request.RawUrl);
        }


        protected void reservationItemDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            HyperLink hyper = (HyperLink)row.FindControl("HyperLink1");
            XmlDocument xdoc = XmlDataSource2.GetXmlDocument();

            XmlElement reservas = xdoc.SelectSingleNode("reservas") as XmlElement;
            XmlElement reserva = xdoc.SelectSingleNode("reservas/item[@id='" + hyper.Text + "']") as XmlElement;
            reservas.RemoveChild(reserva);

            XmlDataSource2.Save();
            XmlDataSource1.DataBind();

            e.Cancel = true;

            GridView1.DataBind();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            GridView1.ShowFooter = true;

        }
        protected void lnkSave_Click(object sender, EventArgs e)
        {
            XmlDocument xdoc = XmlDataSource1.GetXmlDocument();

            XmlElement root = xdoc.DocumentElement;
            XmlNodeList nodes = root.SelectNodes("//reservas"); // You can also use XPath here
            foreach (XmlNode node in nodes)
            {

                XmlElement reservas = xdoc.SelectSingleNode("reservas") as XmlElement;
                XmlElement item = xdoc.CreateElement("item");
                XmlElement reserva = xdoc.CreateElement("reserva");
                XmlElement telefone = xdoc.CreateElement("telefone");
                XmlElement email = xdoc.CreateElement("email");
                XmlElement data = xdoc.CreateElement("data");
                reserva.InnerText = ((TextBox)GridView1.FooterRow.FindControl("txtreserva")).Text;
                telefone.InnerText = ((TextBox)GridView1.FooterRow.FindControl("txttelefone")).Text;
                email.InnerText = ((TextBox)GridView1.FooterRow.FindControl("txtemail")).Text;
                data.InnerText = ((TextBox)GridView1.FooterRow.FindControl("txtdata")).Text;


                item.AppendChild(reserva);
                item.AppendChild(telefone);
                item.AppendChild(email);
                item.AppendChild(data);
                reservas.AppendChild(item);

                XmlDataSource1.Save();
                XmlDataSource1.DataBind();


                GridView1.ShowFooter = false;
                Response.Redirect(Request.RawUrl);
            }
        }
        protected void lnkCancel_Click(object sender, EventArgs e)
        {
            GridView1.ShowFooter = false;
            // similarly you can find other controls and save

        }
    }
}