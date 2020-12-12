<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
	<div id="main">

				<!-- One -->
					<section id="one">
						<header class="major">
							<h2> Weapon Trends<br> </h2>
						</header>
						<p>This trend shows the frequency of the different types of weapons used over
	the years.</p>
						<ul class="actions">
						</ul>
					</section>

					<section id="three">
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

					      var year2 = new Array();
					      var Biological2= new Array();
					      var Chemical2= new Array();
					      var Explosives2= new Array();
					      var Fake_Weapons2= new Array();
					      var Firearms2= new Array();
					      var Incendiary2= new Array();
					      var Meleev2= new Array();
					      var Other2= new Array();
					      var Radiological2= new Array();
					      var Sabotage_Equipment2=new Array();
					      var Vehicle2= new Array();
					      var count2 =0;
							
					      function drawChart() {
							var i;
							var i2;
							var arr=[];
							var arr2=[];
						
							arr.push(['year','Biological','Chemical','Explosives','Fake_Weapons','Firearms','Incendiary','Meleev','Other',
								'Radiological','Sabotage_Equipment','Vehicle']);
							arr2.push(['year','Biological','Chemical','Explosives','Fake_Weapons','Firearms','Incendiary','Meleev','Other',
								'Radiological','Sabotage_Equipment','Vehicle']);

							for (i=0;i<count;i++){
								arr.push([year[i], Biological[i],Chemical[i],Explosives[i],Fake_Weapons[i],Firearms[i],Incendiary[i]
								,Meleev[i],Other[i],Radiological[i],Sabotage_Equipment[i],Vehicle[i]]);			
								
								}

							for (i2=0;i2<count2;i2++){
								arr2.push([year2[i2], Biological2[i2],Chemical2[i2],Explosives2[i2],Fake_Weapons2[i2],Firearms2[i2],
									Incendiary2[i2],Meleev2[i2],Other2[i2],Radiological2[i2],Sabotage_Equipment2[i2],Vehicle2[i2]]);			
								}

						      
					        var data = google.visualization.arrayToDataTable(arr);
					        var data2 = google.visualization.arrayToDataTable(arr2);
					
					        var options = {
					          title: 'Weapon Type Trend',
					          curveType: 'function',
					          legend: { position: 'bottom' }
					        };

					        var options2 = {
							          title: 'Weapon Type Trend »2000',
							          curveType: 'function',
							          legend: { position: 'bottom' }
							        };
					
					        var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));
					        var chart2 = new google.visualization.LineChart(document.getElementById('curve_chart2'));
					
					        chart.draw(data, options);
					        //chart2.draw(data2, options2);
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
						 
						 <c:forEach items="${wplist2}" var="n">
			  				<script type="text/javascript" >
				    		/*<![CDATA[*/
				      		
				      		year2[count2] = ${n.getEvent_year()};
				      		year2[count2] = year2[count2].toString();
				      		Biological2[count2] = ${n.getBiological()};
				      		Chemical2[count2]= ${n.getChemical()};
						    Explosives2[count2]=${n.getExplosives()};
						    Fake_Weapons2[count2]=${n.getFake_Weapons()};
						    Firearms2[count2]=${n.getFirearms()};
						    Incendiary2[count2]= ${n.getIncendiary()};
						    Meleev2[count2]= ${n.getMelee()};
						    Other2[count2]= ${n.getOther()};
						    Radiological2[count2]= ${n.getRadiological()};
						    Sabotage_Equipment2[count2]=${n.getSabotage_Equipment()};
						    Vehicle2[count2]=${n.getVehicle()};
				      		count2++;
				      		//Console.log(year[count]);
				    		/*]]>*/
		  						</script>
						 </c:forEach>
					    
					    <div id="curve_chart" style="width: 1000px; height: 500px"></div>
						<div id="curve_chart2" style="width: 1000px; height: 500px"></div>
						</div>
					</section>

			

			</div>