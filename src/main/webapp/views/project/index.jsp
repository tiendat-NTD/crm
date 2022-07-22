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
				<h4 class="page-title">Danh sách dự án</h4>
			</div>
			<div class="col-lg-9 col-sm-8 col-md-8 col-xs-12 text-right">
				<a href="groupwork-add.html" class="btn btn-sm btn-success">Thêm
					mới</a>
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
									<th>Tên Dự Án</th>
									<th>Ngày Bắt Đầu</th>
									<th>Ngày Kết Thúc</th>
									<th>Hành Động</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<td>Phân tích dự án</td>
									<td>22/05/2019</td>
									<td>30/05/2019</td>
									<td><a href="#" class="btn btn-sm btn-primary">Sửa</a> <a
										href="#" class="btn btn-sm btn-danger">Xóa</a> <a
										href="groupwork-details.html" class="btn btn-sm btn-info">Xem</a>
									</td>
								</tr>
								<tr>
									<td>1</td>
									<td>Thiết kế hệ thống</td>
									<td>22/05/2019</td>
									<td>30/05/2019</td>
									<td><a href="#" class="btn btn-sm btn-primary">Sửa</a> <a
										href="#" class="btn btn-sm btn-danger">Xóa</a> <a
										href="groupwork-details.html" class="btn btn-sm btn-info">Xem</a>
									</td>
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
<!-- /.container-fluid -->
<footer class="footer text-center"> 2018 &copy; myclass.com </footer>
</div>
<!-- /.container-fluid -->
<footer class="footer text-center"> 2018 &copy; myclass.com </footer>
</div>

<jsp:include page="/views/layout/footer.jsp"></jsp:include>