package duan_crm.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import duan_crm.constant.Constants;
import duan_crm.model.UserLogin;

@WebFilter(urlPatterns = "/*")
public class AuthFilter implements Filter{

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse resp = (HttpServletResponse) response;
		req.setCharacterEncoding("UTF-8");
		
		String path = req.getServletPath();
		
		if(Constants.URL_LOGIN.equals(path)) {
			chain.doFilter(request, response);
			return;
		}
		UserLogin userLogin = (UserLogin) req.getSession().getAttribute(Constants.USER_LOGIN);
		
		if( userLogin == null) {
			resp.sendRedirect(req.getContextPath() + Constants.URL_LOGIN);
			return;
		}	
		
		String roleName = userLogin.getRoleName();
		
		if(path.startsWith(Constants.URL_ROLE) && !Constants.ROLE_ADMIN.equals(roleName)) {
			resp.sendRedirect(req.getContextPath() + Constants.URL_ERROR_403);
			return;
		}
		
		if(path.startsWith(Constants.URL_USER) && !Constants.ROLE_ADMIN.equals(roleName)
				&&!Constants.ROLE_LEADER.equals(roleName)) {
			resp.sendRedirect(req.getContextPath() + Constants.URL_ERROR_403);
			return;
		}
		chain.doFilter(request, response);
	}

}
