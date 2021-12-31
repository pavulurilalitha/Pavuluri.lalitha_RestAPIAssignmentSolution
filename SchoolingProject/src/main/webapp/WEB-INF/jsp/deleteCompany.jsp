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
				<div class="form-btns">
		<input class="deleteBtn" type="button" value="Delete" onclick="deleteCompany()" />
				</div>
			</form>
		</div>
	</div>
</body>


<script>

function deleteCompany(){
var company =document.getElementById("company").value
var companyObj = {};
 companyObj["company"] = company;
    companyObj["contact"] = "";
    companyObj["country"] = "";
    var companyJsonStr = JSON.stringify(companyObj);
$.ajax({
        type: "POST",
        contentType: "application/json",
        url: "/deleteOrganisation",
        data: companyJsonStr,
        dataType: 'json',
        timeout: 600000,
        success: function (data) {
        alert("Record Deleted Successfully");
          window.location.href = "/organizationDetails";
        },
        error: function (e) {
            alert("Server Call Failed with"+e);

        }
    });

}

</script>





</html>