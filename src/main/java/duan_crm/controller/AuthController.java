package duan_crm.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import duan_crm.constant.Constants;
import duan_crm.dao.AuthDAO;
import duan_crm.dao.MD5;
import duan_crm.dao.RoleDAO;
import duan_crm.dao.TaskDAO;
import duan_crm.model.RoleModel;
import duan_crm.model.TaskModel;
import duan_crm.model.UserLogin;
import duan_crm.model.UserModel;

@WebServlet(urlPatterns = {Constants.URL_LOGIN,Constants.URL_LOGOUT})
public class AuthController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String path = req.getServletPath();

		switch(path){
			case Constants.URL_LOGIN:
				req.getRequestDispatcher("views/auth/login.jsp").forward(req, resp);
				break;
			case Constants.URL_LOGOUT:
				HttpSession session = req.getSession();
				session.invalidate();
				resp.sendRedirect(req.getContextPath() + Constants.URL_LOGIN);
				break;
			default:
				break;
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		
		UserModel user = AuthDAO.login(email);
		String pass = MD5.getMd5(password);
		
		if (user == null || !pass.equals(user.getPassword())) {
			req.setAttribute("msg_error", "Email không tồn tại hoặc mật khẩu không chính xác!");
			req.getRequestDispatcher("views/auth/login.jsp").forward(req, resp);
			return;
		}
		
		RoleModel role = RoleDAO.getRoleById(user.getId());
		
		UserLogin userLogin = new UserLogin(user.getId(),user.getEmail(), user.getAddress()
				,user.getPassword(),user.getFullName(),role.getRoleName(), role.getDescription(), user.getPhoneNumber());
		
		List<TaskModel> taskList =  TaskDAO.getAllTask();
		
//		req.setAttribute("task_list", taskList);
//		
//		req.setAttribute("task_chua_bat_dau", TaskDAO.getNumberOfStatus(taskList,1));
//		req.setAttribute("task_dang_thuc_hien", TaskDAO.getNumberOfStatus(taskList,2));
//		req.setAttribute("task_da_hoan_thanh", TaskDAO.getNumberOfStatus(taskList,3));
//		
		System.out.println("Tổng:" + taskList.size());
		System.out.println("Tổng:" + TaskDAO.getNumberOfStatus(taskList,1));

		HttpSession session = req.getSession();
		session.setAttribute(Constants.USER_LOGIN, userLogin);
		session.setAttribute("tong_task", taskList.size());
		session.setAttribute("task_chua_bat_dau", TaskDAO.getNumberOfStatus(taskList,1));
		session.setAttribute("task_dang_thuc_hien", TaskDAO.getNumberOfStatus(taskList,2));
		session.setAttribute("task_da_hoan_thanh", TaskDAO.getNumberOfStatus(taskList,3));
		session.setMaxInactiveInterval(6000);
		
		resp.sendRedirect(req.getContextPath() + Constants.URL_HOME);
		//req.getRequestDispatcher("views/home.jsp").forward(req, resp);
	}
}
