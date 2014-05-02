<div id="employee_info">
	<form name='employeeDataForm' id='newEmployeeSheet'>

<h2>New Employee Information</h2> 
		<input type="text" name="employee.first_name" size="50" placeholder="First Name"><br/>
		<input type="text" name="employee.last_name" size="50" placeholder="Last Name"><br/>
			
		<input type="text" name="employee.address_1" size="50" placeholder="Address Line 1"><br/>
		<input type="text" name="employee.address_2" size="50" placeholder="Address Line 2"><br/>
		<input type="text" name="employee.city" size="50" placeholder="City"><br/>

	<p>State:
		<select name="employee.state">
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



		<input type="text" name="employee.zip" size="20" placeholder="Zip Code"><br/>

		<input type="text" name="employee.social_security" size="20" placeholder="Social Security Number"><br/>

		<input type="date" name="employee.birthdate" width="50"> Date of Birth<br/>		

		<input type="text" name="employee.home_phone" size="20" placeholder="Home Phone Number"><br/>

		<input type="text" name="employee.driver_license" size="20" placeholder="Driver License Number"><br/>

		<input type="date" name="employee.issue_date" width="50"> Issue Date<br/>
		
		<input type="date" name="employee.expiration_date" width="50"> Expiration Date<br/>


		<p>Driver License State:
		<select name="employee.driver_license_state">
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

		<input type="text" name="employee.email" size="50" placeholder="Email Address"><br/><br><br/>

		<p>1. Have you paid the Local Service Tax for the city/township in which you are working? <br/>
		<input type="radio" name="employee.local_tax" value="1">
				Yes 

			<input type="radio" name="employee.local_tax" value="0">
				No <br/><br/>

		<i>If yes, please complete local service tax form and provide a pay voucher.</i></p><br/><br/>

		<p>2. I hereby request and direct Somerset Trust Company to deposit my pay to account:

			<input type="text" name="employee.deposit_account_number" size="50" placeholder="Account Number"><br/>

			<input type="radio" name="employee.deposit_account" value="checking">
				Checking 

			<input type="radio" name="employee.deposit_account" value="savings">
				Savings <br/><br/></p>
		<p>3. Marital Status: 
			<select name="employee.marital_status">
			    <option value="">- Please select one -</option>
				<option value="single">Single
				<option value="married">Married
				<option value="divorced">Divorced
				<option value="widowed">Widowed
				<option value="domestic_partner">Domestic Partner
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
		<input type="text" name="employee.branch" size="50" placeholder="Branch">
		<input type="text" name="employee.dept" size="50" placeholder="Department">
		<input type="text" name="employee.file_number" size="50" placeholder="File Number">
		<input type="text" name="employee.company_email" size="50" placeholder="STC Email Address"><br/>
		<p>Employee Status: 
		<input type="radio" name="employee.status" value="active">
				Active
			<input type="radio" name="employee.status" value="inactive">
				Inactive <br/><br/></p>
		<p>Employee Type: 
			<select name="employee.employee_type">
			    <option value="">- Please select one -</option>
				<option value="exempt_Nonofficer">Exempt Non-Officer
				<option value="exempt_Officer">Exempt Officer
				<option value="nonexempt_Hourly">Non-Exempt Hourly
				<option value="nonexempt_Officer_Hourly">Non-Exempt Officer Hourly
				<option value="pt_950_hires">PT 950 Hires
				<option value="pt_1300_hires">PT 1300 Hires
			</select></p>
		<input type="date" name="employee.hire_date" width="50"> Hire Date<br/>
		<input type="date" name="employee.adjusted_seniority" width="50"> Adjusted Seniority<br/>
		<input type="text" name="employee.job_title" size="50" placeholder="Job Title"><br/>
		<p>Officer: 
		<input type="radio" name="employee.officer" value="1">
				Yes
			<input type="radio" name="employee.officer" value="0">
				No <br/><br/></p>
		<p>EEO Class: 
			<select name="employee.eeo_class">
			    <option value="">- Please select one -</option>
				<option value="1.1">1.1 = Exec/Sr. Officials & Mgrs.
				<option value="1.2">1.2 = First/Mid-Level Officials & Mgrs.
				<option value="2">2 = Professionals
				<option value="3">3 = Technicians
				<option value="5">5 = Admin Support
				<option value="6">6 = Craft Workers
			</select></p>
		<input type="text" name="employee.bank_salary" size="50" placeholder="Salary"><br/>
		<input type="text" name="employee.bank_hourly" size="50" placeholder="Hourly"><br/>
		<input type="text" name="employee.w4_exemptions" size="50" placeholder="W4 Exemptions"><br/>
		<input type="text" name="employee.resident_psd_code" size="50" placeholder="Resident PSD Code"><br/>
		<p>Gender: 
		<input type="radio" name="employee.gender" value="male">
				Male
			<input type="radio" name="employee.gender" value="female">
				Female <br/><br/></p>
		<p>Ethnicity: 
			<select name="employee.ethnicity">
			    <option value="">- Please select one -</option>
				<option value="asian">Asian
				<option value="black">Black
				<option value="hispanic">Hispanic
				<option value="american_indian">American Indian
				<option value="white">White
			</select></p>
		<p>Veteran Status: 
			<select name="employee.veteran_status">
			    <option value="">- Please select one -</option>
				<option value="special_disabled">Special Disabled Veteran</option>
				<option value="vietnam_veteran">Veteran of the Vietnam Era</option>
				<option value="other_eligible">Other Eligible Veterans</option>
				<option value="na">N/A</option>
			</select></p><br><br/>
		<p><b>Fringe:</b></p>
		<p>Cell Phone
		<input type="radio" name="employee.fringe_cell_phone" value="1">
				Yes
			<input type="radio" name="employee.fringe_cell_phone" value="0">
				No </p>
		<p>Travel Stipend
		<input type="radio" name="employee.fringe_travel_stipend" value="1">
				Yes
			<input type="radio" name="employeefringe_travel_stipend" value="0">
				No </p>
		<p>Medical Co-Premium Deduction
		<input type="radio" name="employee.fringe_medical_prem_deduction" value="1">
				Yes
			<input type="radio" name="employee.fringe_medical_prem_deduction" value="0">
				No <br/><br/></p>

		<br/><div id="message"></div>
			<input type="submit" value="Submit">
	</form>

</div>