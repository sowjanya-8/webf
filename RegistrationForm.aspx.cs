
using System;
using System.Data.SqlClient;
using System.Web.UI;

public partial class Register : Page
{
    protected void Page_Load(object sender, EventArgs e) { }

    protected void SubmitForm(object sender, EventArgs e)
    {
        string memberNumber = memberNumber.Text;
        string prefix = prefix.Text;
        string firstName = firstName.Text;
        string middleInitial = middleInitial.Text;
        string lastName = lastName.Text;
        string address1 = address1.Text;
        string address2 = address2.Text;
        string city = city.Text;
        string state = state.Text;
        string postalCode = postalCode.Text;
        string country = country.Text;
        string dayPhone = dayPhone.Text;
        string cellPhone = cellPhone.Text;
        string email = email.Text;
        string institution = institution.Text;
        string membershipCode = membershipCode.Text;
        string registrationFee = registrationFee.Text;
        string ceSessionsFee = ceSessionsFee.Text;
        string institutionalCode = institutionalCode.Text;
        bool firstConvention = firstConvention.Checked;
        bool programsRequest = programsRequest.Checked;
        string disability = disability.Text;
        bool earlyCareer = earlyCareer.Checked;
        string spouse1Name = spouse1Name.Text;
        string spouse1Amount = spouse1Amount.Text;
        string totalFees = totalFees.Text;
        string cardType = cardType.SelectedValue;
        string cardNumber = cardNumber.Text;
        string cardExpiry = cardExpiry.Text;
        string cardHolderName = cardHolderName.Text;

        // Additional fields

        string connectionString = "YourDatabaseConnectionStringHere";
        using (SqlConnection conn = new SqlConnection(connectionString))
        {
            string query = "INSERT INTO Registrations (MemberNumber, Prefix, FirstName, MiddleInitial, LastName, Address1, Address2, City, State, PostalCode, Country, DayPhone, CellPhone, Email, Institution, MembershipCode, RegistrationFee, CESessionsFee, InstitutionalCode, FirstConvention, ProgramsRequest, Disability, EarlyCareer, Spouse1Name, Spouse1Amount, TotalFees, CardType, CardNumber, CardExpiry, CardHolderName) VALUES (@MemberNumber, @Prefix, @FirstName, @MiddleInitial, @LastName, @Address1, @Address2, @City, @State, @PostalCode, @Country, @DayPhone, @CellPhone, @Email, @Institution, @MembershipCode, @RegistrationFee, @CESessionsFee, @InstitutionalCode, @FirstConvention, @ProgramsRequest, @Disability, @EarlyCareer, @Spouse1Name, @Spouse1Amount, @TotalFees, @CardType, @CardNumber, @CardExpiry, @CardHolderName)";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@MemberNumber", memberNumber);
            cmd.Parameters.AddWithValue("@Prefix", prefix);
            cmd.Parameters.AddWithValue("@FirstName", firstName);
            cmd.Parameters.AddWithValue("@MiddleInitial", middleInitial);
            cmd.Parameters.AddWithValue("@LastName", lastName);
            cmd.Parameters.AddWithValue("@Address1", address1);
            cmd.Parameters.AddWithValue("@Address2", address2);
            cmd.Parameters.AddWithValue("@City", city);
            cmd.Parameters.AddWithValue("@State", state);
            cmd.Parameters.AddWithValue("@PostalCode", postalCode);
            cmd.Parameters.AddWithValue("@Country", country);
            cmd.Parameters.AddWithValue("@DayPhone", dayPhone);
            cmd.Parameters.AddWithValue("@CellPhone", cellPhone);
            cmd.Parameters.AddWithValue("@Email", email);
            cmd.Parameters.AddWithValue("@Institution", institution);
            cmd.Parameters.AddWithValue("@MembershipCode", membershipCode);
            cmd.Parameters.AddWithValue("@RegistrationFee", registrationFee);
            cmd.Parameters.AddWithValue("@CESessionsFee", ceSessionsFee);
            cmd.Parameters.AddWithValue("@InstitutionalCode", institutionalCode);
            cmd.Parameters.AddWithValue("@FirstConvention", firstConvention);
            cmd.Parameters.AddWithValue("@ProgramsRequest", programsRequest);
            cmd.Parameters.AddWithValue("@Disability", disability);
            cmd.Parameters.AddWithValue("@EarlyCareer", earlyCareer);
            cmd.Parameters.AddWithValue("@Spouse1Name", spouse1Name);
            cmd.Parameters.AddWithValue("@Spouse1Amount", spouse1Amount);
            cmd.Parameters.AddWithValue("@TotalFees", totalFees);
            cmd.Parameters.AddWithValue("@CardType", cardType);
            cmd.Parameters.AddWithValue("@CardNumber", cardNumber);
            cmd.Parameters.AddWithValue("@CardExpiry", cardExpiry);
            cmd.Parameters.AddWithValue("@CardHolderName", cardHolderName);
            // Additional parameters

            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
        }
    }
}
