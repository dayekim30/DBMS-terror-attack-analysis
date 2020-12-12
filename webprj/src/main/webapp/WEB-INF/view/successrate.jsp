<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
	<div id="main">

				<!-- One -->
					<section id="one">
						<header class="major">
							<h2>Regional Terrorist Attack Success Rate Trends</h2>
<!-- 							there is critical information.</h2> -->
						</header>
						<p>For a selected area, this trend shows the relationship between the regional
	and terrorist attack's success rates for their attacks over 40 years.</p>
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
						<label for="areaa">Choose an Area:</label>

                       <select name="areas" id="areas">
						  <option value="CentralAmericaAndCaribbean">CentralAmericaAndCaribbean</option>
						  <option value="AustralasiaAndOceania">AustralasiaAndOceania</option>
						  <option value="SouthAmerica">SouthAmerica</option>
						  <option value="CentralAsia">CentralAsia</option>
						  <option value="MiddleEastAndNorthAfrica">MiddleEastAndNorthAfrica</option>
						  <option value="EastAsia">EastAsia</option>
						  <option value="SouthAsia">SouthAsia</option>
						  <option value="EasternEurope">EasternEurope</option>
						  <option value="Southeastasia">Southeastasia</option>
						  <option value="WesternEurope">WesternEurope</option>
						  <option value="SubSaharanAfrica">SubSaharanAfrica</option>
						  <option value="NorthAmerica">NorthAmerica</option>
						</select>
					 	<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
					    <script type="text/javascript">
					      google.charts.load('current', {'packages':['corechart']});
					      google.charts.setOnLoadCallback(drawChart);
					      var select = document.getElementById("areas");
					      var curr="CentralAmericaAndCaribbean";
					      select.onchange = function(){
					    	  var e = document.getElementById("areas");
					    	  var value = e.options[e.selectedIndex].value;
					          var text = e.options[e.selectedIndex].text;
					          curr=text;
					    	  drawChart();
			                 };
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
						
							//arr.push(['year','CentralAmericaAndCaribbean','AustralasiaAndOceania','SouthAmerica','CentralAsia','MiddleEastAndNorthAfrica','EastAsia','SouthAsia','EasternEurope',
								//'Southeastasia','WesternEurope','SubSaharanAfrica','NorthAmerica']);
							
                            arr.push(['year','SuccessRate'])
							for (i=0;i<count;i++){
								//arr.push([year[i], CentralAmericaAndCaribbean[i],AustralasiaAndOceania[i],SouthAmerica[i],CentralAsia[i],MiddleEastAndNorthAfrica[i],EastAsia[i]
								//,SouthAsia[i],EasternEurope[i],Southeastasia[i],WesternEurope[i],SubSaharanAfrica[i],NorthAmerica[i]]);	
								if(curr==="CentralAmericaAndCaribbean")		
								 {arr.push([year[i],CentralAmericaAndCaribbean[i]]);}
								if(curr==="AustralasiaAndOceania")		
								 {arr.push([year[i],AustralasiaAndOceania[i]]);}
								if(curr==="SouthAmerica")		
								 {arr.push([year[i],SouthAmerica[i]]);}
								if(curr==="CentralAsia")		
								 {arr.push([year[i],CentralAsia[i]]);}
								if(curr==="MiddleEastAndNorthAfrica")		
								 {arr.push([year[i],MiddleEastAndNorthAfrica[i]]);}
								if(curr==="EastAsia")		
								 {arr.push([year[i],EastAsia[i]]);}
								if(curr==="SouthAsia")		
								 {arr.push([year[i],SouthAsia[i]]);}
								if(curr==="EasternEurope")		
								 {arr.push([year[i],EasternEurope[i]]);}
								if(curr==="Southeastasia")		
								 {arr.push([year[i],Southeastasia[i]]);}
								if(curr==="WesternEurope")		
								 {arr.push([year[i],WesternEurope[i]]);}
								if(curr==="SubSaharanAfrica")		
								 {arr.push([year[i],SubSaharanAfrica[i]]);}
								if(curr==="NorthAmerica")		
								 {arr.push([year[i],NorthAmerica[i]]);}
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
					    
					    
					    <div id="curve_chart" style="width: 1000px; height: 500px"></div>
						</div>
					</section>

			

			</div>