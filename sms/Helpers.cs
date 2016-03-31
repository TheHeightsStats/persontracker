using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;

public class Helpers
{

 public bool UserExsist(string username, string password)
 {
    try 
      {
        SqlConnection con = new SqlConnection();
        var connectionString = "";
        con.Open();
        var query = (Select * from Users where UserName = " + username " and UserPass = " + password);
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable usersDt = new DataTable();
        usersDt.Fill(da);
        con.Close();
        da.Dispose();
        if (usersDt.Rows.Count == 0) 
        {
        return false;
        }
        else 
        {
        return true
        }
       }
       catch (Exception ex)
       {
       return false;
       }
    
 }
  
    public string UserType(string username, string password)
    {
    try 
      {
        SqlConnection con = new SqlConnection();
        var connectionString = "";
        con.Open();
        var query = (Select * from Users where UserName = " + username " and UserPass = " + password);
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable usersDt = new DataTable();
        usersDt.Fill(da);
        con.Close();
        da.Dispose();
        if (usersDt.Rows.Count == 0) 
        {
        return "";
        }
        else 
        {
        return usersDt.Rows[0]["UserType"].ToString();
        }
       }
        catch (Exception ex)
        {
        return "";
        }
        }
    }
}