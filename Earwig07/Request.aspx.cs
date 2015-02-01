using System;

/// <summary>
/// Code-behind file for the Request page
/// </summary>
/// <author>
/// Kathryn Browning
/// </author>
/// <version>
/// JFebruary 1, 2015
/// </version>
public partial class Request : System.Web.UI.Page
{
    /// <summary>
    /// Handles the Load event of the Page control.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="EventArgs"/> instance containing the event data.</param>
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
            return;

        this.txtArrivalDate.Text = DateTime.Today.ToShortDateString();
        this.rdoKing.Checked = true;    
    }

    /// <summary>
    /// Handles the Click event of the btnSubmit control.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="EventArgs"/> instance containing the event data.</param>
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        this.lblMessage.Text = "Thank you for your request.<br />" +
                          "We will get back to you within 24 hours.";
    }

    /// <summary>
    /// Handles the Click event of the btnClear control.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="EventArgs"/> instance containing the event data.</param>
    protected void btnClear_Click(object sender, EventArgs e)
    {
        this.txtArrivalDate.Text = DateTime.Today.ToShortDateString();
        this.txtDepartureDate.Text = "";
        this.ddlNoOfPeople.SelectedIndex = -1;
        this.rdoKing.Checked = true;
        this.rdoDouble.Checked = false;
        this.rdoSingle.Checked = false;
        this.txtSpecialRequests.Text = "";
        this.txtFirstName.Text = "";
        this.txtLastName.Text = "";
        this.txtEmail.Text = "";
        this.txtPhone.Text = "";
        this.ddlPreferredMethod.SelectedIndex = 0;
        this.lblMessage.Text = "";
    }
}