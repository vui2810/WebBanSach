using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebBanSach
{
    public partial class AddToCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["masach"]);
            if (Session["gio"] == null)
            {
                Session["gio"] = 0;
            }
            
            int gio = (int)Session["gio"];
            gio = id;

            Response.Write("alert('Đã thêm sản phẩm vào giỏ')");

        }
    }
}