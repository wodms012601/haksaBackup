<!-- 이응빈 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
	<head>
	
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport"
			content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
		<title>경력사항 입력</title>
		
		<!-- Bootstrap core CSS-->
		<link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		
		<!-- Custom fonts for this template-->
		<link href="/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
		
		<!-- Page level plugin CSS-->
		<link href="/resources/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
		
		<!-- Custom styles for this template-->
		<link href="/resources/css/sb-admin.css" rel="stylesheet">
		
		<style>
			#enrolScoreMain{
				text-align : left;
				font-weight: bold;
				font-size: 30px;
			}
			
			#form {
				text-align : right;
			}
		</style>
		
		<script>
			// 뒤로가기 버튼 눌렀을 시 페이지 이동
			function goBack(){
				window.history.back();
			}
		</script>
	</head>
	
	<body id="page-top">
	
		<jsp:include page="/WEB-INF/views/module/nav.jsp"/>
	
		<div id="wrapper">
	
			<jsp:include page="/WEB-INF/views/module/sidebar.jsp"/>
	
			<div id="content-wrapper">
	
				<div class="container-fluid">
				<!-- 여기에 내용이 담긴다 -->
					<form id="form">
						<input type="button" class="btn btn-info" onclick="goBack()" value="뒤로가기"/>
						<input type="button" class="btn btn-primary" id="savePersonnelPromotion" value="저장"/>
					</form>
					<br>
					<table class="table table-bordered">
						<tr>
							<td scope="col" colspan="10">
								<p id="enrolScoreMain">* 교직원 경력사항</p>
							</td>
						</tr>
						<tr>
							<th>교직원번호</th>
							<td><input type="text" class="form-control" name="appointmentSchoolPersonnelNumber" id="appointmentSchoolPersonnelNumber" placeholder="교직원번호"></td>
							<th>발령구분</th>
							<td><input type="text" class="form-control" name="careerAppointment" id="careerAppointment" placeholder="발령구분"></td>
							<th>임명일</th>
							<td><input type="date" class="form-control" name="careerAppointmentDate" id="careerAppointmentDate"></td>
						</tr>
						
						<tr>
							<th>경력구분</th>
							<td>
								<select class="form-control" id="careerClassification">
									<option value="선택">선택</option>
									<option value="신입">신입</option>
									<option value="경력">경력</option>
								</select>
							</td>
							<th>만료일</th>
							<td><input type="date" class="form-control" name="careerExpirationDate" id="careerExpirationDate"></td>
							<th>직군</th>
							<td><input type="text" class="form-control" name="careerJikun" id="careerJikun" placeholder="직군"></td>
						</tr>
						<tr>
							<th>직종</th>
							<td><input type="text" class="form-control" name="careerJikjong" id="careerJikjong" placeholder="직종"></td>
							<th>직급</th>
							<td><input type="text" class="form-control" name="careerPosition" id="careerPosition" placeholder="직급"></td>
							<th>이전계약부터</th>
							<td><input type="date" class="form-control" name="careerFromcontract" id="careerFromcontract"></td>
						</tr>
						
						<tr>
							<th>이전계약까지</th>
							<td><input type="date" class="form-control" name="careerUntillcontract" id="careerUntillcontract"></td>
						</tr>
					</table>
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