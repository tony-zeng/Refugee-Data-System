<html>
	<head>
		<script type="text/javascript" src="clientprofile.js"></script>
		<!--other script and also external css included over here-->
	</head>
	<body onload="FindFields()">
		<span>Unique Identifier: </span><textarea id="unique_identifier" rows="1" cols="35"></textarea><br />
		<span>Unique Identifier Value: </span><textarea id="unique_identifier_value" rows="1" cols="35"></textarea><br />
		<span>Date of Birth: </span><textarea id="date_of_birth" rows="1" cols="35"></textarea><br />
		<span>Phone Number: </span><textarea id="phone_number" rows="1" cols="35"></textarea><br />
		<span>Has Email Address: </span> <br />
		<div id="has_email_address">
			<input type="radio" name="has_email_address" value="True"> Yes<br>
			<input type="radio" name="has_email_address" value="False"> No<br>
		</div>
		<span>Email Address: </span><textarea id="email_address" rows="1" cols="35"></textarea><br />
		<span>Street Number: </span><textarea id="street_number" rows="1" cols="35"></textarea><br />
		<span>Street Name: </span><textarea id="street_name" rows="1" cols="35"></textarea><br />
		<span>Street Type: </span><textarea id="street_type" rows="1" cols="35"></textarea><br />
		<span>Street Direction: </span><textarea id="street_direction" rows="1" cols="35"></textarea><br />
		<span>Unit/Suite/Apt: </span><textarea id="unit" rows="1" cols="35"></textarea><br />
		<span>City: </span><textarea id="city" rows="1" cols="35"></textarea><br />
		<span>Province: </span><textarea id="province" rows="1" cols="35"></textarea><br />
		<span>Postal Code: </span><textarea id="postal_code" rows="1" cols="35"></textarea><br />
		<span>Language: </span><textarea id="language" rows="1" cols="35"></textarea><br />
		<span>Consent for Future Research/Consultation: </span> <br />
		<div id="has_consent">
			<input type="radio" name="has_consent" value="True"> Yes<br>
			<input type="radio" name="has_consent" value="False"> No<br>
		</div>
		
		
		
		<input type="submit" onclick="SubmitData()">
	</body>
</html>
