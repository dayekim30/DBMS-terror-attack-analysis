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
					      var country_code2 = new Array();
					      var country_name2 = new Array();
					      var property_damage2 = new Array();
					      var fatality2 = new Array();
					      var frequency2 = new Array();
					      
					      var count2 =0;

					      var country_code3 = new Array();
					      var country_name3 = new Array();
					      var property_damage3 = new Array();
					      var fatality3 = new Array();
					      var frequency3 = new Array();
					      
					      var count3 =0;
							
					      function drawSeriesChart(){
							var i;
							var i2;
							var i3;
							var arr=[];
							var arr2=[];
							var arr3=[];
							arr.push(['country_code','frequency','fatality','country_name','property_damage']);
							
							arr2.push(['country_code','frequency','fatality','country_name','property_damage']);
							arr3.push(['country_code','frequency','fatality','country_name','property_damage']);
							for (i=0;i<count;i++){
								arr.push([country_code[i], frequency[i], fatality[i], country_name[i], property_damage[i]]);			
								}
							for (i2=0;i2<count2;i2++){
								arr2.push([country_code2[i2], frequency2[i2], fatality2[i2], country_name2[i2], property_damage2[i2]]);			
								}
							for (i3=0;i3<count3;i3++){
								arr3.push([country_code3[i3], frequency3[i3], fatality3[i3], country_name3[i3], property_damage3[i3]]);			
								}
						      
					        var data = google.visualization.arrayToDataTable(arr);
					        var data2 = google.visualization.arrayToDataTable(arr2);
					        var data3 = google.visualization.arrayToDataTable(arr3);
					        var options = {
					                title: 'X axis: The Number of Terror Attack  Y axis: The Number of Victims Raidus of Bubbld: The size of bubble : The Amount of Property Damage',
					                hAxis: {title: 'frequency',
					                		viewWindow: {max:5000}
	                						},
					                vAxis: {title: 'fatality',
					                	    viewWindow:{max:20000}
						                	   },
					                bubble: {textStyle: {fontSize: 11}}
					              };
					        var options2 = {
					                title: 'X axis: The Number of Terror Attack  Y axis: The Number of Victims Raidus of Bubbld: The size of bubble : The Amount of Property Damage',
					                hAxis: {title: 'frequency',
					                		viewWindow: {max:50}
	                						},
					                vAxis: {title: 'fatality',
					                	    maxValue:50000,
					                	    viewWindow:{max:100}},
					                bubble: {textStyle: {fontSize: 11}}
					              };
					        var options3 = {
					                title: 'X axis: The Number of Terror Attack  Y axis: The Number of Victims Raidus of Bubbld: The size of bubble : The Amount of Property Damage',
					                hAxis: {title: 'frequency',
					                		
	                						},
					                vAxis: {title: 'fatality',
					                	    },
					                bubble: {textStyle: {fontSize: 11}}
					              };
					        var chart = new google.visualization.BubbleChart(document.getElementById('series_chart_div'));
					        var chart2 = new google.visualization.BubbleChart(document.getElementById('series_chart_div2'));
					        var chart3 = new google.visualization.BubbleChart(document.getElementById('series_chart_div3'));
					        chart.draw(data, options);
					        chart2.draw(data2, options2);
					        chart3.draw(data3, options3);
					      }
					    </script>
					     <c:forEach items="${list}" var="n">
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
						   <c:forEach items="${list2}" var="n">
			  				<script type="text/javascript" >
				    		/*<![CDATA[*/
				      		//var temp=${n.getCountry_name()}
				      		country_code2[count2] = "${n.getCountry_name()}";
				      	
				      		property_damage2[count2] = ${n.getProperty_damage()};
				      		fatality2[count2] = ${n.getFatality()};
				      		country_name2[count2] = "${n.getCountry_name()}";
				      		//country_name[count] = country_name[count].toString();
				      		frequency2[count2] = ${n.getFrequency()};
						  
				      		count2++;
				      		
				    		/*]]>*/
		  						</script>
						 </c:forEach>
						 
						 <c:forEach items="${list3}" var="n">
			  				<script type="text/javascript" >
				    		/*<![CDATA[*/
				      		//var temp=${n.getCountry_name()}
				      		country_code3[count3] = "${n.getCountry_name()}";
				      	
				      		property_damage3[count3] = ${n.getProperty_damage()};
				      		fatality3[count3] = ${n.getFatality()};
				      		country_name3[count3] = "${n.getCountry_name()}";
				      		//country_name[count] = country_name[count].toString();
				      		frequency3[count3] = ${n.getFrequency()};
						  
				      		count3++;
				      		
				    		/*]]>*/
		  						</script>
						 </c:forEach>
						 
						 
					   <div id="series_chart_div3" style="width: 1000px; height: 500px;"></div>
						
					    
					  <div id="series_chart_div" style="width: 1000px; height: 500px;"></div>
						
						 <div id="series_chart_div2" style="width: 1000px; height: 500px;"></div>
						</div>
					</section>

			

			</div>