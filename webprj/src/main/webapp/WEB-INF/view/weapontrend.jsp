<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
	<div id="main">

				<!-- One -->
					<section id="one">
						<header class="major">
							<h2>Trends of Weapon type<br />
<!-- 							there is critical information.</h2> -->
						</header>
						<p>QUERY 2. Weapon, Event: Is there a trend between the most common weapons used over the years?</p>
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
						<p>Accumsan pellentesque commodo blandit enim arcu non at amet id arcu magna. Accumsan orci faucibus id eu lorem semper nunc nisi lorem vulputate lorem neque lorem ipsum dolor.</p>
						<div class="row">
						
					 	<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
					    <script type="text/javascript">
					      google.charts.load('current', {'packages':['corechart']});
					      google.charts.setOnLoadCallback(drawChart);

					      var year = new Array();
					      var Biological= new Array();
					      var Chemical= new Array();
					      var Explosives= new Array();
					      var Fake_Weapons= new Array();
					      var Firearms= new Array();
					      var Incendiary= new Array();
					      var Meleev= new Array();
					      var Other= new Array();
					      var Radiological= new Array();
					      var Sabotage_Equipment=new Array();
					      var Vehicle= new Array();
					      var count =0;
							
					      function drawChart() {
							var i;
							var arr=[];
						
							arr.push(['year','Biological','Chemical','Explosives','Fake_Weapons','Firearms','Incendiary','Meleev','Other',
								'Radiological','Sabotage_Equipment','Vehicle']);
							

							for (i=0;i<count;i++){
								arr.push([year[i], Biological[i],Chemical[i],Explosives[i],Fake_Weapons[i],Firearms[i],Incendiary[i]
								,Meleev[i],Other[i],Radiological[i],Sabotage_Equipment[i],Vehicle[i]]);			
								
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
					     <c:forEach items="${wplist}" var="n">
			  				<script type="text/javascript" >
				    		/*<![CDATA[*/
				      		
				      		year[count] = ${n.getEvent_year()};
				      		year[count] = year[count].toString();
				      		Biological[count] = ${n.getBiological()};
				      		Chemical[count]= ${n.getChemical()};
						    Explosives[count]=${n.getExplosives()};
						    Fake_Weapons[count]=${n.getFake_Weapons()};
						    Firearms[count]=${n.getFirearms()};
						    Incendiary[count]= ${n.getIncendiary()};
						    Meleev[count]= ${n.getMelee()};
						    Other[count]= ${n.getOther()};
						    Radiological[count]= ${n.getRadiological()};
						    Sabotage_Equipment[count]=${n.getSabotage_Equipment()};
						    Vehicle[count]=${n.getVehicle()};
				      		count++;
				      		//Console.log(year[count]);
				    		/*]]>*/
		  						</script>
						 </c:forEach>
					    
					    
					    <div id="curve_chart" style="width: 1000px; height: 500px"></div>
						</div>
					</section>

			

			</div>