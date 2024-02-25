using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Module1Exercise1
{
    public partial class Exercise4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None; // code for UnobtrusiveValidationMode error
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                if (string.IsNullOrEmpty(fullName.Text) || string.IsNullOrEmpty(age.Text) || string.IsNullOrEmpty(email.Text) || string.IsNullOrEmpty(confirmEmail.Text))
                {
                    result.Text = "Please fill up all the fields";
                }
                else
                {
                    result.Text = $"<br /><br />Full Name: {fullName.Text}<br />" +
                                  $"Age: {age.Text}<br />" +
                                  $"Email: {email.Text}<br />";
                }

            }
            else
            {
                result.Text = "Please fill up all the fields";
            }
        }
    }
}