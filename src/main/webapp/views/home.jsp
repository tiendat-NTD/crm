<%@page import="duan_crm.model.TaskModel"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<% 
int chuaBatDau, dangThucHien, daHoanThanh, tongTask = 0;
chuaBatDau = (int) session.getAttribute("task_chua_bat_dau");
dangThucHien = (int) session.getAttribute("task_dang_thuc_hien");
daHoanThanh = (int) session.getAttribute("task_da_hoan_thanh");
tongTask = (int) session.getAttribute("tong_task");
%>

<jsp:include page="/views/layout/header.jsp"></jsp:include>
<jsp:include page="/views/layout/menu.jsp"></jsp:include>

<!-- Page Content -->
<div id="page-wrapper">
	<div class="container-fluid">
		<div class="row bg-title">
			<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
				<h4 class="page-title">Dashboard</h4>
			</div>
		</div>
		<!-- /.col-lg-12 -->
	</div>
	<!-- row -->
	<div class="row">
		<!--col -->
		<span style="color: red;"><c:out value = "${msg_success}"/></span>
		<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
			<div class="white-box">
				<div class="col-in row">
					<div class="col-md-6 col-sm-6 col-xs-6">
						<i data-icon="E" class="linea-icon linea-basic"></i>
						<h5 class="text-muted vb">CHƯA BẮT ĐẦU</h5>
					</div>
					<div class="col-md-6 col-sm-6 col-xs-6">
						<h3 class="counter text-right m-t-15 text-danger"><%= chuaBatDau %></h3>
					</div>
					<div class="col-md-12 col-sm-12 col-xs-12">
						<div class="progress">
							<div class="progress-bar progress-bar-danger" role="progressbar"
								aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"
								style="width: <%= chuaBatDau/tongTask*100 %>%">
								<span class="sr-only">40% Complete (success)</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- /.col -->
		<!--col -->
		<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
			<div class="white-box">
				<div class="col-in row">
					<div class="col-md-6 col-sm-6 col-xs-6">
						<i class="linea-icon linea-basic" data-icon="&#xe01b;"></i>
						<h5 class="text-muted vb">ĐANG THỰC HIỆN</h5>
					</div>
					<div class="col-md-6 col-sm-6 col-xs-6">
						<h3 class="counter text-right m-t-15 text-megna"><%= dangThucHien %></h3>
					</div>
					<div class="col-md-12 col-sm-12 col-xs-12">
						<div class="progress">
							<div class="progress-bar progress-bar-megna" role="progressbar"
								aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"
								style="width: <%= dangThucHien/tongTask*100 %>%">
								<span class="sr-only">40% Complete (success)</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- /.col -->
		<!--col -->
		<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
			<div class="white-box">
				<div class="col-in row">
					<div class="col-md-6 col-sm-6 col-xs-6">
						<i class="linea-icon linea-basic" data-icon="&#xe00b;"></i>
						<h5 class="text-muted vb">ĐÃ HOÀN THÀNH</h5>
					</div>
					<div class="col-md-6 col-sm-6 col-xs-6">
						<h3 class="counter text-right m-t-15 text-primary"><%= daHoanThanh %></h3>
					</div>
					<div class="col-md-12 col-sm-12 col-xs-12">
						<div class="progress">
							<div class="progress-bar progress-bar-primary" role="progressbar"
								aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"
								style="width: <%= daHoanThanh/tongTask*100 %>%">
								<span class="sr-only">40% Complete (success)</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- /.col -->
	</div>
	<!-- /.row -->
	<!--row -->
	<div class="row">
		<div class="col-md-12">
			<div class="white-box">
				<h3 class="box-title">Sales Difference</h3>
				<ul class="list-inline text-right">
					<li>
						<h5>
							<i class="fa fa-circle m-r-5" style="color: #dadada;"></i>Site A
							View
						</h5>
					</li>
					<li>
						<h5>
							<i class="fa fa-circle m-r-5" style="color: #aec9cb;"></i>Site B
							View
						</h5>
					</li>
				</ul>
				<div id="morris-area-chart2" style="height: 370px;"></div>
			</div>
		</div>
	</div>
</div>

<jsp:include page="/views/layout/footer.jsp"></jsp:include>