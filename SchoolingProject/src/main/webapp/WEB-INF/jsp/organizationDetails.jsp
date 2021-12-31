<!DOCTYPE html>
<html lang="en">
<head>
  <!--Datatable plugin CSS file -->
  <link rel="stylesheet" 
  href=
"https://cdn.datatables.net/1.10.22/css/jquery.dataTables.min.css" />
  <!--jQuery library file -->
  <script type="text/javascript" 
  src="https://code.jquery.com/jquery-3.5.1.js"></script>
  <!--Datatable plugin JS library file -->
  <script type="text/javascript" 
  src=
"https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js">
  </script>
</head>
<body>
  <!--HTML tables with user data-->
  <table id="companyDetailsId" class="display" style="width:100%">
    <thead>
      <tr>
        <th>Company</th>
        <th>Contact</th>
        <th>Country</th>
      </tr>
    </thead>
  </table>
  <script>
      // Initialization of datatables
      $(document).ready(function () {
        $('#companyDetailsId').DataTable({
          "processing": true,
          "ajax": "./companyData",
          "columns": [
            { "data": "company" },
            { "data": "contact" },
            { "data": "country" }
          ]
        });
      });
  </script>
</body>
</html>