<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Home</title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Ultra Modern Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Bootstrap Core CSS -->
<link href="admin/css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="admin/css/style.css" rel='stylesheet' type='text/css' />
<!-- font CSS -->
<!-- font-awesome icons -->
<link href="admin/css/font-awesome.css" rel="stylesheet" /> 
<!-- //font-awesome icons -->
<!--skycons-icons-->
<script src="admin/js/skycons.js"></script>
<!--//skycons-icons-->

 <!-- js-->
  <script src="admin/js/bootstrap.js"></script>
<script src="admin/js/jquery-1.11.1.min.js"></script>
<script src="admin/js/modernizr.custom.js"></script>
<!--webfonts-->
<link href='https://fonts.googleapis.com/css?family=Comfortaa:400,700,300' rel='stylesheet' type='text/css' />
<link href='https://fonts.googleapis.com/css?family=Muli:400,300,300italic,400italic' rel='stylesheet' type='text/css' />
<!--//webfonts-->  
<!-- Metis Menu -->
<script src="admin/js/metisMenu.min.js"></script>
<script src="admin/js/custom.js"></script>
<link href="admin/css/custom.css" rel="stylesheet" />
<!--//Metis Menu -->
<link href="admin/css/jquerysctipttop.css" rel="stylesheet" type="text/css" />
<script src="admin/js/jquery.sparkline.min.js"></script>
<script type="text/javascript">
    /* <![CDATA[ */
    $(function() {
        /** This code runs when everything has been loaded on the page */
        /* Inline sparklines take their values from the contents of the tag */
        $('.inlinesparkline').sparkline(); 

        /* Sparklines can also take their values from the first argument passed to the sparkline() function */
        var myvalues = [10,8,5,7,4,4,1];
        $('.dynamicsparkline').sparkline(myvalues);

        /* The second argument gives options such as specifying you want a bar chart11 */
        $('.dynamicbar').sparkline(myvalues, {type: 'bar', barColor: '#fff'} );

        /* Use 'html' instead of an array of values to pass options to a sparkline with data in the tag */
        $('.inlinebar').sparkline('html', {type: 'bar', barColor: '#fff'} );

    });
    /* ]]> */
    </script>
	<script src="admin/js/Chart.js"></script>
	
<!--pie-chart--->
<script src="admin/js/pie-chart.js" type="text/javascript" ></script>
 <script type="text/javascript">

        $(document).ready(function () {
            $('#demo-pie-1').pieChart({
                barColor: '#68b828',
                trackColor: '#eee',
                lineCap: 'round',
                lineWidth: 10,
                onStep: function (from, to, percent) {
                    $(this.element).find('.pie-value').text(Math.round(percent) + '%');
                }
            });

            $('#demo-pie-2').pieChart({
                barColor: '#7c38bc',
                trackColor: '#eee',
                lineCap: 'butt',
                lineWidth: 10,
                onStep: function (from, to, percent) {
                    $(this.element).find('.pie-value').text(Math.round(percent) + '%');
                }
            });

            $('#demo-pie-3').pieChart({
                barColor: '#0e62c7',
                trackColor: '#eee',
                lineCap: 'square',
                lineWidth: 10,
                onStep: function (from, to, percent) {
                    $(this.element).find('.pie-value').text(Math.round(percent) + '%');
                }
            });

           
        });

    </script>
	<!--Calender-->
	<link rel="stylesheet" href="css/clndr.css" type="text/css" />
	<script src="admin/js/underscore-min.js" type="text/javascript"></script>
	<script src= "admin/js/moment-2.2.1.js" type="text/javascript"></script>
	<script src="admin/js/clndr.js" type="text/javascript"></script>
	<script src="admin/js/site.js" type="text/javascript"></script>
	<!--End Calender-->
