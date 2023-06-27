using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Tutor_Managment_System
{
    public partial class Student_Signup : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                BindCountryDDL();
            }
        }

        //for country dropdownlist fetch from database
        void BindCountryDDL()
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "Select * from Country";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            DataTable data = new DataTable();
            sda.Fill(data);
            CountryDropDownList.DataSource = data;
            CountryDropDownList.DataTextField = "country_name";
            CountryDropDownList.DataValueField = "country_id";
            CountryDropDownList.DataBind();

            ListItem selectItem = new ListItem("Select Country", "Select Country");
            selectItem.Selected = true;
            CountryDropDownList.Items.Insert(0,selectItem);
        }

        //for City dropdownlist fetch from database
        void BindCityDDL(int country_id)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "Select * from city where c_id = @country_id";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            sda.SelectCommand.Parameters.AddWithValue("@country_id", country_id);
            DataTable data = new DataTable();
            sda.Fill(data);
            CityDropDownList.DataSource = data;
            CityDropDownList.DataTextField = "city_name";
            CityDropDownList.DataValueField = "city_id";
            CityDropDownList.DataBind();

            ListItem selectItem = new ListItem("Select city", "Select city");
            selectItem.Selected = true;
            CityDropDownList.Items.Insert(0, selectItem);
        }



        void ResetControl()
        {
            NameTextBox.Text = "";
            FathernameTextBox.Text = "";
            SurnameTextBox.Text = "";
            GenderDropDownList.ClearSelection();
            AgeTextBox.Text = "";
            CountryDropDownList.ClearSelection();
            CityDropDownList.ClearSelection();
            AddressTextBox.Text = "";
            ClassTextBox.Text = "";
            GoingToDropDownList.ClearSelection();
            SubjectTextBox.Text = "";
            ContactTextBox.Text = "";
            TutionTypeDropDownList.ClearSelection();
            TutorPreferDropDownList.ClearSelection();
            UsernameTextBox.Text = "";
            PasswordTextBox.Text = "";
            ConfirmPasswordTextBox.Text = "";
        }

        protected void StudentSignButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);

            try
            {
                string query = "insert into student_signup values(@name, @fname, @surnname, @gender, @age, @country, @city, @address, @standard, @goingto, @subject, @contactno, @tutiontype, @tutorprefer, @username, @password)";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@name", NameTextBox.Text);
                cmd.Parameters.AddWithValue("@fname", FathernameTextBox.Text);
                cmd.Parameters.AddWithValue("@surnname", SurnameTextBox.Text);
                cmd.Parameters.AddWithValue("@gender", GenderDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@age", Convert.ToInt32(AgeTextBox.Text));
                cmd.Parameters.AddWithValue("@country", CountryDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@city", CityDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@address", AddressTextBox.Text);
                cmd.Parameters.AddWithValue("@standard", ClassTextBox.Text);
                cmd.Parameters.AddWithValue("@goingto", GoingToDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@subject", SubjectTextBox.Text);
                cmd.Parameters.AddWithValue("@contactno", ContactTextBox.Text);
                cmd.Parameters.AddWithValue("@tutiontype", TutionTypeDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@tutorprefer", TutorPreferDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@username", UsernameTextBox.Text);
                cmd.Parameters.AddWithValue("@password", PasswordTextBox.Text);
                con.Open();

                int a = cmd.ExecuteNonQuery();

                if (a > 0)
                {
                    //Response.Write("<script>alert('You have Register successfully')</script>");
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Success','You have Register successfully','Success')", true);
                    ResetControl();
                }
                else
                {
                    //Response.Write("<script>alert('Resgistration Failed..Try Another Username')</script>");
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Failure','Resgistration Failed..Try Another Username','error')", true);
                }
            }
            catch(SqlException ex)
            {
                if(ex.Message.Contains("UNIQUE KEY constraint"))
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Failure','Resgistration Failed.."+UsernameTextBox.Text+" already Exist.','error')", true);
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Failure','Resgistration Failed..','error')", true);
                }
            }
            finally
            {
                con.Close();
            }

           

        }

        protected void CountryDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            int country_id = Convert.ToInt32(CountryDropDownList.SelectedValue);
            BindCityDDL(country_id);
        }
    }
}