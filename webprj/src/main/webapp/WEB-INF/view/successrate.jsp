<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
	<div id="main">

				<!-- One -->
					<section id="one">
						<header class="major">
							<h2>Trends of success rate</h2>
<!-- 							there is critical information.</h2> -->
						</header>
						<p>QUERY 10. Attack, Location, Event: successful attack rate, user select gang, display a line graph in which each line is a region?</p>
						<ul class="actions">
						</ul>
					</section>

				<!-- Two -->
<!-- 					<section id="two"> -->
<!-- 						<h2>Recent Work</h2> -->
<!-- 						<table> -->
<%-- 							<c:forEach var="n" items = "${list}"> --%>
<!-- 							<tr> -->
<%-- 								<td>${n.getWep_type()}</td> --%>
<%-- 								<td>${n.getEvent_year()}</td> --%>
<%-- 								<td>${n.getNum()}</td> --%>
<!-- 							</tr> -->
<%-- 							</c:forEach> --%>
<!-- 						</table>	 -->
												
<!-- 					</section> -->
							

				<!-- Three -->
					<section id="three">
						<h2>Visualization</h2>
						<div class="row">
						
					 	<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
					    <script type="text/javascript">
					      google.charts.load('current', {'packages':['corechart']});
					      google.charts.setOnLoadCallback(drawChart);

					      var year = new Array();
					      var CentralAmericaAndCaribbean= new Array();
					      var AustralasiaAndOceania= new Array();
					      var SouthAmerica= new Array();
					      var CentralAsia= new Array();
					      var MiddleEastAndNorthAfrica= new Array();
					      var EastAsia= new Array();
					      var SouthAsia= new Array();
					      var EasternEurope= new Array();
					      var Southeastasia= new Array();
					      var WesternEurope=new Array();
					      var SubSaharanAfrica= new Array();
					      var NorthAmerica= new Array();
					      var count =0;
							
					      function drawChart() {
							var i;
							var arr=[];
						
							arr.push(['year','CentralAmericaAndCaribbean','AustralasiaAndOceania','SouthAmerica','CentralAsia','MiddleEastAndNorthAfrica','EastAsia','SouthAsia','EasternEurope',
								'Southeastasia','WesternEurope','SubSaharanAfrica','NorthAmerica']);
							

							for (i=0;i<count;i++){
								arr.push([year[i], CentralAmericaAndCaribbean[i],AustralasiaAndOceania[i],SouthAmerica[i],CentralAsia[i],MiddleEastAndNorthAfrica[i],EastAsia[i]
								,SouthAsia[i],EasternEurope[i],Southeastasia[i],WesternEurope[i],SubSaharanAfrica[i],NorthAmerica[i]]);			
								
								}

						      
					        var data = google.visualization.arrayToDataTable(arr);
					
					        var options = {
					          title: 'Success Rate Trend',
					          curveType: 'function',
					          legend: { position: 'bottom' }
					        };
					
					        var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));
					
					        chart.draw(data, options);
					      }
					    </script>
					     <c:forEach items="${SuccessRateList}" var="n">
			  				<script type="text/javascript" >
				    		/*<![CDATA[*/
				      		
				      		year[count] = ${n.getEvent_year()};
				      		year[count] = year[count].toString();
				      		CentralAmericaAndCaribbean[count] = ${n.getCentralAmericaAndCaribbean()};
				      		AustralasiaAndOceania[count]= ${n.getAustralasiaAndOceania()};
				      		SouthAmerica[count]=${n.getSouthAmerica()};
				      		CentralAsia[count]=${n.getCentralAsia()};
				      		MiddleEastAndNorthAfrica[count]=${n.getMiddleEastAndNorthAfrica()};
				      		EastAsia[count]= ${n.getEastAsia()};
				      		SouthAsia[count]= ${n.getSouthAsia()};
				      		EasternEurope[count]= ${n.getEasternEurope()};
				      		Southeastasia[count]= ${n.getSoutheastasia()};
				      		WesternEurope[count]=${n.getWesternEurope()};
				      		SubSaharanAfrica[count]=${n.getSubSaharanAfrica()};
				      		NorthAmerica[count]=${n.getNorthAmerica()};
				      		count++;
				      		//Console.log(year[count]);
				    		/*]]>*/
		  						</script>
						 </c:forEach>
					    
					    
					    <div id="curve_chart" style="width: 2000px; height: 500px"></div>
						</div>
					</section>

			

			</div>