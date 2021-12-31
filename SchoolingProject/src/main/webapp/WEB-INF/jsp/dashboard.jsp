<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div>
				<div class="form-btns">
		<input class="deleteBtn" type="button" value="Get Organisation Details" onclick="getCompanyDetailsPage()" />
		<input class="addBtn" type="button" value="Add" onclick="addCompanyDetailsPage()" />
		<input class="deleteBtn" type="button" value="Delete" onclick="deleteCompanyDetailsPage()" />
		<input class="deleteBtn" type="button" value="Modify" onclick="modifyCompanyDetailsPage()" />
				</div>
</body>
<script>
function getCompanyDetailsPage(){
	window.location.href="/organizationDetails";
}


function addCompanyDetailsPage(){
	window.location.href="/companyList";
}

function deleteCompanyDetailsPage(){
	window.location.href="/deleteCompany";
}

function modifyCompanyDetailsPage(){
window.location.href="/modifyCompany";
}
</script>

</html>