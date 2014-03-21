<div id="employee_info">
	<cfform>
 		<b>Affirmative Action Voluntary Information</b> 
 		<p>We consider all applicants for positions without regard to race, color, 
		religion, sex, national origin, citizenship, age, mental or physical disabilities, 
		vietem/reserve/national guard or any other similarly protected status. We also 
		comply with all applicable laws governing employment practices and do not discriminate 
		on the basis of any unlawful criteria.
		<br>
		<br>To be completed by applicant on a voluntary basis. In an effort to comply with 
		requirements regarding government recordkeeping. Reporting and other legal obligations 
		which may not apply. We invite you to complete this applicant data survey. Providing 
		this information is strictly voluntary. Failure to provide it will not subject you 
		to any adverse personnel decision or action. Your cooperation is appreciated.</b>
		<br>
		<br>Please be advised that this survey is not part of your official application for 
		employment. It will not be used in any hiring decision. The information will be used 
		and kept confidential in accordance with applicable laws and regulations.</p>
			
		<br><b>Applicant Information</b> 
 		<br>Name: <cfinput type="text" name="name" size="50" float="right">
 		
 		<div style= "float:right;">
			Referal Source:
			<cfselect name="Referral Source">
    		<option value="referal1">referal1
    		<option value="referal2">referal2
    		<option value="referal3">referal3
    		<option value="referal4">referal4
    		<option value="referal5">referal5
			</cfselect>
			</div>	
 		
 		<br><div style= "float:right;"><br>
 		<cfinput type="checkbox"
    		name="SelectedDepts"
    		value="1">
    		Male<br>

		<cfinput type="checkbox"
    		name="SelectedDepts"
    		value="2">
    		Female<br>
			</div>

 		<br>Address: <cfinput type="text" name="address" size="50"><br>
 					 <cfinput type="text" name="address" size="50"><br>
 					 <cfinput type="text" name="address" size="50"><br>

 		
 		<div style= "float:right;">		 	
 		<br>Equal Employment Opportunity Idenification Groups:
 			<br><cfselect name="employee_id ">
 			<option value="Group1">Group1
    		<option value="Group2">Group2
    		<option value="Group3">Group3
    		<option value="Goup4">Group4
    		<option value="Group5">Group5
			</cfselect>
 			</div>
 		
 		<br>Telephone: <cfinput type="text" name="telephone" size="10"><br>
 			
 			<br>Position(s) applied for:
 			<cfselect name="positions_applied">
 			<option value="Job1">Job1
    		<option value="Job2">Job2
    		<option value="Job3">Job3
    		<option value="Job4">Job4
    		<option value="Job5">Job5
			</cfselect>

			
			

	</cfform>
 </div>
 	 
