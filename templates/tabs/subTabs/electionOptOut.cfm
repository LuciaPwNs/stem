<div id="employee_info">
	<form name='employeeDataForm' id='electionOptOut'>

		<center><b>Somerset Trust Company Health and Welfare Benefits Plan Election Form</b></center>
		<b>1. Personal Data</b> (Required whether or not you are a participant)<br/>
		
			<input type="text" name="employee.first_name" size="25" placeholder="First Name">
			<input type="text" name="employee.last_name" size="25" placeholder="Last Name"><br/>
		
			<input type="text" name="employee.address_1" size="59" placeholder="Address Line 1"><br/>
			<input type="text" name="employee.address_2" size="59" placeholder="Address Line 2"><br/>

			<input type="text" name="employee.city" size="34" placeholder="City">

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


			<input type="text" name="employee.zip" size="5" placeholder="Zip Code"><br/>

			<input type="text" name="employee.social_security" size="9" placeholder="Social Security Number"><br/><br/>

			<input type="date" name="birthdate" width="50"> Date of Birth<br/>

			<input type="date" name="hire_date" width="50"> Date of Hire<br/>

		<script type="text/javascript">
			<!---$(document).ready(function(){	
				$("input.healthplan_type[type='radio']").change(function(){
					$(this).prev().prop("checked", true);
					console.log("this", $(this).prev());
				})
			})--->	
		</script>

		<b>2. Medical / Vision / Dental Insurance</b><br/>

			<input type="radio" name="fullCoverage" value="yes">
				I hearby elect the following medical/vision/dental coverage under the plan and hereby agree to pay for the coverage in the specified for each pay period, through payroll deduction.<br/>
			<input type="radio" name="health_plan" value="epo" class="healthplan_type"> EPO
			<input type="radio" name="health_plan" value="ppo" class="healthplan_type"> PPO<br/><br/>
			<input type="radio" name="fullCoverage" value="optOut">
				I hereby elect to <b>OPT OUT</b> for the medical, vision, and dental coverage.<br/><br/>
			<table class="table">
				<tr>
					<th>EPO <i>In Net work $500/$1000 with Vision & Dental</i></th>
					<th><b><u>Per Pay</u></b></th>
				</tr>
				<tr>
					<td><b>Employee Only</b></td>
					<td>$27.00</td>
				</tr>
				<tr>
					<td><b>Employee & Children</b></td>
					<td>$65.00</td>
				</tr>
				<tr>
					<td><b>Employee & Spouse</b></td>
					<td>$72.00</td>
				</tr>
				<tr>
					<td><b>Employee & Family</b></td>
					<td>$82.00</td>
				</tr>
			</table></br>

			<table class="table">
				<tr>
					<th>PPO <i>In Net work $500/$1000 with Vision & Dental</i></th>
					<th><b><u>Per Pay</u></b></th>
				</tr>
				<tr>
					<td><b>Employee Only</b></td>
					<td>$29.00</td>
				</tr>
				<tr>
					<td><b>Employee & Children</b></td>
					<td>$70.00</td>
				</tr>
				<tr>
					<td><b>Employee & Spouse</b></td>
					<td>$78.00</td>
				</tr>
				<tr>
					<td><b>Employee & Family</b></td>
					<td>$88.00</td>
				</tr>
			</table></br>

		<b>3. Medical/Vision Insurance Only (No Dental)</b><br/>

			<input type="radio" name="noDental" value="yes">
				I hereby elect the following medical/vision coverage under the plan and hereby agree to pay for the coverage in the amount specified for each pay period, through payroll deduction.<br/>
			<input type="radio" name="health_plan" value="yes"> EPO
			<input type="radio" name="health_plan" value="yes"> PPO<br/><br/>
			<input type="radio" name="noDental" value="no">
				I hereby elect to <b>OPT OUT</b> for the medical and vision coverage.<br/><br/>

			<table class="table">
				<tr>
					<th>EPO <i>In Net work $500/$1000 with Vision & Dental</i></th>
					<th><b><u>Per Pay</u></b></th>
				</tr>
				<tr>
					<td><b>Employee Only</b></td>
					<td>$25.00</td>
				</tr>
				<tr>
					<td><b>Employee & Children</b></td>
					<td>$60.00</td>
				</tr>
				<tr>
					<td><b>Employee & Spouse</b></td>
					<td>$67.00</td>
				</tr>
				<tr>
					<td><b>Employee & Family</b></td>
					<td>$77.00</td>
				</tr>
			</table></br>

			<table class="table">
				<tr>
					<th>PPO <i>In Net work $500/$1000 with Vision & Dental</i></th>
					<th><b><u>Per Pay</u></b></th>
				</tr>
				<tr>
					<td><b>Employee Only</b></td>
					<td>$27.00</td>
				</tr>
				<tr>
					<td><b>Employee & Children</b></td>
					<td>$65.00</td>
				</tr>
				<tr>
					<td><b>Employee & Spouse</b></td>
					<td>$73.00</td>
				</tr>
				<tr>
					<td><b>Employee & Family</b></td>
					<td>$83.00</td>
				</tr>
			</table></br>

		<b>4. Dental Insurance (No Medical or Vision)</b><br/>

			<input type="radio" name="onlyDental" value="yes">
				I hereby elect the following dental coverage under the plan and hereby agree to pay for the coverage in the amount specified for each pay period through payroll deduction.<br/>
			<input type="radio" name="health_plan" value="yes"> EPO
			<input type="radio" name="health_plan" value="yes"> PPO<br/><br/>
			<input type="radio" name"onlyDental" value="no">
				I hereby elect to <b>OPT OUT</b> of the dental coverage.<br/><br/>

			<table class="table">
				<tr>
					<th></th>
					<th><b><u>Bi-Weekly Pay</u></b></th>
				</tr>
				<tr>
					<td><b>Employee Only</b></td>
					<td>$2.00</td>
				</tr>
				<tr>
					<td><b>Employee & Family</b></td>
					<td>$5.00</td>
				</tr>
			</table></br>

		<b>5. TOTAL PAYCHECK DEDUCTIONS</b><br/><br/>
		<script type="text/javascript">
		//<![CDATA[
		<!---calculates cost based off of radio selection of insurance and if the user adds spouse/dependents.--->
		//]]>
		</script>
			INSERT SCRIPT TO TOTAL OUT DEDUCTIONS<br/><br/>

		I understand that the above elections will remain in effect until the last day of the Period of Coverage noted above. I understand further that the payroll deduction elections set forth above will continue in effect notwithstanding any reductions in the health benefits I have elected above. In addition, I understand that, except in certain cases involving a significant reduction in health coverage or a significant increase in the cost of health coverage under the Plan for which the Employer permits me to change my health coverage elections, I may change the above elections during the Period of Coverage noted above only (I) if I experience a "status change", as defined under applicable law, and if my change in elections is consistent with that "status change" or (II) if I exercise Special Enrollment Period Rights (as described in the Notice of Special Enrollment Periods that accompanies this Election Form).  I understand further that, if I do not complete and file a new Election Form during the next annual election period, the above elections will terminate as of the end of the Period of Coverage noted above and I will not participate in the Plan for the next Plan year.  I understand that the elections noted above may need to be modified by the Employer to insure that the Plan complies with applicable tax rules.  Finally, as a condition of participation in the Plan, <i>I hereby consent, in my individual capacity and on behalf of others covered through me under the Plan, to any investigations or inquires into my medical condition, or the medical condition of those individuals, that are deemed necessary or appropriate by the Plan Administrator, and I hereby consent again, in my individual capacity and on behalf of others covered through me under the Plan, to any disclosures of medical records deemed necessary or appropriate by the Plan Administrator in connection there with.</i><br/><br/>

		<div id="dependent_div">
			<select>
			  <option value="null">Select a relation</option>
			  <option value="spouse">Spouse</option>
			  <option value="children">Child</option>
			</select>

			<input type="text" name="dependent_name" size="25" placeholder="Name">
			<input type="date" name="dependent_birthdate" width="10">
			<input type="text" name="dependent_social_security" size="10" placeholder="SSN"><br/><br/>
		</div>

		<button id="add_more" type="button" value="Add Dependent">Add Dependent</button>
		<script type="text/javascript">
			$(document).ready(function(){	
				$("#add_more").click (function(e){
					e.preventDefault();
					$("#dependent_div").append('<select>' +
			  		'<option value="null">Select a relation</option>' +
			  		'<option value="spouse">Spouse</option>' +
			  		'<option value="children">Child</option>' +
					'</select>' +
					
					'<input type="text" name="dependent_name" size="25" placeholder="Name">' +
					'<input type="date" name="dependent_birthdate" width="10">' +
					'<input type="text" name="dependent_social_security" size="10" placeholder="SSN">' +
					'<br/><br/>');
				})
			})	
		</script>
	</form>
</div>