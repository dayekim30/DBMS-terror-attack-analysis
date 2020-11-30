<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
	<div id="main">

				<!-- One -->
					<section id="one">
						<header class="major">
							<h2>GROUP1 - Terror attack analysis<br />
							there is critical information.</h2>
						</header>
						<p>HEELO</p>
						<ul class="actions">
							<li><a href="#" class="button">Learn More</a></li>
						</ul>
					</section>

				<!-- Two -->
					<section id="two">
						<h2>Recent Work</h2>
						<table>
							<c:forEach var="n" items = "${list}">
							<tr>
								<td>${n.getWep_type()}</td>
								<td>${n.getEvent_year()}</td>
								<td>${n.getNum()}</td>
							</tr>
							</c:forEach>
						</table>	
												
					</section>
							

				<!-- Three -->
					<section id="three">
						<h2>Get In Touch</h2>
						<p>Accumsan pellentesque commodo blandit enim arcu non at amet id arcu magna. Accumsan orci faucibus id eu lorem semper nunc nisi lorem vulputate lorem neque lorem ipsum dolor.</p>
						<div class="row">
						
					 	<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
					    <script type="text/javascript">
					      google.charts.load('current', {'packages':['corechart']});
					      google.charts.setOnLoadCallback(drawChart);

						
						var year = new Array();
						var num = new Array();
						var count = 0;
						
							
					      function drawChart() {
							var i;
							var arr=[];
						
							arr.push(['year','Chemical']);
							

							for (i=0;i<count;i++){
								arr.push([year[i], num[i]]);			
								
								}

						      
					        var data = google.visualization.arrayToDataTable(arr);
					
					        var options = {
					          title: 'WEAPON TYPE TRAND',
					          curveType: 'function',
					          legend: { position: 'bottom' }
					        };
					
					        var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));
					
					        chart.draw(data, options);
					      }
					    </script>
					     <c:forEach items="${list}" var="item">
			  				<script type="text/javascript" >
				    		/*<![CDATA[*/
				      		
				      		year[count] = ${item.getEvent_year()};
				      		year[count] = year[count].toString();
				      		num[count] = ${item.getNum()};
				      		count++;
				      		//Console.log(year[count]);
				    		/*]]>*/
		  						</script>
						 </c:forEach>
					    
					    
					    <div id="curve_chart" style="width: 1000px; height: 500px"></div>
						</div>
					</section>

			

			</div>
