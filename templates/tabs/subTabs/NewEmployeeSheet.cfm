<div id="employee_info">
	<form name='employeeDataForm' id='newEmployeeSheet'>

<h2>New Employee Information</h2> 
		<input type="text" name="first_name" size="50" placeholder="First Name"><br/>
		<input type="text" name="last_name" size="50" placeholder="Last Name"><br/>
			
		<input type="text" name="address_1" size="50" placeholder="Address"><br/>
		<input type="text" name="address_2" size="50" placeholder="Address Line Two"><br/>
		<input type="text" name="city" size="50" placeholder="City"><br/>

	<p>State:
		<select name="state">
			<option value="AL">AL</option>
			<option value="AK">AK</option>
			<option value="AZ">AZ</option>
			<option value="AR">AR</option>
			<option value="CA">CA</option>
			<option value="CO">CO</option>
			<option value="CT">CT</option>
			<option value="DE">DE</option>
			<option value="DC">DC</option>
			<option value="FL">FL</option>
			<option value="GA">GA</option>
			<option value="HI">HI</option>
			<option value="ID">ID</option>
			<option value="IL">IL</option>
			<option value="IN">IN</option>
			<option value="IA">IA</option>
			<option value="KS">KS</option>
			<option value="KY">KY</option>
			<option value="LA">LA</option>
			<option value="ME">ME</option>
			<option value="MD">MD</option>
			<option value="MA">MA</option>
			<option value="MI">MI</option>
			<option value="MN">MN</option>
			<option value="MS">MS</option>
			<option value="MO">MO</option>
			<option value="MT">MT</option>
			<option value="NE">NE</option>
			<option value="NV">NV</option>
			<option value="NH">NH</option>
			<option value="NJ">NJ</option>
			<option value="NM">NM</option>
			<option value="NY">NY</option>
			<option value="NC">NC</option>
			<option value="ND">ND</option>
			<option value="OH">OH</option>
			<option value="OK">OK</option>
			<option value="OR">OR</option>
			<option value="PA">PA</option>
			<option value="RI">RI</option>
			<option value="SC">SC</option>
			<option value="SD">SD</option>
			<option value="TN">TN</option>
			<option value="TX">TX</option>
			<option value="UT">UT</option>
			<option value="VT">VT</option>
			<option value="VA">VA</option>
			<option value="WA">WA</option>
			<option value="WV">WV</option>
			<option value="WI">WI</option>
			<option value="WY">WY</option>
		</select></p>



		<input type="text" name="zip" size="20" placeholder="Zip Code"><br/>

		<input type="text" name="social_security" size="20" placeholder="Social Security Number"><br/><br/>

		<input type="date" name="birthdate" width="50"> Date of Birth<br/><br/>

		<input type="text" name="home_phone" size="50" placeholder="Home Phone Number"><br/>

		<input type="text" name="driver_license" size="20" placeholder="Driver License Number">

		<input type="date" name="issue_date" width="49"> Issue Date<br/>

		<input type="date" name="expiration_date" width="50"> Expiration Date<br/>

		<input type="text" name="driver_license_state" size="50" placeholder="State"><br/>

		<input type="text" name="email" size="50" placeholder="Email Address"><br/><br><br/>

		<p>1. Have you paid the Local Service Tax for the city/township in which you are working? <br/>
		<input type="radio" name="local_service_tax1" value="yes">
				Yes 

			<input type="radio" name="local_service_tax2" value="yes">
				No <br/><br/>

		<i>If yes, please complete local service tax form and provide a pay voucher.</i></p><br/><br/>

		<p>2. I hereby request and direct Somerset Trust Company to deposit my pay to account:

			<input type="text" name="deposit_account_number" size="50" placeholder="Account Number"><br/>

			<input type="radio" name="deposit_account_type1" value="yes">
				Checking 

			<input type="radio" name="deposit_account_type2" value="yes">
				Savings <br/><br/></p>
		<p>3. Marital Status: 
			<select name="Marital Status">
			    <option value="">- Please select one -</option>
				<option value="marital1">Single
				<option value="marital2">Married
				<option value="marital3">Divorced
				<option value="marital4">Widowed
				<option value="marital5">Domestic Partner
			</select></p><br><br/>

		<p>4. I have reviewed the following sections of the STC Employee Handbook. I understand how to retrieve any current and future information and changes in policy on STCNet.<br></br>

		<div style="width: 100%; padding-left: 20px;">

			<div style="display: inline-block; float: left; margin-right: 35px;"
		<ul><b>
			<li>Community Reinvestment Act Statement</li>
			<li>Drug, Alcohol & Weapons Policy</li>
			<li>Privacy Practices</li>
			<li>Sexual and Other Unlawful Harassment</li>
			<li>Somerset Trust Company Internet Policy</li></b>
		</ul>
		</div>

		<div style="display: inline-block; float: left"
		<ul><b>
			<li>Code of Ethics</li>
			<li>Confidential Information Policy</li>
			<li>Employee Overdraft Policy</li>
			<li>Health Benefit Notice (Full-time Only)</li>
			<li>Workplace Violence Policy</li></b>
		</ul>
		</div>
		</div>
	<br></br><br></br><br></br><br></br><h2>For Bank Use</h2>
		<input type="text" name="branch" size="50" placeholder="Branch">
		<input type="text" name="dept" size="50" placeholder="Department">
		<input type="text" name="file_number" size="50" placeholder="File Number">
		<input type="text" name="company_email" size="50" placeholder="STC Email Address"><br/>
		<p>Employee Status: 
		<input type="radio" name="status1" value="yes">
				Active
			<input type="radio" name="status2" value="yes">
				Inactive <br/><br/></p>
		<p>Employee Type: 
			<select name="Employee Type">
			    <option value="">- Please select one -</option>
				<option value="type1">Exempt Non-Officer
				<option value="type2">Exempt Officer
				<option value="type3">Non-Exempt Hourly
				<option value="type4">Non-Exempt Officer Hourly
				<option value="type5">PT 950 Hires
				<option value="type6">PT 1300 Hires
			</select></p>
		<input type="date" name="hire_date" width="50"> Hire Date<br/>
		<input type="text" name="adjusted_seniority" size="50" placeholder="Adjusted Seniority"><br/>
		<input type="text" name="job_title" size="50" placeholder="Job Title"><br/>
		<p>Officer: 
		<input type="radio" name="officer1" value="yes">
				Yes
			<input type="radio" name="officer2" value="yes">
				No <br/><br/></p>
		<p>EEO Class: 
			<select name="EEO Class">
			    <option value="">- Please select one -</option>
				<option value="class1">1.1 = Exec/Sr. Officials & Mgrs.
				<option value="class2">1.2 = First/Mid-Level Officials & Mgrs.
				<option value="class3">2 = Professionals
				<option value="class4">3 = Technicians
				<option value="class5">5 = Admin Support
				<option value="class6">6 = Craft Workers
			</select></p>
		<input type="text" name="bank_salary" size="50" placeholder="Salary"><br/>
		<input type="text" name="bank_hourly" size="50" placeholder="Hourly"><br/>
		<input type="text" name="w4_exemptions" size="50" placeholder="W4 Exemptions"><br/>
		<input type="text" name="resident_psd_code" size="50" placeholder="Resident PSD Code"><br/>
		<p>Gender: 
		<input type="radio" name="gender1" value="yes">
				Male
			<input type="radio" name="gender2" value="yes">
				Female <br/><br/></p>
		<p>Ethnicity: 
			<select name="Ethnicity">
			    <option value="">- Please select one -</option>
				<option value="ethnicity1">Asian
				<option value="ethnicity2">Black
				<option value="ethnicity3">Hispanic
				<option value="ethnicity4">American Indian
				<option value="ethnicity5">White
			</select></p>
		<p>Veteran Status: 
			<select name="Veteran Status">
			    <option value="">- Please select one -</option>
				<option value="vet1">Special Disabled Veteran
				<option value="vet2">Veteran of the Vietnam Era
				<option value="vet3">Other Eligible Veterans
				<option value="vet4">N/A
			</select></p><br><br/>
		<p><b>Fringe:</b></p>
		<p>Cell Phone
		<input type="radio" name="fringe_cell_phone" value="yes">
				Yes
			<input type="radio" name="fringe_cell_phone" value="yes">
				No </p>
		<p>Travel Stipend
		<input type="radio" name="fringe_travel_stipend" value="yes">
				Yes
			<input type="radio" name="fringe_travel_stipend" value="yes">
				No </p>
		<p>Medical Co-Premium Deduction
		<input type="radio" name="fringe_medical_prem_deduction" value="yes">
				Yes
			<input type="radio" name="fringe_medical_prem_deduction" value="yes">
				No <br/><br/></p>
			</form>

</div>