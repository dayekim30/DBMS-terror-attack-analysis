<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
	<div id="main">

				<!-- One -->
					<section id="one">
						<header class="major">
							<h2>Top 10 Terrorist Group Trends<br></h2>
<!-- 							there is critical information.</h2> -->
						</header>
						<p>For a given time period, this trend shows the top 10 most active terrorist groups
	and their relationship with the types of attacks the group uses.</p>
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
						<div class="row">
						
					 	<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
					    <script type="text/javascript">
					      google.charts.load('current', {'packages':['corechart']});
					      google.charts.setOnLoadCallback(drawChart);
					      google.charts.load('current', {'packages':['bar']});
					      google.charts.load('current', {'packages':['table']});
					      google.charts.setOnLoadCallback(drawTable);

					      function drawTable() 
					      {
					        var data = new google.visualization.DataTable();
					        data.addColumn('string', 'Month');
					        data.addColumn('string', 'Max gang');
					        data.addColumn('string', 'Min gang');


					        var i = 0;
					        for(i = 0; i < count3; i++)
					        {
					          data.addRows([
					            [month[i], gang_max[i],gang_min[i]]
					            ]);
					        }


					        var table = new google.visualization.Table(document.getElementById('table_div'));

					        table.draw(data, {width: '100%', height: '100%'});
					      }
					      
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

					      var year2 = new Array();
					      var UnarmedAssault2= new Array();
					      var ArmedAssault2= new Array();
					      var Hijacking2= new Array();
					      var HostageTaking2= new Array();
					      var Bombing2= new Array();
					      var Facility2= new Array();
					      var Assassination2= new Array();
					      var Kidnapping2= new Array();
					      var count2 =0;

					       var month=[];
				      		//month[count3] = year2[count2].toString();
				      		var gang_max=[];
				      		var max=[];
				      		var gang_min=[];
				      		var min=[];	
				      		var count3=0;
					      function drawChart() {
							var i;
							var i2;
							var i3;
							var arr=[];
							var arr2=[];
						    var arr3=[];
						    var arr4=[];
							arr.push(['year','UnarmedAssault','ArmedAssault','Hijacking','HostageTaking','Bombing','Facility',
								'Assassination','Kidnapping']);
							
							arr2.push(['year','UnarmedAssault','ArmedAssault','Hijacking','HostageTaking','Bombing','Facility',
								'Assassination','Kidnapping']);
							arr3.push(['Month','Maximum']);
							arr4.push(['Month','Minimum']);
							for (i=0;i<count;i++){
								arr.push([year[i], UnarmedAssault[i],ArmedAssault[i],Hijacking[i],HostageTaking[i],Bombing[i],
									Facility[i],Assassination[i],Kidnapping[i]]);			
								}
							
							for (i2=0;i2<count2;i2++){
								arr2.push([year2[i2], UnarmedAssault2[i2],ArmedAssault2[i2],Hijacking2[i2],HostageTaking2[i2],Bombing2[i2],
									Facility2[i2],Assassination2[i2],Kidnapping2[i2]]);			
								}
							for (i3=0;i3<count3;i3++){
								arr3.push([month[i3],max[i3]]);	
								arr4.push([month[i3],min[i3]]);		
								}
						      
					        var data = google.visualization.arrayToDataTable(arr);
					        var data2 = google.visualization.arrayToDataTable(arr2);
					        
					        var options = {
					          title: 'TOP10 Terrorist Groups Attack Type Trend Based on Year',
					          curveType: 'function',
					          legend: { position: 'bottom' }
					        };

					        var options2 = {
							          title: 'TOP10 Terrorist Groups Attack Type Trend Based on Month',
							          curveType: 'function',
							          legend: { position: 'bottom' }
							        };
							
					        var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));
					        var chart2 = new google.visualization.LineChart(document.getElementById('curve_chart2'));
					        var topdata = new google.visualization.arrayToDataTable(arr3);
					        var topdata2 = new google.visualization.arrayToDataTable(arr4);

					          var options3 = {
					            width: 800,
					            chart: {
					              title: 'Maximum number of attacks by any individual group Month-Wise ',
					              subtitle: 'Name of Gang is in the Table'
					            },
					            bars: 'horizontal', // Required for Material Bar Charts.
					            series: {
					              0: { axis: 'Maximum' } // Bind series 0 to an axis named 'distance'.
					              }, // Bind series 1 to an axis named 'brightness'.
					            
					            axes: {
					              x: {
					                distance: {label: 'Attacks'}, // Bottom x-axis.
					                brightness: {side: 'top', label: 'apparent magnitude'} // Top x-axis.
					              }
					            }
					          };
					          var options4 = {
							            width: 800,
							            chart: {
							              title: 'Minimum number of attacks by any individual group Month-Wise',
							              subtitle: 'Name of Gang is in the Table'
							            },
							            bars: 'horizontal', // Required for Material Bar Charts.
							            series: {
							              0: { axis: 'Minimum',color:'red' } // Bind series 0 to an axis named 'distance'.
							              }, // Bind series 1 to an axis named 'brightness'.
							            
							            axes: {
							              x: {
							                distance: {label: 'Attacks'}, // Bottom x-axis.
							                brightness: {side: 'top', label: 'apparent magnitude'} // Top x-axis.
							              }
							            }
							          };

					        var chart3 = new google.charts.Bar(document.getElementById('dual_x_div'));
					        var chart4 = new google.charts.Bar(document.getElementById('dual_x_div2'));
					        
					        chart3.draw(topdata, options3);
					        chart4.draw(topdata2,options4);
					        chart.draw(data, options);
					        chart2.draw(data2, options2);
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
						 
						 <c:forEach items="${TerroristTrendList2}" var="n">
			  				<script type="text/javascript" >
				    		/*<![CDATA[*/
				      		
				      		year2[count2] = ${n.getEvent_year()};
				      		year2[count2] = year2[count2].toString();
				      		UnarmedAssault2[count2] = ${n.getUnarmedAssault()};
				      		ArmedAssault2[count2]= ${n.getArmedAssault()};
				      		Hijacking2[count2]=${n.getHijacking()};
				      		HostageTaking2[count2]=${n.getHostageTaking()};
				      		Bombing2[count2]=${n.getBombing()};
				      		Facility2[count2]= ${n.getFacility()};
				      		Assassination2[count2]= ${n.getAssassination()};
				      		Kidnapping2[count2]= ${n.getKidnapping()};
				      		count2++;
				      		//Console.log(year[count]);
				    		/*]]>*/
		  						</script>
						 </c:forEach>
						 <c:forEach items="${Top10Terrorist}" var="n">
			  				<script type="text/javascript" >
				    		/*<![CDATA[*/
				      		
				      		month[count3] = "${n.getMonth()}";
				      		//month[count3] = year2[count2].toString();
				      		gang_max[count3] = "${n.getGang_max()}";
				      		max[count3]= ${n.getMax()};
				      		gang_min[count3]="${n.getGang_min()}";
				      		min[count3]=${n.getMin()};
				      		
				      		count3++;
				      		//Console.log(year[count]);
				    		/*]]>*/
		  						</script>
						 </c:forEach>
						 <section> <div id="dual_x_div" style="width: 400px; height: 500px"></div></section>
					    
					    <div id="dual_x_div2" style="width: 1000px; height: 500px;margin-top: 2.5em"></div>
					     <div style="margin-left: 2.5em;margin-top: 2.5em" id="table_div" style="width: 1000px; height: 500px"></div>
					    
					    <div id="curve_chart" style="width: 1000px; height: 500px"></div>
						
						<div id="curve_chart2" style="width: 1000px; height: 500px"></div>
						</div>
						
					</section>

			

			</div>