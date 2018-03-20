<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.iiitb.ooadvoid.AccessProperties" %>
    <%@ page import="com.iiitb.ooadvoid.CreateProperties" %> 
<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Seller Hub</title>
		
<!-- Bootstrap Core CSS -->
<link rel="stylesheet" href="./bootstrapFiles/css/bootstrap.min.css">

<!-- Customizable CSS -->
<link rel="stylesheet" href="./bootstrapFiles/css/main.css">
<link rel="stylesheet" href="./bootstrapFiles/css/blue.css">
<link rel="stylesheet" href="./bootstrapFiles/css/owl.carousel.css">
<link rel="stylesheet" href="./bootstrapFiles/css/owl.transitions.css">
<link rel="stylesheet" href="./bootstrapFiles/css/animate.min.css">
<link rel="stylesheet" href="./bootstrapFiles/css/rateit.css">
<link rel="stylesheet" href="./bootstrapFiles/css/bootstrap-select.min.css">

<!-- Icons/Glyphs -->
<link rel="stylesheet" href="./bootstrapFiles/css/font-awesome.css">
<link rel="stylesheet" href="./bootstrapFiles/fontawesome-all.css">

<!-- Fonts -->
<link href="./bootstrapFiles/css(3).css" rel="stylesheet" type="text/css">
<link href="./bootstrapFiles/css(1).css" rel="stylesheet" type="text/css">
<link href="./bootstrapFiles/css(2).css" rel="stylesheet" type="text/css">
<style>

.custom-file-upload {
	border: 1px solid #ccc;
	display: inline-block;
	padding: 6px 12px;
	cursor: pointer;
}
.dropdwn{
  background-color: transparent;
  border-color: #fff;
  border-style: solid;
  border-top: none;
  text-color: red;
  padding: 6px 12px; 
  border-right: none;
  border-left: none;
}
.dp .tooltiptext {
	visibility: hidden;
	background-color: black;
	color: #fff;
	text-align: center;
	border-radius: 6px;
	padding: 3px 0;
	/* Position the tooltip */
	position: absolute;
	z-index: 1;
	overflow:visible;
}

.dp:hover .tooltiptext {
    visibility: visible;
}
</style>
</head>

<body>
<!-- ============================================== HEADER ============================================== -->

<header class="header-style-1"> 
  
  <!-- ============================================== TOP MENU ============================================== -->
  <div class="top-bar animate-dropdown">
    <div class="container">
      <div class="header-top-inner">
        	<div class="cnt-account">
				<ul class="list-unstyled">
						<li><a href="underConstruct.html"><i class="fa fa-bell" ></i> Notification</a></li>
						<li><a href="sellerHub.jsp" onclick="logout()"><i class="fa fa-check"></i> Logout</a></li>
					</ul>
		 </div>
        <!-- /.cnt-account -->
        
        <div class="clearfix"></div>
      </div>
      <!-- /.header-top-inner --> 
    </div>
    <!-- /.container --> 
  </div>
  <!-- /.header-top --> 
  <!-- ============================================== TOP MENU : END ============================================== -->
  <div class="main-header">
    <div class="container">
      <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-2 logo-holder"> 
          <!-- ============================================================= LOGO ============================================================= -->
          <div class="logo"> <a href="index.jsp"> <img  height="50px" src="./images/sellerHub/seller-hub-logo.png" alt=""> </a> </div>
          <!-- /.logo --> 
          <!-- ============================================================= LOGO : END ============================================================= --> 
          </div>
        <div class="col-xs-12 col-sm-12 col-md-8 top-search-holder">
        </div>
        <div class="col-xs-12 col-sm-12 col-md-2 animate-dropdown top-cart-row"> 
        </div>
      </div>
      <!-- /.row --> 
    </div>
    <!-- /.container --> 
  </div>
  <!-- /.main-header --> 
  
  <!-- ============================================== NAVBAR ============================================== -->
  <div class="header-nav animate-dropdown" style="background-color:white;color:black">
			<div class="container">
				<div class="yamm navbar navbar-default" role="navigation">
					<div class="navbar-header">
						<button data-target="#mc-horizontal-menu-collapse"
							data-toggle="collapse" class="navbar-toggle collapsed"
							type="button">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
					</div>
					<div class="nav-bg-class">
						<div class="navbar-collapse collapse"
							id="mc-horizontal-menu-collapse">
							<div class="nav-outer">
								<ul class="nav navbar-nav" id="category_dropdown">
									<li class="active dropdown yamm-fw">
										<a href="sellerhome.jsp" style="color:black">Welcome</a></li>
									<li class="active dropdown yamm-fw">
										<a	href="sellerItemInsert.jsp" style="color:black">Add ITEM</a></li>
										
									<li class="active dropdown yamm-fw">
										<a	href="sellerViewItem.jsp" style="color:black">VIEW YOUR ITEMS</a></li>
									<li class="active dropdown yamm-fw">
										<a	href="#" style="color:black">VIEW ORDERS</a></li>
									
								</ul>
								<!-- /.navbar-nav -->
								<div class="clearfix"></div>
							</div>
							<!-- /.nav-outer -->
						</div>
						<!-- /.navbar-collapse -->

					</div>
					<!-- /.nav-bg-class -->
				</div>
				<!-- /.navbar-default -->
			</div>
			<!-- /.container-class -->

		</div>
		<!-- /.header-nav -->
  <!-- ============================================== NAVBAR : END ============================================== --> 
  