</head>
<body class="cbp-spmenu-push">
	<div class="main-content">
		<!--left-fixed -navigation-->
		<div class="sidebar" role="navigation">
            <div class="navbar-collapse">
				<nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-right dev-page-sidebar mCustomScrollbar _mCS_1 mCS-autoHide mCS_no_scrollbar" id="cbp-spmenu-s1">
					<div class="scrollbar scrollbar1">
						<ul class="nav" id="side-menu">
							<li>
								<a href="index.jsp" class="active"><i class="fa fa-home nav_icon"></i>Dashboard</a>
							</li>
							<li>
								<a href="#"><i class="fa fa-cogs nav_icon"></i>Components <span class="fa arrow"></span></a>
								<ul class="nav nav-second-level collapse">
									<li>
										<a href="gallery.html">Gallery</a>
									</li>
									<li>
										<a href="grid.html">Grid</a>
									</li>
								</ul>
								<!-- /nav-second-level -->
							</li>
							<li>
								<a href="#"><i class="fa fa-book nav_icon"></i>Elements <span class="fa arrow"></span></a>
								<ul class="nav nav-second-level collapse">
									<li>
										<a href="buttons.html">Buttons</a>
									</li>
									<li>
										<a href="typography.html">Typography</a>
									</li>
									<li>
										<a href="icon.html">Icon</a>
									</li>
								</ul>
								<!-- /nav-second-level -->
							</li>
							<li>
								<a href="widgets.html"><i class="fa fa-th-large nav_icon"></i>Widgets</a>
							</li>
							
							<li>
								<a href="#"><i class="fa fa-check-square-o nav_icon"></i>Forms<span class="fa arrow"></span></a>
								<ul class="nav nav-second-level collapse">
									<li>
										<a href="inputs.html">Inputs</a>
									</li>
									<li>
									<a href="validation.html">Form Validation</a>
									</li>
								</ul>
								<!-- //nav-second-level -->
							</li>
							<li>
								<a href="#"><i class="fa fa-envelope nav_icon"></i>Mailbox<span class="fa arrow"></span></a>
								<ul class="nav nav-second-level collapse">
									<li>
										<a href="inbox.html">Inbox</a>
									</li>
									<li>
										<a href="inboxdetails.html">Inbox Details</a>
									</li>
								</ul>
								<!-- //nav-second-level -->
							</li>
							<li>
								<a href="maps.html"><i class="fa fa-location-arrow nav_icon"></i>Maps</a>
							</li>
							<li>
								<a href="#"><i class="fa fa-file-text-o nav_icon"></i>Pages<span class="fa arrow"></span></a>
								<ul class="nav nav-second-level collapse">
									<li>
										<a href="login.html">Login</a>
									</li>
									<li>
										<a href="signup.html">SignUp</a>
									</li>
									<li>
										<a href="blank-page.html">Blank Page</a>
									</li>
								</ul>
								<!-- //nav-second-level -->
							</li>
							<li>
								<a href="charts.html" class="chart-nav"><i class="fa fa-bar-chart nav_icon"></i>Charts</a>
							</li>
							<li>
								<a href="#" class="chart11-nav"><i class="fa fa-list-ul nav_icon"></i>Extras<span class="fa arrow"></span></a>
								<ul class="nav nav-second-level collapse">
									<li>
										<a href="tables.html">Tables</a>
									</li>
									<li>
										<a href="404.html">404 Page</a>
									</li>
								</ul>
								<!-- //nav-second-level -->
							</li>
						</ul>
					</div>
					<!-- //sidebar-collapse -->
				</nav>
			</div>
		</div>
		<!--left-fixed -navigation-->
		<!-- header-starts -->
		<div class="sticky-header header-section ">
			<div class="header-left">
				<!--logo -->
				<div class="logo">
					<a href="#"><h1>Admin Platfrom</h1></a>
				</div>
				<!--//logo-->
				<div class="user-right">
					<div class="profile_details_left"><!--notifications of menu start -->
						<div class="profile_details">		
							<ul>
								<li class="dropdown profile_details_drop">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
										<div class="profile_img">	
											<span class="prfil-img"><img src="admin/images/a.png" alt=""> </span> 
											<div class="clearfix"></div>	
										</div>
									</a>
									<ul class="dropdown-menu drp-mnu">
										<li> <a href="#"><i class="fa fa-cog"></i> Settings</a> </li> 
										<li> <a href="#"><i class="fa fa-user"></i> Profile</a> </li> 
										<li> <a href="login.html"><i class="fa fa-sign-out"></i> Logout</a> </li>
									</ul>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="profile_medile"><!--notifications of menu start -->
				<ul class="nofitications-dropdown">
					<li class="dropdown head-dpdn">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-envelope"></i><span class="badge">3</span></a>
							<ul class="dropdown-menu anti-dropdown-menu">
							<li>
								<div class="notification_header">
									<h3>You have 3 new messages</h3>
								</div>
							</li>
							<li><a href="#">
								 <div class="user_img"><img src="images/1.png" alt=""></div>
								 <div class="notification_desc">
									<p>Lorem ipsum dolor amet</p>
									<p><span>1 hour ago</span></p>
								</div>
								 <div class="clearfix"></div>	
								</a></li>
								<li class="odd"><a href="#">
								<div class="user_img"><img src="images/2.png" alt=""></div>
								<div class="notification_desc">
									<p>Lorem ipsum dolor amet </p>
									<p><span>1 hour ago</span></p>
								</div>
								<div class="clearfix"></div>	
								</a></li>
								<li><a href="#">
								<div class="user_img"><img src="images/3.png" alt=""></div>
								<div class="notification_desc">
									<p>Lorem ipsum dolor amet </p>
									<p><span>1 hour ago</span></p>
								</div>
								<div class="clearfix"></div>	
								</a></li>
								<li>
									<div class="notification_bottom">
										<a href="#">See all messages</a>
									</div> 
								</li>
							</ul>
					</li>
					<li class="dropdown head-dpdn">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-bell"></i><span class="badge blue">3</span></a>
						<ul class="dropdown-menu anti-dropdown-menu">
							<li>
								<div class="notification_header">
									<h3>You have 3 new notification</h3>
								</div>
							</li>
								<li><a href="#">
								<div class="user_img"><img src="images/2.png" alt=""></div>
									<div class="notification_desc">
										<p>Lorem ipsum dolor amet</p>
										<p><span>1 hour ago</span></p>
										</div>
									  <div class="clearfix"></div>	
								</a></li>
								<li class="odd"><a href="#">
									<div class="user_img"><img src="images/1.png" alt=""></div>
									 <div class="notification_desc">
										<p>Lorem ipsum dolor amet </p>
										<p><span>1 hour ago</span></p>
									</div>
									<div class="clearfix"></div>	
								</a></li>
								<li><a href="#">
									<div class="user_img"><img src="images/3.png" alt=""></div>
									 <div class="notification_desc">
										<p>Lorem ipsum dolor amet </p>
										<p><span>1 hour ago</span></p>
									</div>
									 <div class="clearfix"></div>	
								</a></li>
								<li>
									<div class="notification_bottom">
										<a href="#">See all notifications</a>
									</div> 
								</li>
						</ul>
					</li>	
				</ul>
			</div>
			<div class="header-right">
					<!--toggle button start-->
					<div class="search-box">
					<form class="input">
						<input class="sb-search-input input__field--madoka" placeholder="Search..." type="search" id="input-31">
					</form>
				</div>
				<button id="showLeftPush"><i class="fa fa-bars"></i></button>
				<div class="clearfix"> </div>
				<!--toggle button end-->
			</div>
			
			<div class="clearfix"> </div>	
		</div>
		
		<!-- //header-ends -->
		<div id="page-wrapper">
			<div class="main-page">
				<div class="four-grids">
					<div class="col-md-3 four-grid">
						<div class="four-grid1">
							<div class="icon">
								<i class="glyphicon glyphicon-user" aria-hidden="true"></i>
							</div>
							<c:forEach var="data" items="${list}">
							<div class="four-text">
								<h3>User</h3>
								<h4><c:out value="${data.userNum}" /></h4>
								<p> <span class="inlinebar">1,3,4,5,3,5</span> </p>
							</div>
							
							<a href="#" data-toggle="modal" data-target="#myModal1">More Info</a>
						</div>
					</div>
					<div class="col-md-3 four-grid">
						<div class="four-grid2">
							<div class="icon">
								<i class="glyphicon glyphicon-align-justify " aria-hidden="true"></i>
							</div>
							<div class="four-text">
								<h3>Sale</h3>
								<h4><c:out value="${data.orderSale}" /></h4>
								<p><span class="dynamicbar">Loading..</span></p>
							</div>
							<a href="#" data-toggle="modal" data-target="#myModal1">More Info</a>
						</div>
					</div>
					<div class="col-md-3 four-grid">
						<div class="four-grid3">
							<div class="icon">
								<i class="glyphicon glyphicon-bell" aria-hidden="true"></i>
							</div>
							<div class="four-text">
								<h3>Books</h3>
								<h4><c:out value="${data.bookNum}" /></h4>
								<p> <span class="inlinebar">1,3,4,5,3,5</span> </p>
							</div>
							
							<a href="#" data-toggle="modal" data-target="#myModal1">More Info</a>
						</div>
					</div>
					<div class="col-md-3 four-grid">
						<div class="four-grid4">
							<div class="icon">
								<i class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></i>
							</div>
							<div class="four-text">
								<h3>Orders</h3>
								<h4><c:out value="${data.orderNum}" /></h4>
								<p><span class="dynamicbar">Loading..</span></p>
							</div>
							</c:forEach>
							<a href="#" data-toggle="modal" data-target="#myModal1">More Info</a>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="play-grid">
				<script src="admin/js/amcharts.js" type="text/javascript"></script>
		<script src="admin/js/serial.js" type="text/javascript"></script>
		<script src="admin/js/amstock.js" type="text/javascript"></script>

		<script>
			AmCharts.ready(function () {
				generateChartData();
				createStockChart();
			});

			var chart;
			var chartData = [];
			var newPanel;
			var stockPanel;

			function generateChartData() {
				var firstDate = new Date();
				firstDate.setHours(0, 0, 0, 0);
				firstDate.setDate(firstDate.getDate() - 2000);

				for (var i = 0; i < 2000; i++) {
					var newDate = new Date(firstDate);

					newDate.setDate(newDate.getDate() + i);

					var open = Math.round(Math.random() * (30) + 100);
					var close = open + Math.round(Math.random() * (15) - Math.random() * 10);

					var low;
					if (open < close) {
						low = open - Math.round(Math.random() * 5);
					} else {
						low = close - Math.round(Math.random() * 5);
					}

					var high;
					if (open < close) {
						high = close + Math.round(Math.random() * 5);
					} else {
						high = open + Math.round(Math.random() * 5);
					}

					var volume = Math.round(Math.random() * (1000 + i)) + 100 + i;


					chartData[i] = ({
						date: newDate,
						open: open,
						close: close,
						high: high,
						low: low,
						volume: volume
					});
				}
			}

			function createStockChart() {
				chart = new AmCharts.AmStockChart();

				chart.balloon.horizontalPadding = 13;

				// DATASET //////////////////////////////////////////
				var dataSet = new AmCharts.DataSet();
				dataSet.fieldMappings = [{
					fromField: "open",
					toField: "open"
				}, {
					fromField: "close",
					toField: "close"
				}, {
					fromField: "high",
					toField: "high"
				}, {
					fromField: "low",
					toField: "low"
				}, {
					fromField: "volume",
					toField: "volume"
				}, {
					fromField: "value",
					toField: "value"
				}];
				dataSet.color = "#7f8da9";
				dataSet.dataProvider = chartData;
				dataSet.categoryField = "date";

				chart.dataSets = [dataSet];

				// PANELS ///////////////////////////////////////////
				stockPanel = new AmCharts.StockPanel();
				stockPanel.title = "Value";

				// graph of first stock panel
				var graph = new AmCharts.StockGraph();
				graph.type = "candlestick";
				graph.openField = "open";
				graph.closeField = "close";
				graph.highField = "high";
				graph.lowField = "low";
				graph.valueField = "close";
				graph.lineColor = "#f7aa47";
				graph.fillColors = "#f7aa47";
				graph.negativeLineColor = "#68b828";
				graph.negativeFillColors = "#68b828";
				graph.fillAlphas = 1;
				graph.balloonText = "open:<b>[[open]]</b><br>close:<b>[[close]]</b><br>low:<b>[[low]]</b><br>high:<b>[[high]]</b>";
				graph.useDataSetColors = false;
				stockPanel.addStockGraph(graph);

				var stockLegend = new AmCharts.StockLegend();
				stockLegend.markerType = "none";
				stockLegend.markerSize = 0;
				stockLegend.valueTextRegular = undefined;
				stockLegend.valueWidth = 250;
				stockPanel.stockLegend = stockLegend;

				chart.panels = [stockPanel];


				// OTHER SETTINGS ////////////////////////////////////
				var sbsettings = new AmCharts.ChartScrollbarSettings();
				sbsettings.graph = graph;
				sbsettings.graphType = "line";
				sbsettings.usePeriod = "WW";
				chart.chartScrollbarSettings = sbsettings;

				// Enable pan events
				var panelsSettings = new AmCharts.PanelsSettings();
				panelsSettings.panEventsEnabled = true;
				chart.panelsSettings = panelsSettings;

				// CURSOR
				var cursorSettings = new AmCharts.ChartCursorSettings();
				cursorSettings.valueBalloonsEnabled = true;
				cursorSettings.fullWidth = true;
				cursorSettings.cursorAlpha = 0.1;
				chart.chartCursorSettings = cursorSettings;

				// PERIOD SELECTOR ///////////////////////////////////
				var periodSelector = new AmCharts.PeriodSelector();
				periodSelector.position = "bottom";
				periodSelector.periods = [{
					period: "DD",
					count: 10,
					label: "10 days"
				}, {
					period: "MM",
					selected: true,
					count: 1,
					label: "1 month"
				}, {
					period: "YYYY",
					count: 1,
					label: "1 year"
				}, {
					period: "YTD",
					label: "YTD"
				}, {
					period: "MAX",
					label: "MAX"
				}];
				chart.periodSelector = periodSelector;


				chart.write('chartdiv');
			}



			function addPanel() {
				newPanel = new AmCharts.StockPanel();
				newPanel.allowTurningOff = true;
				newPanel.title = "Volume";
				newPanel.showCategoryAxis = false;

				var graph = new AmCharts.StockGraph();
				graph.valueField = "volume";
				graph.fillAlphas = 0.15;
				newPanel.addStockGraph(graph);

				var legend = new AmCharts.StockLegend();
				legend.markerType = "none";
				legend.markerSize = 0;
				newPanel.stockLegend = legend;

				chart.addPanelAt(newPanel, 1);
				chart.validateNow();

				document.getElementById("addPanelButton").disabled = true;
				document.getElementById("removePanelButton").disabled = false;
			}

			function removePanel() {
				chart.removePanel(newPanel);
				chart.validateNow();

				document.getElementById("addPanelButton").disabled = false;
				document.getElementById("removePanelButton").disabled = true;
			}

		</script>
		
	<input type="button" id="addPanelButton" onclick="addPanel()" value="add panel" />
		<input type="button" disabled="true" id="removePanelButton" onclick="removePanel()"
		value="remove panel" />
		<div id="chartdiv"></div>
				</div>

				<div class="piechat-section">
					<div class="col-md-4 pie-chat">
						<div class="content-top-1">
							<div class="col-md-6 top-content">
								<h5>Tasks</h5>
								<label>9836</label>
							</div>
							<div class="col-md-6 top-content1">	   
								<div id="demo-pie-1" class="pie-title-center" data-percent="25"> <span class="pie-value"></span> </div>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>
					<div class="col-md-4 pie-chat">
						<div class="content-top-1">
							<div class="col-md-6 top-content">
								<h5>Points</h5>
								<label>9836</label>
							</div>
							<div class="col-md-6 top-content1">	   
								<div id="demo-pie-2" class="pie-title-center" data-percent="50"> <span class="pie-value"></span> </div>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>
					<div class="col-md-4 pie-chat">
						<div class="content-top-1">
							<div class="col-md-6 top-content">
								<h5>Cards</h5>
								<label>5689</label>
							</div>
							<div class="col-md-6 top-content1">	   
								<div id="demo-pie-3" class="pie-title-center" data-percent="75"> <span class="pie-value"></span> </div>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
					
				<div class="clearfix"> </div>
			</div>
			</div>
			<div class="copy-section">
				<p><small>Copyright &copy; 2018, All Rights Reserved.<br />出版物经营许可证 新出发京批字第直0673号  | 京公网安备110101000001号</small></p>
		</div>
	</div>
			<!-- Classie -->
				<script src="admin/js/classie.js"></script>
				<script>
					var menuLeft = document.getElementById( 'cbp-spmenu-s1' ),
						showLeftPush = document.getElementById( 'showLeftPush' ),
						body = document.body;
						
					showLeftPush.onclick = function() {
						classie.toggle( this, 'active' );
						classie.toggle( body, 'cbp-spmenu-push-toright' );
						classie.toggle( menuLeft, 'cbp-spmenu-open' );
						disableOther( 'showLeftPush' );
					};
					

					function disableOther( button ) {
						if( button !== 'showLeftPush' ) {
							classie.toggle( showLeftPush, 'disabled' );
						}
					}
				</script>
			<!-- Bootstrap Core JavaScript --> 
				
				<script type="text/javascript" src="admin/js/bootstrap.min.js"></script>
				<!--scrolling js-->
				<script src="admin/js/jquery.nicescroll.js"></script>
				<script src="admin/js/scripts.js"></script>
				<link href="admin/css/bootstrap.min.css" rel="stylesheet" />

				<!--//scrolling js-->
				<div class="modal fade" id="myModal1" tabindex="-1" role="dialog">
				<div class="modal-dialog" role="document">
					<div class="modal-content modal-info">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						</div>
						<div class="modal-body">
							<div class="more-grids">
									<h3>New Message </h3>
									<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae.</p>
									  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
							</div>
						</div>
					</div>
				</div>
			</div>
</body>
</html>