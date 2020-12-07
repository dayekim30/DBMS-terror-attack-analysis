<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
	<div id="main">

				<!-- One -->
					<section id="one">
						<header class="major">
							<h2>Data Base Information</h2>
<!-- 							there is critical information.</h2> -->
						</header>
						
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
						<h2></h2>
						<div class="row">
						
					 	<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
					    <script type="text/javascript">
					      google.charts.load('current', {'packages':['table']});
					      google.charts.setOnLoadCallback(drawTable);

					      var year=[];
					      var sizeq=[];
					      var count=0;
							
					      function drawTable() 
					      {
					        var data = new google.visualization.DataTable();
					        data.addColumn('string', 'Table Name');
					        data.addColumn('number', 'Tuple Number');


					        var i = 0;
					        for(i = 0; i < count; i++)
					        {
					          data.addRows([
					            [year[i], sizeq[i]]
					            ]);
					        }


					        var table = new google.visualization.Table(document.getElementById('table_div'));

					        table.draw(data, {width: '50%', height: '100%'});
					      }
					    </script>
					     <c:forEach items="${table}" var="n">
			  				<script type="text/javascript" >
				    		/*<![CDATA[*/
				      		
				      		year[count] = "${n.tablename}";
				      		sizeq[count] = ${n.size};
				      		
				      		count++;
				      		//Console.log(year[count]);
				    		/*]]>*/
		  						</script>
						 </c:forEach>
					    
					    
					    <div id="table_div" style="width: 2000px; height: 500px"></div>
						</div>
					</section>

			

			</div>