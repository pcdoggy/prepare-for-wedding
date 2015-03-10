using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using prepare_for_wedding.cls;

namespace prepare_for_wedding.main
{
    public partial class wish : PageUser
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmitWish_Click(object sender, EventArgs e)
        {
            tb祝福 newwish = new tb祝福();
            newwish.祝福人 = txtName.Text;//此处的祝福人是送祝福的人自己填写，后期改为登录后直接获取用户名
            newwish.祝福内容 = txtLeaveAMessage.Text;
            newwish.createtime = DateTime.Now;
            newwish.婚礼iid = 1;//后期婚礼多时再修改
            dcwedding.tb祝福.InsertOnSubmit(newwish);
            dcwedding.SubmitChanges();
        }
    }
}