using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using prepare_for_wedding.cls;

namespace prepare_for_wedding.main
{
    public partial class guest :PageUser    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddNewGuestSubmmit_Click(object sender, EventArgs e)
        {
            tb捧场人员信息 newguest = new tb捧场人员信息();
            newguest.createtime = DateTime.Now;
            newguest.电话 = txtTel.Text;
            newguest.附言 = txtPostscript.Text;
            newguest.婚礼iid = 1;
            newguest.姓名 = txtName.Text;
            newguest.邮箱 = txtEmail.Text;
            dcwedding.tb捧场人员信息.InsertOnSubmit(newguest);
            dcwedding.SubmitChanges();
        }
    }
}