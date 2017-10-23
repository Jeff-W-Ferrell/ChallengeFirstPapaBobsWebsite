using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ChallengeFirstPapaBobsWebsite
{
    public partial class PapaBobsPizzaAndSoftware : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
      
        }

        protected void purchaseButton_Click(object sender, EventArgs e)
        {
            //double grandTotal = (double)subtotalSize + (double)subtotalCrust + subtotalToppings;          

            int subtotalA = 0;
            int subtotalB = 0;
            double subtotalC = subtotalA + subtotalB;

            if (babyRadioButton.Checked)
                subtotalA = 10;
            else if (mamaRadioButton.Checked)
                subtotalA = 13;
            else if (papaRadioButton.Checked)
                subtotalA = 16;

            if (thinRadioButton.Checked)
                subtotalB = 0;
            else if (deepRadioButton.Checked)
                subtotalB = 2;

            subtotalC = (pepperoniCheckBox.Checked) ? subtotalC += 1.50 : subtotalC;
            subtotalC = (onionCheckBox.Checked) ? subtotalC += .75 : subtotalC;
            subtotalC = (greenPeppersCheckBox.Checked) ? subtotalC += .50 : subtotalC;
            subtotalC = (redPeppersCheckBox.Checked) ? subtotalC += .75 : subtotalC;
            subtotalC = (anchoviesCheckBox.Checked) ? subtotalC += 2.00 : subtotalC;

            double grandTotal = subtotalA + subtotalB + subtotalC;

            if ((pepperoniCheckBox.Checked && greenPeppersCheckBox.Checked && anchoviesCheckBox.Checked)
              || (pepperoniCheckBox.Checked && redPeppersCheckBox.Checked && onionCheckBox.Checked))
                grandTotal -= 2.00;

            totalLabel.Text = "Total: $" + grandTotal.ToString();

            if (!babyRadioButton.Checked && !mamaRadioButton.Checked && !papaRadioButton.Checked)
                totalLabel.Text = "Please make sure you have selected a pizza size.";

            if (!thinRadioButton.Checked && !deepRadioButton.Checked)
                totalLabel.Text = "Please make sure you have selected a crust type.";

            if (!babyRadioButton.Checked && !mamaRadioButton.Checked && !papaRadioButton.Checked
                && !thinRadioButton.Checked && !deepRadioButton.Checked)
                totalLabel.Text = "Please make sure you have selected a pizza size and crust type.";

        }
    }
}