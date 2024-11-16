<!DOCTYPE html> 
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<head> 
	<meta charset="UTF-8"> 
	<meta http-equiv="X-UA-Compatible"
		content="IE=edge"> 
	<meta name="viewport"
		content="width=device-width, 
				initial-scale=1.0"> 
	<title>Admin SoilAnalysis Report</title> 
	<link rel="stylesheet"
		href="css/styleadmin.css"> 
	<link rel="css/stylesheet"
		href="responsive.css"> 
		
		<script src="https://kit.fontawesome.com/afcf20c6bc.js" crossorigin="anonymous"></script>
		<link rel="shortcut icon" href="img/favicon-32x32.png" type="image/x-icon">
		
  
<body> 
	
	<!-- for header part -->
	<header> 

		<div class="logosec"> 
            <div class="logo">AgroVision</div> 
            <img src= 
"https://media.geeksforgeeks.org/wp-content/uploads/20221210182541/Untitled-design-(30).png"
                class="icn menuicn" 
                id="menuicn" 
                alt="menu-icon"> 
        </div> 

		<div class="searchbar"> 
			<input type="text"  placeholder="Search by Email or Location" id="searchInput" oninput="searchTable()" style="width:340px;"> 
			<div class="searchbtn"> 
				<i class="fa-solid fa-magnifying-glass"></i>
			</div> 
		</div> 
		<label style="margin-left:20px; font-size:15px" ><i class="fa-regular fa-calendar"></i>&nbsp;Filter Daily,Weekly,Monthly</label>
		 <form action="reportsoil" method="get">
        <label for="startdate">Start Date:</label>
        <input type="date" id="startDate" name="startdate" required>

        <label for="enddate">End Date:</label>
        <input type="date" id="endDate" name="enddate" required>

        <button type="submit" class="demo">Generate Report<i class="fa-solid fa-wheat-awn-circle-exclamation"></i></button>
       </form>
   

        <div style="margin-left:600px;"> <h3>Welcome Admin</h3></div>
			<div class="dp">
            
			<img src= 
           "https://media.geeksforgeeks.org/wp-content/uploads/20221210180014/profile-removebg-preview.png"
					class="dpicn"
					alt="dp"> 
                   
			</div> 
           
            
		</div> 

	</header> 

     
	 <div class="main-container"> 
		<div class="navcontainer"> 
			<nav class="nav"> 
				<div class="nav-upper-options"> 
				<a href="admindash">
					<div class="nav-option option"> 
						<i class="fa-solid fa-table-columns"></i>
						<h3> Dashboard</h3> 
					</div> 
					</a>

					 <a href="adminagro">
					<div class="option nav-option"> 
						<i class="fa-solid fa-building-circle-arrow-right"></i>
						<h3> AgroAgency Request</h3> 
					</div> </a>
					
					 <a href="addproductadmin">
					<div class="nav-option option4"> 
						<i class="fa-solid fa-plus"></i>                       
						<h3>Add Product</h3> 
					</div></a> 
					
					 <a href="editproductadmin">
					<div class="nav-option option4"> 
						<i class="fa-solid fa-pen-to-square"></i>                        
						<h3>View & Edit Product</h3> 
					</div></a> 
					
					<a href="farmreport">
					<div class="nav-option option3"> 
						<i class="fa-solid fa-laptop-file"></i>
						<h3>Farmer Report</h3> 
					</div></a>
					 
					
					
					
					<a href="soilreportadmin">
					<div class="nav-option option1"> 
						<i class="fa-solid fa-chart-pie"></i>
						<h3>Soil Analysis</h3> 
					</div></a> 
					
					 <a href="agropage">
					<div class="option nav-option"> 
						<i class="fa-solid fa-building-wheat"></i>
						<h3> AgroAgency</h3> 
					</div> </a>
					<a href="totalfarmeradmin">
					<div class="nav-option option3"> 
						<i class="fa-solid fa-circle-user"></i>
						<h3>Farmers</h3> 
					</div></a>
					
					<a href="adminstudentrequest">
					<div class="nav-option logout"> 
						<i class="fa-solid fa-graduation-cap"></i>
						<h3>Student Training</h3>
					</div></a>
					
					<a href="adminfarmerrequest">
					<div class="nav-option logout"> 
						<i class="fa-solid fa-tractor"></i>
						<h3>Farmer Training</h3>
					</div></a>
					
					<a href="blog">
					<div class="nav-option logout"> 
						<i class="fa-brands fa-blogger-b"></i>
						<h3>Blog</h3>
					</div></a>
					
					 <a href="logoutadmin">
					<div class="nav-option logout"> 
						<i class="fa-solid fa-arrow-right-from-bracket"></i>
						<h3>Logout</h3>
					</div></a>

				</div> 
			</nav> 
		</div> 
				
	
				
	
	
	
	
		<div class="main"> 

		   <div class="report-container"  style=width:2500px;> 
				<div class="report-header"> 
					<h1 class="recent-Articles" style="color:#6f4518;">Soil Analysis Request reports  &nbsp; <i class="fa-solid fa-chart-pie"></i></h1> 
					<button onClick="tableToExcel()" class="download-button" style="background-color:#6f4518;">Download Report &nbsp;<i class="fa-solid fa-file-excel"></i></button>
				</div> 
                       
               <div class="table-container">
            <table id="tb" class="table">
                <thead>
                    <tr>
                        
                        <th style="font-size:13px;">Farmer Name</th>
                        <th style="font-size:13px;">Email</th>
                        <th style="font-size:13px;">Mobile no</th>
                        <th style="font-size:13px;">Location</th>
                        <th style="font-size:13px;">Date</th>
                        <th style="font-size:13px;">Depth (in cm)</th>
                        <th style="font-size:13px;">Type of Soil</th>
                        <th style="font-size:13px;">Organic Matter (%)</th>
                        <th style="font-size:13px;">Soil Texture</th>
                        <th style="font-size:13px;">Crop Type</th>
                        <th style="font-size:13px;">Previous Crop</th>
                        <th style="font-size:13px;">Fertilizers Used</th>
                        <th style="font-size:13px;">Irrigation</th>
                      
                       
                        
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${kk}" var="e">
                        <tr>
                            <td style="font-size:13px;">${e.sname}</td>
                            <td style="font-size:13px;">${e.semail}</td>
                            <td style="font-size:13px;">${e.smobile}</td>
                            <td style="font-size:13px;">${e.slocation}</td>
                            <td style="font-size:13px;">${e.sdate}</td>
                            <td style="font-size:13px;">${e.sdepth}</td>
                            <td style="font-size:13px;">${e.stype}</td>
                            <td style="font-size:13px;">${e.sorganic}</td>
                            <td style="font-size:13px;">${e.stexture}</td>
                            <td style="font-size:13px;">${e.scrop}</td>
                            <td style="font-size:13px;">${e.spcrop}</td>
                            <td style="font-size:13px;">${e.sfertilizer}</td>
                            <td style="font-size:13px;">${e.sirrigation}</td>
                           
                           
                           
                            
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            
                   </div> 
				</div> 
			</div> 
		</div> 
		
		
		
		<script>
    function searchTable() {
        // Declare variables
        var input, filter, table, tr, tdName, tdCategory, tdOurPrice, i, txtValueName, txtValueCategory, txtValueOurPrice;
        input = document.getElementById("searchInput");
        filter = input.value.toUpperCase();
        table = document.getElementById("tb");
        tr = table.getElementsByTagName("tr");

     
        for (i = 0; i < tr.length; i++) {
            tdName = tr[i].getElementsByTagName("td")[1]; // Assuming the product name is in the second column
            tdCategory = tr[i].getElementsByTagName("td")[1]; // Assuming the category is in the third column
            tdOurPrice = tr[i].getElementsByTagName("td")[3]; // Assuming the "Our Price" column is the fifth column

            if (tdName || tdCategory || tdOurPrice) {
                txtValueName = tdName.textContent || tdName.innerText;
                txtValueCategory = tdCategory.textContent || tdCategory.innerText;
                txtValueOurPrice = tdOurPrice.textContent || tdOurPrice.innerText;

                if (txtValueName.toUpperCase().indexOf(filter) > -1 || txtValueCategory.toUpperCase().indexOf(filter) > -1 || txtValueOurPrice.toUpperCase().indexOf(filter) > -1) {
                    tr[i].style.display = "";
                } else {
                    tr[i].style.display = "none";
                }
            }
        }
    }
