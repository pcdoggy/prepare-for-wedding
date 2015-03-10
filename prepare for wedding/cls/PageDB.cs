using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using prepare_for_wedding.cls;
using System.Data.SqlClient;

namespace prepare_for_wedding.cls
{
    public class PageDB:PageBase
    {
        //数据库 connection
        private string CnStrWedding = System.Configuration.ConfigurationManager.ConnectionStrings["prepare_for_weddingConnectionString2"].ConnectionString;
        private SqlConnection _cnwedding = null;
        private prepare_for_weddingDataContext _dcwedding = null;

        //数据库 connection 对象
        public SqlConnection cnwedding
        {
            get { if (_cnwedding == null) { _cnwedding = new SqlConnection(CnStrWedding); _cnwedding.Open(); }; return _cnwedding; }
        }
        public prepare_for_weddingDataContext dcwedding
        {
            get { if (_dcwedding == null) { _dcwedding = new prepare_for_weddingDataContext(); }; return _dcwedding; }
        }

        //关闭数据库
        private void cnclose()
        {
            if (_dcwedding != null) { _dcwedding.Connection.Close(); _dcwedding = null; }
            if (_cnwedding != null) { _cnwedding.Close(); _cnwedding = null; }
        }

        protected override void OnUnload(EventArgs e)
        {
            cnclose();
            base.OnUnload(e);
        }

        protected override void OnLoadComplete(System.EventArgs e)
        {
            NoBuf();
            base.OnLoadComplete(e);
        }
    }
}