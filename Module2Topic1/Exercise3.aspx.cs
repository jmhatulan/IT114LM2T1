using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Module1Exercise1
{
    public partial class Exercise3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // TODO 3.3 Set the text value of the finalGrade label to "Submit your grade percentage to see your final grade!". Watch out for post backs
            finalGrade.Text = "Submit your grade percentage to see your final grade!";
        }

        protected void CalculateGrade(object sender, EventArgs e)
        {
            try
            {
                double grade = Math.Round(Convert.ToDouble(percentageGrade.Text),2);
            
                if (grade > 100 || grade < 0)
                {
                    throw new Exception();
                }
                else if (grade >= 96.00)
                {
                    finalGrade.Text = "1.0";
                    Response.Write($"<script>alert('Congulatulations on obtaining a GWA of 1.0 ({grade})')</script>");
                }
                else if (grade >= 91.51)
                {
                    finalGrade.Text = "1.25";
                }
                else if (grade >= 87.01)
                {
                    finalGrade.Text = "1.5";
                }
                else if (grade >= 82.51)
                {
                    finalGrade.Text = "1.75";
                }
                else if (grade >= 78.01)
                {
                    finalGrade.Text = "2.0";
                }
                else if (grade >= 73.51)
                {
                    finalGrade.Text = "2.25";
                }
                else if (grade >= 69.01)
                {
                    finalGrade.Text = "2.5";
                }
                else if (grade >= 64.51)
                {
                    finalGrade.Text = "2.75";
                }
                else if (grade >= 60.00)
                {
                    finalGrade.Text = "3.0";
                }
                else
                {
                    finalGrade.Text = "5.0";
                }
            }
            catch {
                Response.Write($"<script>alert('Please input a valid grade percentage.')</script>");
            }
        }
    }
}