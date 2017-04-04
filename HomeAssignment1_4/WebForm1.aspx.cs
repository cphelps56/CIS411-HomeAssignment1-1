using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HomeAssignment1_4
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            if(!IsPostBack)
            {
                bookDropDownList.Items.Add("Introduction to MIS");
                bookDropDownList.Items.Add("Introduction to Marketing");
                bookDropDownList.Items.Add("Introduction to Finance");
            }
        }

        protected void purchaseButton_Click(object sender, EventArgs e)
        {
            string message;
            int number;

            if (int.TryParse(quantityTxtBox.Text, out number))
            {
                message = "You have selected " + number.ToString() + " of the book " + bookDropDownList.SelectedItem +
                    ". The price is " + (number * bookPrice(bookDropDownList.SelectedValue)).ToString("c");

                selectionLabel.Text = message;
            }
            else
            {
                message = "Please enter a valid integer in the text box.";
                selectionLabel.Text = message;
            }
            
        }

        public double bookPrice(string book)
        {
            if (book == "Introduction to MIS")
            {
                return 20.0;
            }
            else if (book == "Introduction to Marketing")
            {
                return 30.0;
            }
            else
            {
                return 40.0;
            }
        }
    }
}