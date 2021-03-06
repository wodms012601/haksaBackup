<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>팀코드 관리</title>

<!-- Bootstrap core CSS-->
<link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom fonts for this template-->
<link href="/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

<!-- Page level plugin CSS-->
<link href="/resources/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

<!-- Custom styles for this template-->
<link href="/resources/css/sb-admin.css" rel="stylesheet">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
	   <script>
	       $(document).ready(function() {
	           $("#keyword").keyup(function() {
	               var selectBox = $("#selectBox option:selected").val();
	               var word = $('#keyword').val();
	               $("#teamTable > tbody").children().hide();
	               if(selectBox == "code"){
	                   	var temp = $("#teamTable > tbody > tr").find("td:nth-child(1):contains('" + word + "')");
	                   	
	               }else if(selectBox == "name"){
						var temp = $("#teamTable > tbody > tr").find("td:nth-child(5):contains('" + word + "')");     
						
	               }else if(selectBox == "agencyName"){
	               		var temp = $("#teamTable > tbody > tr").find("td:nth-child(2):contains('" + word + "')");
	               		
	               }else if(selectBox == "orgName"){
	               		var temp = $("#teamTable > tbody > tr").find("td:nth-child(3):contains('" + word + "')");
	               		
	               }else if(selectBox == "deptName"){
	               		var temp = $("#teamTable > tbody > tr").find("td:nth-child(4):contains('" + word + "')");
	               		
	               }else if(selectBox == "establishDate"){
	               		var temp = $("#teamTable > tbody > tr").find("td:nth-child(7):contains('" + word + "')");
	               		
	               }else if(selectBox == "check_a_use"){
	               		var temp = $("#teamTable > tbody > tr").find("td:nth-child(10):contains('" + word + "')");
	               		
	               }else if(selectBox == "check_a_change"){
	               		var temp = $("#teamTable > tbody > tr").find("td:nth-child(11):contains('" + word + "')");
	               		
	               }
	               $(temp).parent().show();
	           });
	       });
	  	</script>
</head>

<body id="page-top">

	<jsp:include page="/WEB-INF/views/module/nav.jsp"/>

	<div id="wrapper">

		<jsp:include page="/WEB-INF/views/module/sidebar.jsp"/>

		<div id="content-wrapper">

			<div class="container-fluid">
			<!-- 여기에 내용이 담긴다 -->
			
			<h1>공통코드 관리 > 팀코드 관리</h1>
			<br><br>
			<div>
	            <select id="selectBox">
	                <option value="code">코드</option>
	                <option value="name">팀 명</option>
	                <option value="agencyName">소속 기관</option>
	                <option value="orgName">소속 기구</option>
	                <option value="deptName">소속 부서</option>
	                <option value="establishDate">설치일자</option>
	                <option value="check_a_use">사용 유무</option>
	                <option value="check_a_change">변경 유무</option>
	            </select>
	            <input type="text" id="keyword" />
	        </div>
			<table border="1" id="teamTable">
				<thead>
		            <tr>
		                <th>팀코드</th>
		                <th>기관명</th>
		                <th>기구명</th>
		                <th>부서명</th>
		                <th>팀명(국문)</th>
		                <th>팀명(영문)</th>
		                <th>설치일자</th>
		                <th>대표전화번호</th>
		                <th>코드 사용유무</th>
		                <th>코드 변경유무</th>
		            </tr>
		        </thead>
		        <tbody>
		            <c:forEach var="team" items="${list}">
		                <tr>
		                    <td>${team.teamCode}</td>
		                    <td>${team.agencyName}</td>
		                    <td>${team.orgName}</td>
		                    <td>${team.deptName}</td>
		                    <td>${team.teamNameKorean}</td>
		                    <td>${team.teamNameEnglish}</td>
		                    <td>${team.teamEstablishDate}</td>
		                    <td>${team.teamRepPhoneNumber}</td>
		                    <td>${team.teamIsUsed}</td>
		                    <td>${team.teamIsChanged}</td>
		                </tr>
		            </c:forEach>
		        </tbody>
		    </table>
			<br><br>
			<a href="/common/codes/addTeamCodeForm">코드 입력</a>
			</div>
			<!-- /.container-fluid -->

			<!-- Sticky Footer -->
			<footer class="sticky-footer">
				<div class="container my-auto">
					<div class="copyright text-center my-auto">
						<span>Copyright © Haksa 2018</span>
					</div>
				</div>
			</footer>

		</div>
		<!-- /.content-wrapper -->

	</div>
	<!-- /#wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	<!-- Logout Modal-->
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">Ã</span>
					</button>
				</div>
				<div class="modal-body">Select "Logout" below if you are ready
					to end your current session.</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">Cancel</button>
					<a class="btn btn-primary" href="login.html">Logout</a>
				</div>
			</div>
		</div>
	</div>

	<!-- Bootstrap core JavaScript-->
	<script src="/resources/vendor/jquery/jquery.min.js"></script>
	<script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Page level plugin JavaScript-->
	<script src="/resources/vendor/chart.js/Chart.min.js"></script>
	<script src="/resources/vendor/datatables/jquery.dataTables.js"></script>
	<script src="/resources/vendor/datatables/dataTables.bootstrap4.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="/resources/js/sb-admin.min.js"></script>

	<!-- Demo scripts for this page-->
	<script src="/resources/js/demo/datatables-demo.js"></script>
	<script src="/resources/js/demo/chart-area-demo.js"></script>

</body>
</html>