</script>
		
		
		
	
	
	<style>
	
	
	


form {
    display: flex;
    align-items: center;
}

label {
    margin-left: 15px;
    font-size: 14px;
    color: #333;
     
}

input[type="date"] {
    padding: 9px;
    border: 1px solid #ccc;
    border-radius: 4px;
    font-size: 16px;
    background-color:orange;
}
 .download-button {
    display: inline-block;
    padding: 10px 20px;
    background-color: #16697a;
    color: #fff;
    text-decoration: none;
    border-radius: 5px;
    transition: background-color 0.3s ease;
    font-size:15px;
  }
  
  .download-button:hover {
    background-color: #2980b9;
  }


/* Style for the search results table (customize as needed) */
.report-table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 20px;
}

.report-table th,
.report-table td {
    padding: 12px;
    text-align: middle;
    border-bottom: 1px solid #ddd;
}

.report-table th {
    color: black;
}

.report-table td {
    color: black;
} 
	
	.table-container {
            
            margin-right: 30px;
            width: 100%; /* Adjust the width as needed */
        }

        table {
            width: 100%;
            border-collapse: collapse;
            
        }

        th, td {
            padding: 12px;
            text-align: middle;
            border-bottom: 1px solid #ddd;
        }

        th {
            
            color: black;
        }
        td{
          color:black;
        }
        
        
    a,.demo{
      text-decoration: none;
      padding:10px;
      display: flex;
      text-align: center;
      align-items: center;
      
      border-radius: 12px;
      color: white;
      font-family: "Poppins", sans-serif;
    }
    
     .demo{
      text-decoration: none;
      padding: 2px;
     
      text-align: center;
      align-items: center;
      background-color:#38b000;
      border-radius: 34px;
      color:#fff;
      font-family: "Poppins", sans-serif;
      border:3px solid #fff;
    }
    


 
	</style>
	
	<script>
	function tableToExcel()
{
	
  var table2excel = new Table2Excel();
  table2excel.export(document.querySelectorAll("table.table"));
}
</script>
	
	

	 <script src="js/table2excel.js"></script>

	<script src="./index.js"></script> 

    <script>let menuicn = document.querySelector(".menuicn"); 
        let nav = document.querySelector(".navcontainer"); 
        
        menuicn.addEventListener("click", () => { 
            nav.classList.toggle("navclose"); 
        })
        </script>
</body> 
</html>