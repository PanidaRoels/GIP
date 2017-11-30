using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Configuration;

namespace GIP_Webshop
{
    public partial class Test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string strConnectie = ConfigurationManager.ConnectionStrings["gip"].ConnectionString;

            OleDbConnection cnn = new OleDbConnection(strConnectie);

            cnn.Open();

            cnn.Close();
        }
    }
}