</header>
  <%-- <%if (request.getParameter("id") != null) { 
		String x = request.getParameter("id");
		out.println("Successful "+ x );
 	 } %> --%>
		
<div class="body-content outer-top-xs">
  <div class="container">
    <div class="row">
      <div class="col-md-3 sidebar"> 
        <div class="sidebar-module-container">
          <div class="sidebar-filter"> 
            <!-- ============================================== IMAGE============================================== -->
            <div class="sidebar-widget wow fadeInUp" style="visibility: hidden; animation-name: none;">
            	
              <h5 class="section-title">Hello <label id="sellername"/></label></h5>
              <div class="widget-header">
                <h4 class="widget-title" id="userID"></h4>
              </div>
              
              <!-- /.sidebar-widget-body --> 
            </div>
            <!-- /.sidebar-widget --> 
            <!-- ============================================== IMAGE: END ============================================== --> 
            
            
            <!-- ============================================== Other TAGS ============================================== -->
          <!----------- Account------------->
          <div class="side-menu animate-dropdown outer-bottom-xs" style="margin-top:30px;">
          <div class="head"><i class="icon fa fa-align-justify fa-fw"></i>Account Settings</div>
			<div class="sidebar-widget wow fadeInUp" style="visibility: hidden; animation-name: none;">
            	
              <div class="sidebar-widget-body">
                <ul class="list">
                  <li><h5><a href="underConstruct.html">Profile Information</a></h5></li>
                  <li><h5><a href="underConstruct.html">Manage Addresses</a></h5></li>
                  <li><h5><a href="underConstruct.html">Notification Preferences</a></h5></li>
                </ul>
              </div>
              <!-- /.sidebar-widget-body --> 
            </div>
            <!-- /.sidebar-widget --> 
          <!-- /.megamenu-horizontal --> 
        </div>
        
            
             
           
        
            <div class="sidebar-widget  wow fadeInUp outer-top-vs " style="visibility: hidden; animation-name: none;">
            <form id="logout_form" action="./sellerHub.jsp">
              <input type="submit" class="head btn-link" style="color:black;font-weight:bold" value="LOGOUT" onclick="logout();"></input>
            </form>
            </div>
            
            <!-- ============================================== Other: END ============================================== -->

          </div>
          <!-- /.sidebar-filter --> 
        </div>
        <!-- /.sidebar-module-container --> 
      </div>
      <!-- /.sidebar -->
      <input type="text" id="sellerid" name="sellerid" hidden="hidden"/>
      <div class="col-md-9"> 
        <!-- ========================================== SECTION – HERO ========================================= -->
	      
		 <div class=col-sm-12 id="listingDisplay" style="margin: 0px 0px 0px 0px; padding:50px;background-color:white">
         <div class=row style="text-align:center">
           <div id="listing"></div>
         </div>
      </div>
	 
    <!-- /.row --> 
     </div>
  <!-- /.container --> 
  </div>
</div>
<!-- /.body-content --> 
</div>


<!-- JavaScripts placed at the end of the document so the pages load faster --> 
<script src="./bootstrapFiles/js/jquery-1.11.1.min.js"></script> 
<script src="./bootstrapFiles/js/bootstrap.js"></script>
<script src="./bootstrapFiles/js/bootstrap.min.js"></script> 
<script src="./bootstrapFiles/js/bootstrap-hover-dropdown.min.js"></script> 
<script src="./bootstrapFiles/js/owl.carousel.min.js"></script> 
<script src="./bootstrapFiles/js/echo.min.js"></script> 
<script src="./bootstrapFiles/js/jquery.easing-1.3.min.js"></script> 
<script src="./bootstrapFiles/js/bootstrap-slider.min.js"></script> 
<script src="./bootstrapFiles/js/jquery.rateit.min.js"></script> 
<script src="./bootstrapFiles/js/bootstrap-select.min.js"></script> 
<script src="./bootstrapFiles/js/wow.min.js"></script> 
<script src="./bootstrapFiles/js/scripts.js"></script>
<script src="./customJavascripts/cookies.js"></script>
<script src="./customJavascripts/cookies.js"></script>
<script>
$(document).ready(function(){
	
	
 	 	checkCookie();
 	 	 var ctxPath = "<%=request.getContextPath()%>";
 		//headerFunctions(ctxPath);		
 		loadListings();
		 
	});
