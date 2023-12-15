using System;
using System.Configuration;
using System.Data;
using System.Data.OracleClient;
using System.Web.Services;

namespace CIBILReport.Authorization
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Clear();
        }

        [Obsolete]
        [WebMethod]
        public static string Login(string username, string password)
        {

            if (username == "Admin" && password == ConfigurationManager.ConnectionStrings["Admin"].ConnectionString)
            {
                return "Success";
            }

            string DatabaseName = "ENCORE";
            string DatabaseUser = "ED10032021";
            string DatabasePassword = "ED10032021";
            string connectionString = "Data Source =" + DatabaseName + ";uid=" + DatabaseUser + ";pwd=" + DatabasePassword;

            OracleConnection Conn = new OracleConnection(connectionString);
            Conn.Open();

            OracleCommand cmd = new OracleCommand
            {
                Connection = Conn,
                CommandText = "pkg_cibil.PRC_VALIDATE_USER",
                CommandType = CommandType.StoredProcedure
            };

            cmd.Parameters.Add("P_VI_TCL_USER_ID", OracleType.VarChar).Value = username;
            cmd.Parameters.Add("P_VI_TCL_USER_PASSWORD", OracleType.VarChar).Value = password;
            cmd.Parameters.Add("P_CO", OracleType.Cursor, 512).Direction = ParameterDirection.Output;

            OracleDataAdapter adapter = new OracleDataAdapter(cmd);
            cmd.ExecuteNonQuery();
            Conn.Close();
            DataSet ds = new DataSet();
            adapter.Fill(ds);

            if (ds.Tables[0].Rows[0]["ERROR"].ToString() == string.Empty)
            {
                return "Success";
            }
            else
            {
                return ds.Tables[0].Rows[0]["ERROR"].ToString();
            }
        }

        [WebMethod]
        public static string GetData(string AccountNumber) 
        {
            var data = AccountNumber;
            return data;
        }
    }
}