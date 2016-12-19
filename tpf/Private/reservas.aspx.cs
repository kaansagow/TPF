using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace tpf.Private
{
    public partial class reservas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            XmlDocument xdoc = XmlDataSource1.GetXmlDocument();
            XmlElement root = xdoc.DocumentElement;
            XmlNodeList nodes = root.SelectNodes("/reservas/item");
            int id_number = 0;
            foreach (XmlNode node in nodes)
            {
                int id_register = Int32.Parse(node.Attributes[0].Value);
                if (id_number < id_register)
                {
                    id_number = id_register;
                }
            }
            id_number++;

            XmlElement reservas = xdoc.SelectSingleNode("reservas") as XmlElement;
            XmlElement item = xdoc.CreateElement("item");
            XmlElement id = xdoc.CreateElement("id");
            XmlElement reserva = xdoc.CreateElement("reserva");
            XmlElement telefone = xdoc.CreateElement("telefone");
            XmlElement email = xdoc.CreateElement("email");
            XmlElement data = xdoc.CreateElement("data");
            XmlElement pessoas = xdoc.CreateElement("pessoas");
            XmlAttribute aid = xdoc.CreateAttribute("id");
            aid.InnerText = (id_number).ToString();
            id.InnerText = (id_number).ToString();
            reserva.InnerText = TextBox1.Text;
            telefone.InnerText = TextBox2.Text;
            email.InnerText = Context.User.Identity.GetUserName();
            data.InnerText = date.Text.ToString();
            pessoas.InnerText = TextBox4.Text;

            item.Attributes.Append(aid);
            item.AppendChild(id);
            item.AppendChild(reserva);
            item.AppendChild(telefone);
            item.AppendChild(email);
            item.AppendChild(data);
            item.AppendChild(pessoas);
            reservas.AppendChild(item);

            XmlDataSource1.Save();
            XmlDataSource2.DataBind();

     
       

        Response.Redirect("~/");




        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
         
            date.Text = Calendar1.SelectedDate.ToShortDateString();
        }
    }
}