function checkCookie() 
{
    var result = getCookie("seller_details");
    if (result != "") 
    {	
    		var user = JSON.parse(result);
		setCookie("seller_details", result, 10);
		document.getElementById("sellername").innerText = user.firstName;
		$('#sellerid').val(user.id);
		
	
    } 
    else 
    {	alert("Login failed. Try again.");
      	window.location = "sellerHub.jsp";
    		logout();
    }
}

	function loadListings(){
		$('#listing').empty();
	    	var ctxPath = "<%=request.getContextPath()%>";
	<%--     	var subcategoryid = "<%=request.getParameter("id")%>"; --%>
	   var sellerid = $("#sellerid").val();
	   
	    	
		        $.ajax(
		        		{
		        			type : 'GET',
		        			contentType : 'application/json',
		        			url : ctxPath + "/webapi/listings/seller/"+sellerid,
		        			async : false,
		        			dataType : "json", // data type of response
		        			success : function(result){
		        				for (var i in result){
		        				
							$.ajax(
		        						{
		        							type : 'GET',
		        							contentType : 'application/json',
		        							url : ctxPath + "/webapi/listings/"+result[i].id,
		        							dataType : "json", // data type of response
		        							success : displayListings,
		        					    	error:function(err) {
		        					    		alert(err);
		        					    	}
		        						});
		        				}
		        	            
		        	    	},
		        	    	error:function(){
		        	    		alert("error occurred");
		        	        	
		        	    	}
		        		});
		}
		function displayListings(result)
		{
		    <% AccessProperties ap = new AccessProperties(); %>
		    var imgServerURL = "<%=ap.getImageServerURL() %>"; 
		    var ActualPrice = Math.round(result.price);
			result["ActualPrice"]=ActualPrice;
			var data="";
			data+="<div class = 'row' style = 'font-size:15px; text-align:left; padding-left:20px;' ><div class='col-sm-4' style = 'font-size:15px; text-align:left; padding-top: 40px ; padding-left:40px;'>"+
			" <div style='width: 260px;height: 250px;'>"+
			"<img class='listingImage' style='max-height:100%; max-width:100%;' src='"+
			imgServerURL+result.imgUrl+"' alt=''></div></div>"+
	        "<div class='col-sm-8'style ='font-size:15px; text-align:left; padding-top: 70px ; padding-left:60px;' ><div style = 'font-size:15px;'>Item Name :  "+result.listingName+"</div>"+
	        "<div style = 'font-size:15px; text-align:left; font-family:verdana;display:inline-block;margin-right:10px;color:green'>Discount :  "+
	        result.discount+"% off</div><br/>"+
	        "<div style = 'font-size:15px; position:left; font-family:verdana;margin-right:10px;display:inline-block'>"+
	        "<i class='fa fa-inr' style='font-size:15px'></i>Actual Price :  "+result.ActualPrice+"</div>"+
	        "<div style = 'font-size:15px;'>Quantity :  "+result.quantity+"</div>"+
	       	"</div></div>";
	       	$('#listing').append(data);
		}
		
		
		
	    
	   
	    function load(result)
	    {
		    <% AccessProperties ap1 = new AccessProperties(); %>
		    var imgServerURL = "<%=ap1.getImageServerURL() %>"; 
	    	for (i=0;i<result.length;i++)
	    		{
	    		var ActualPrice = Math.round(result[i].price - (result[i].discount/100)*result[i].price);
	    		result[i]["ActualPrice"]=ActualPrice;
	    		if(ActualPrice <  $("#MinPrice").val() || ActualPrice > $("#MaxPrice").val())
	    			continue;
	    		var data="";
	    		data+="<div class='col-sm-4, box'><a href='item.jsp?id="+result[i].id+
	    		"'> <div style='width: 260px;height: 250px;'>"+
	    		"<img class='listingImage' style='max-height:100%; max-width:100%;' src='"+
	    		imgServerURL+result[i].imgUrl+"' alt=''></div>"+
	            "<div style = 'font-size:15px; text-align:center'>"+result[i].listingName+"</div>"+
	            "<div style = 'font-size:10px; text-align:left; font-family:verdana;display:inline-block;margin-right:10px;color:green'>"+
	            result[i].discount+"% off</div><br/>"+
	            "<div style = 'font-size:15px; position:left; font-family:verdana;margin-right:10px;display:inline-block'>"+
	            "<i class='fa fa-inr' style='font-size:15px'></i>"+result[i].ActualPrice+"</div>"+
	           	"<del style = 'font-size:10px; text-align:left; font-family:verdana; color:grey;margin-right:10px;display:inline-block'>"+
	           	"<i class='fa fa-inr' style='font-size:10px'></i>"+result[i].price+"</del>"+
	           	"</div>";
		       	$('#listing').append(data);
	    		};
	    };

	    function starJson(listing)
	    {
	    	var review = JSON.stringify({
	    		"id" : 1,
	    	    "listingId" : listing.id,
	    	    "userId" : 1
	    	});
	    	return review;
	    }
	    
	   
	  
	    
	</script>		
</body>
</html>