using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


namespace TraineeDatabaseTask
{
    public class ADIOLayer
    {
        DataSet ds = new DataSet();

        string constr = "";
        public ADIOLayer()
        {
            constr = ConfigurationManager.ConnectionStrings["myclass"].ConnectionString;

        }
        public void Insertrow(int id, string name, string location, string tech, DateTime date)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(constr))
                {
                    con.Open();

                    SqlCommand cmd = new SqlCommand();

                    cmd.Parameters.AddWithValue("@TId", id);
                    cmd.Parameters.AddWithValue("@Tname", name);
                    cmd.Parameters.AddWithValue("@Location", location);
                    cmd.Parameters.AddWithValue("@TechDomain", tech);
                    cmd.Parameters.AddWithValue("@StartDate", date.ToString());
                    cmd.CommandText = "Insert";
                    cmd.Connection = con;
                    cmd.CommandType = CommandType.StoredProcedure;
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    sda.Fill(ds);
                    sda.Update(ds);

                }

            }
            catch (Exception e)
            {

            }

        }
        public DataSet GetaStudent(int id)
        {
            DataSet ds = new DataSet();
            try
            {
                using (SqlConnection con = new SqlConnection(constr))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand();
                    cmd.Parameters.AddWithValue("@TId", id);
                    cmd.CommandText = "PrGetTrainee";
                    cmd.Connection = con;
                    cmd.CommandType = CommandType.StoredProcedure;
                    SqlDataAdapter ada = new SqlDataAdapter(cmd);
                    ada.Fill(ds);
                    ada.Update(ds);
                }
            }
            catch (Exception e)
            {

            }
            return ds;

        }
        public DataSet GetData()
        {
            DataSet ds = new DataSet();
            try
            {
                using (SqlConnection con = new SqlConnection(constr))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = "display";
                    cmd.Connection = con;
                    cmd.CommandType = CommandType.StoredProcedure;
                    SqlDataAdapter ada = new SqlDataAdapter(cmd);
                    ada.Fill(ds);
                    ada.Update(ds);
                }
            }
            catch (Exception e)
            {

            }
            return ds;

        }

        public DataSet Update(int id, string domain)
        {

            try
            {
                using (SqlConnection con = new SqlConnection(constr))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand();
                    cmd.Parameters.AddWithValue("@TId", id);
                    cmd.Parameters.AddWithValue("@TechDomain", domain);
                    cmd.CommandText = "UpdateDomain";
                    cmd.Connection = con;
                    cmd.CommandType = CommandType.StoredProcedure;
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    sda.Fill(ds);
                    sda.Update(ds);

                }
            }
            catch (Exception e)
            {

            }
            return ds;
        }

    }
}


