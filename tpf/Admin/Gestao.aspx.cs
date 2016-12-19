using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace tpf.Admin
{
    public partial class Gestao : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            HyperLink hyper = (HyperLink)row.FindControl("HyperLink1");
            XmlDocument xdoc = XmlDataSource3.GetXmlDocument();

            XmlElement item = xdoc.SelectSingleNode("menus/item[@id='" + hyper.Text + "']") as XmlElement;
            item.SelectSingleNode("menu").InnerText = e.NewValues["menu"].ToString();
            item.SelectSingleNode("nome").InnerText = e.NewValues["nome"].ToString();
            item.SelectSingleNode("price").InnerText = e.NewValues["price"].ToString();

            XmlDataSource3.Save();
            XmlDataSource1.DataBind();

            e.Cancel = true;
            GridView1.EditIndex = -1;
            Response.Redirect(Request.RawUrl);

        }

        protected void lnkSave_Click(object sender, EventArgs e)
        {
            XmlDocument xdoc = XmlDataSource3.GetXmlDocument();
            XmlElement root = xdoc.DocumentElement;
            XmlNodeList nodes = root.SelectNodes("/menus/item");
            int id_number = 0;
            foreach(XmlNode node in nodes)
            {
                int id_register = Int32.Parse(node.Attributes[0].Value);
                if(id_number < id_register)
                {
                    id_number = id_register;
                }
            }
            id_number++;

            XmlElement menus = xdoc.SelectSingleNode("menus") as XmlElement;
            XmlElement item = xdoc.CreateElement("item");
            XmlElement id = xdoc.CreateElement("id");
            XmlElement menu = xdoc.CreateElement("menu");
            XmlElement nome = xdoc.CreateElement("nome");
            XmlElement price = xdoc.CreateElement("price");
            XmlAttribute aid = xdoc.CreateAttribute("id");
            aid.InnerText = (id_number).ToString();
            id.InnerText = (id_number).ToString();
            menu.InnerText = ((TextBox)GridView1.FooterRow.FindControl("txtmenu")).Text;
            nome.InnerText = ((TextBox)GridView1.FooterRow.FindControl("txtnome")).Text;
            price.InnerText = ((TextBox)GridView1.FooterRow.FindControl("txtprice")).Text;

            item.Attributes.Append(aid);
            item.AppendChild(id);
            item.AppendChild(menu);
            item.AppendChild(nome);
            item.AppendChild(price);
            menus.AppendChild(item);

            XmlDataSource3.Save();
            XmlDataSource1.DataBind();

            GridView1.ShowFooter = false;
            Response.Redirect(Request.RawUrl);
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            GridView1.ShowFooter = false;
        }

        protected void button1_Click(object sender, EventArgs e)
        {
            GridView1.ShowFooter = true;
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            HyperLink hyper = (HyperLink)row.FindControl("HyperLink1");
            XmlDocument xdoc = XmlDataSource3.GetXmlDocument();

            XmlElement menus = xdoc.SelectSingleNode("menus") as XmlElement;
            XmlElement item = xdoc.SelectSingleNode("menus/item[@id='" + hyper.Text + "']") as XmlElement;
            menus.RemoveChild(item);
            XmlDataSource3.Save();
            XmlDataSource1.DataBind();
            e.Cancel = true;
            GridView1.DataBind();
        }
    }
}