using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Configuration;

namespace DataAccessLayer
{
    public class People
    {
        string loginConnectionString ;
        public People(string ConnectionString)
        {
            loginConnectionString = ConnectionString;
        }
        public int VerifyUser(string userName, string password)
        {
            if (userName != null && password != null)
            {
                using (SqlConnection loginConnection = new SqlConnection(loginConnectionString))
                {
                    SqlCommand loginCommand = new SqlCommand("SELECT userID FROM tblUser  WHERE userName=@username AND password=@password", loginConnection);
                    loginCommand.CommandType = System.Data.CommandType.Text;
                    loginCommand.Parameters.AddWithValue("@username", userName);
                    loginCommand.Parameters.AddWithValue("@password", password);
                    loginConnection.Open();
                    SqlDataReader LogedInUserID = loginCommand.ExecuteReader();
                    if (LogedInUserID.Read())
                        return LogedInUserID.GetInt32(0);
                }
            }
            return -1;
        }
    }
}
