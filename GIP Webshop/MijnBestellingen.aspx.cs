using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GIP_Webshop
{
    public partial class MijnBestellingen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

                dgvHeeft.Visible = false;
        }

        protected void btnTerug_Click(object sender, EventArgs e)
        {
            Server.Transfer("EigenProfiel.aspx");
        }

        protected void dgvBestellingen_SelectedIndexChanged(object sender, EventArgs e)
        {
            dtsHeeft.FilterExpression = "BestellingsID =" + dgvBestellingen.SelectedRow.Cells[1].Text;
            dgvHeeft.DataBind();
            dgvHeeft.Visible = true;

            //double dblSom;
            //dblSom = dgvHeeft.SelectedRow.Cells[4].Text + 5;
            //Label1.Text = 
        }

        protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {

        }
    }
}