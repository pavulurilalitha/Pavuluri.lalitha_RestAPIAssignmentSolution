<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style>
body{
    margin: 0;
    width: 100%;
    min-height: 100vh;
    display: flex;
    flex-direction: column;
    align-items: center;
}
.addBtn{
	width: 90px;
    height: 25px;
	margin-right: 5px;
}
.deleteBtn{
    width: 90px;
    height: 25px;
}
ul{
	width: 250px;
    margin-top: 50px;
}
</style>
<title>Company list</title>
</head>
<body>
	<h2>Company List</h2>
	
	
	<div class="parentDiv">
		<h3>Company Registration Form</h3>
		<div>
			<form action="registerUserData" method="post">
				<input type="text" id="company" placeholder="Enter your Company Name" /><br><br>
				<input type="text" id="contact" placeholder="Enter contact" /><br><br>
				<input type="text" id="country" placeholder="Enter country" /><br><br>
				<div class="form-btns">
		<input class="addBtn" type="button" value="Add" onclick="addCompany()" />
				</div>
			</form>
		</div>
	</div>
</body>


<script>
function addCompany(){

var company =document.getElementById("company").value
var contact =document.getElementById("contact").value;
var country =document.getElementById("country").value;       

var companyObj = {}
    companyObj["company"] = company;
    companyObj["contact"] = contact;
    companyObj["country"] = country;
console.log("console"+companyObj.company);
console.log("contact"+companyObj.contact);
console.log("country"+companyObj.country);
var companyJsonStr=JSON.stringify(companyObj);
console.log("--------------Company JSON String------------");
console.log(companyJsonStr);
console.log("---------------------------------------------");
	$.ajax({
        type: "POST",
        contentType: "application/json",
        url: "/addCompany",
        data: companyJsonStr,
        dataType: 'json',
        timeout: 600000,
        success: function (data) {
        alert("Record inserted");
          window.location.href = "/organizationDetails";
        },
        error: function (e) {
            alert("Server Call Failed with"+e);

        }
    });
}

</script>





</html>