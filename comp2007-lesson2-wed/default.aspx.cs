﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace comp2007_lesson2_wed
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if the form wasn't submitted
            if (!IsPostBack)
            {
                lblMessage.Text = "";
            }
        }

        protected void btnCopyText_Click(object sender, EventArgs e)
        {
            //copy the textbox text to the label
            lblMessage.Text = txtMessage.Text;
            btnCopyText.Enabled = false;
        }

        protected void btnShowSelections_Click(object sender, EventArgs e)
        {
            //clear out the previous label text first
            lblToppings.Text = "";

            //loop through the list of checkboxes
            foreach (ListItem topping in cblToppings.Items) {
                //check if the current topping is checked or not
                if (topping.Selected)
                {
                    lblToppings.Text += topping.Text + " ";
                }
            }

            //display the selected size
            lblSize.Text = ddlSize.SelectedItem.Text;
        }

        protected void cblToppings_SelectedIndexChanged(object sender, EventArgs e)
        {
            //lblToppings.Text = "Autopostback";
        }


    }
}