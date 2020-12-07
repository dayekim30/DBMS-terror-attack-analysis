<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
	<div id="main">

				<!-- One -->
					<section id="one">
						<header class="major">
							<h2>Trends of top10 terrorist groups attack type<br />
<!-- 							there is critical information.</h2> -->
						</header>
						<p>QUERY 8. Attack, Event: is there a trend b/t the TOP10 terrorist groups and their types of attacks?</p>
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
					      var UnarmedAssault= new Array();
					      var ArmedAssault= new Array();
					      var Hijacking= new Array();
					      var HostageTaking= new Array();
					      var Bombing= new Array();
					      var Facility= new Array();
					      var Assassination= new Array();
					      var Kidnapping= new Array();
					      var count =0;
							
					      function drawChart() {
							var i;
							var arr=[];
						
							arr.push(['year','UnarmedAssault','ArmedAssault','Hijacking','HostageTaking','Bombing','Facility','Assassination','Kidnapping']);
							

							for (i=0;i<count;i++){
								arr.push([year[i], UnarmedAssault[i],ArmedAssault[i],Hijacking[i],HostageTaking[i],Bombing[i],Facility[i],Assassination[i],Kidnapping[i]]);			
								}

						      
					        var data = google.visualization.arrayToDataTable(arr);
					
					        var options = {
					          title: 'TOP10 Terrorist Groups Attack Type',
					          curveType: 'function',
					          legend: { position: 'bottom' }
					        };
					
					        var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));
					
					        chart.draw(data, options);
					      }
					    </script>
					     <c:forEach items="${TerroristTrendList}" var="n">
			  				<script type="text/javascript" >
				    		/*<![CDATA[*/
				      		
				      		year[count] = ${n.getEvent_year()};
				      		year[count] = year[count].toString();
				      		UnarmedAssault[count] = ${n.getUnarmedAssault()};
				      		ArmedAssault[count]= ${n.getArmedAssault()};
				      		Hijacking[count]=${n.getHijacking()};
				      		HostageTaking[count]=${n.getHostageTaking()};
				      		Bombing[count]=${n.getBombing()};
				      		Facility[count]= ${n.getFacility()};
				      		Assassination[count]= ${n.getAssassination()};
				      		Kidnapping[count]= ${n.getKidnapping()};
				      		count++;
				      		//Console.log(year[count]);
				    		/*]]>*/
		  						</script>
						 </c:forEach>
					    
					    
					    <div id="curve_chart" style="width: 1000px; height: 500px"></div>
						</div>
					</section>

			

			</div>