using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Models;
using System.Data.SqlClient;
using System.Data;

namespace DataAccessLayer
{
    class GetPhoneBook
    {
        public List<PhoneBook> GetDetails()
        {
            string phonebookCOnnectionstring="";
            List<PhoneBook> contactList = new List<PhoneBook>();
            SqlConnection getConnection = new SqlConnection(phonebookCOnnectionstring);
            SqlCommand getCommand = new SqlCommand("spGetNameAndNumber", getConnection);
            getCommand.CommandType = CommandType.StoredProcedure;
            getCommand.Parameters.AddWithValue("@ID", 1);
            SqlDataReader getReader = getCommand.ExecuteReader();
            while(getReader.Read())
            {
                PhoneBook oneContact = new PhoneBook();
                oneContact.fullName = getReader[0].ToString();
                oneContact.phoneNumber = getReader[1].ToString();
                contactList.Add(oneContact);
            }
            return contactList;
        }
    }
}
