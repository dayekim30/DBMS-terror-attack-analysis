<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
	<div id="main">

				<!-- One -->
					<section id="one">
						<header class="major">
							<h2>Correlation between property damage, fatality<br />
  							and frequency of terror attack of countries (21s)</h2>
						</header>
						<p>QUERY 11. lets see how it works?</p>
						<ul class="actions">
							<li><a href="#" class="button">Learn More</a></li>
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
						<h2>Get In Touch</h2>
						<p>Aaron: what shoud we wirte here?
					</p>
						<div class="row">
						
					 	<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
					    <script type="text/javascript">
					      google.charts.load('current', {'packages':['corechart']});
					      google.charts.setOnLoadCallback(drawSeriesChart);

					      var country_code = new Array();
					      var country_name = new Array();
					      var property_damage = new Array();
					      var fatality = new Array();
					      var frequency = new Array();
					      
					      var count =0;
							
					      function drawSeriesChart(){
							var i;
							var arr=[];
						
							arr.push(['country_code','frequency','fatality','country_name','property_damage']);
							

							for (i=0;i<count;i++){
								arr.push([country_code[i], frequency[i], fatality[i], country_name[i], property_damage[i]]);			
								}

						      
					        var data = google.visualization.arrayToDataTable(arr);
					
					        var options = {
					                title: 'X axis: The Number of Terror Attack  Y axis: The Number of Victims Raidus of Bubbld: The size of bubble : The Amount of Property Damage',
					                hAxis: {title: 'frequency',
					                		viewWindow: {max:5000}
	                						},
					                vAxis: {title: 'fatality',
					                	    maxValue:50000,
					                	    viewWindow:{max:20000}},
					                bubble: {textStyle: {fontSize: 11}}
					              };
					        var chart = new google.visualization.BubbleChart(document.getElementById('series_chart_div'));
					        chart.draw(data, options);
					      }
					    </script>
					     <c:forEach items="${region}" var="n">
			  				<script type="text/javascript" >
				    		/*<![CDATA[*/
				      		//var temp=${n.getCountry_name()}
				      		country_code[count] = "${n.getCountry_name()}";
				      	
				      		property_damage[count] = ${n.getProperty_damage()};
				      		fatality[count] = ${n.getFatality()};
				      		country_name[count] = "${n.getCountry_name()}";
				      		//country_name[count] = country_name[count].toString();
				      		frequency[count] = ${n.getFrequency()};
						  
				      		count++;
				      		
				    		/*]]>*/
		  						</script>
						 </c:forEach>
					    
					    
					  <div id="series_chart_div" style="width: 1000px; height: 500px;"></div>
						</div>
					</section>

			

			</div>