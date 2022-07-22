<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="/views/layout/header.jsp"></jsp:include>
<jsp:include page="/views/layout/menu.jsp"></jsp:include>

<!-- Page Content -->
<div id="page-wrapper">
	<div class="container-fluid">
		<div class="row bg-title">
			<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
				<h4 class="page-title">Danh sách thành viên</h4>
			</div>
			<div class="col-lg-9 col-sm-8 col-md-8 col-xs-12 text-right">
				<a href="user-add.html" class="btn btn-sm btn-success">Thêm mới</a>
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- /row -->
		<div class="row">
			<div class="col-sm-12">
				<div class="white-box">
					<div class="table-responsive">
						<table class="table" id="example">
							<thead>
								<tr>
									<th>STT</th>
									<th>First Name</th>
									<th>Last Name</th>
									<th>Username</th>
									<th>Role</th>
									<th>#</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<td>Deshmukh</td>
									<td>Prohaska</td>
									<td>@Genelia</td>
									<td>admin</td>
									<td><a href="#" class="btn btn-sm btn-primary">Sửa</a> <a
										href="#" class="btn btn-sm btn-danger">Xóa</a> <a
										href="user-details.html" class="btn btn-sm btn-info">Xem</a></td>
								</tr>
								<tr>
									<td>2</td>
									<td>Deshmukh</td>
									<td>Gaylord</td>
									<td>@Ritesh</td>
									<td>member</td>
									<td><a href="#" class="btn btn-sm btn-primary">Sửa</a> <a
										href="#" class="btn btn-sm btn-danger">Xóa</a> <a
										href="user-details.html" class="btn btn-sm btn-info">Xem</a></td>
								</tr>
								<tr>
									<td>3</td>
									<td>Sanghani</td>
									<td>Gusikowski</td>
									<td>@Govinda</td>
									<td>developer</td>
									<td><a href="#" class="btn btn-sm btn-primary">Sửa</a> <a
										href="#" class="btn btn-sm btn-danger">Xóa</a> <a
										href="user-details.html" class="btn btn-sm btn-info">Xem</a></td>
								</tr>
								<tr>
									<td>4</td>
									<td>Roshan</td>
									<td>Rogahn</td>
									<td>@Hritik</td>
									<td>supporter</td>
									<td><a href="#" class="btn btn-sm btn-primary">Sửa</a> <a
										href="#" class="btn btn-sm btn-danger">Xóa</a> <a
										href="user-details.html" class="btn btn-sm btn-info">Xem</a></td>
								</tr>
								<tr>
									<td>5</td>
									<td>Joshi</td>
									<td>Hickle</td>
									<td>@Maruti</td>
									<td>member</td>
									<td><a href="#" class="btn btn-sm btn-primary">Sửa</a> <a
										href="#" class="btn btn-sm btn-danger">Xóa</a> <a
										href="user-details.html" class="btn btn-sm btn-info">Xem</a></td>
								</tr>
								<tr>
									<td>6</td>
									<td>Nigam</td>
									<td>Eichmann</td>
									<td>@Sonu</td>
									<td>supporter</td>
									<td><a href="#" class="btn btn-sm btn-primary">Sửa</a> <a
										href="#" class="btn btn-sm btn-danger">Xóa</a> <a
										href="user-details.html" class="btn btn-sm btn-info">Xem</a></td>
								</tr>
								<tr>
									<td>1</td>
									<td>Deshmukh</td>
									<td>Prohaska</td>
									<td>@Genelia</td>
									<td>admin</td>
									<td><a href="#" class="btn btn-sm btn-primary">Sửa</a> <a
										href="#" class="btn btn-sm btn-danger">Xóa</a> <a
										href="user-details.html" class="btn btn-sm btn-info">Xem</a></td>
								</tr>
								<tr>
									<td>2</td>
									<td>Deshmukh</td>
									<td>Gaylord</td>
									<td>@Ritesh</td>
									<td>member</td>
									<td><a href="#" class="btn btn-sm btn-primary">Sửa</a> <a
										href="#" class="btn btn-sm btn-danger">Xóa</a> <a
										href="user-details.html" class="btn btn-sm btn-info">Xem</a></td>
								</tr>
								<tr>
									<td>3</td>
									<td>Sanghani</td>
									<td>Gusikowski</td>
									<td>@Govinda</td>
									<td>developer</td>
									<td><a href="#" class="btn btn-sm btn-primary">Sửa</a> <a
										href="#" class="btn btn-sm btn-danger">Xóa</a> <a
										href="user-details.html" class="btn btn-sm btn-info">Xem</a></td>
								</tr>
								<tr>
									<td>4</td>
									<td>Roshan</td>
									<td>Rogahn</td>
									<td>@Hritik</td>
									<td>supporter</td>
									<td><a href="#" class="btn btn-sm btn-primary">Sửa</a> <a
										href="#" class="btn btn-sm btn-danger">Xóa</a> <a
										href="user-details.html" class="btn btn-sm btn-info">Xem</a></td>
								</tr>
								<tr>
									<td>5</td>
									<td>Joshi</td>
									<td>Hickle</td>
									<td>@Maruti</td>
									<td>member</td>
									<td><a href="#" class="btn btn-sm btn-primary">Sửa</a> <a
										href="#" class="btn btn-sm btn-danger">Xóa</a> <a
										href="user-details.html" class="btn btn-sm btn-info">Xem</a></td>
								</tr>
								<tr>
									<td>6</td>
									<td>Nigam</td>
									<td>Eichmann</td>
									<td>@Sonu</td>
									<td>supporter</td>
									<td><a href="#" class="btn btn-sm btn-primary">Sửa</a> <a
										href="#" class="btn btn-sm btn-danger">Xóa</a> <a
										href="user-details.html" class="btn btn-sm btn-info">Xem</a></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<!-- /.row -->
	</div>
	<!-- /.container-fluid -->
	<footer class="footer text-center"> 2018 &copy; myclass.com </footer>
</div>

<jsp:include page="/views/layout/footer.jsp"></jsp:include>