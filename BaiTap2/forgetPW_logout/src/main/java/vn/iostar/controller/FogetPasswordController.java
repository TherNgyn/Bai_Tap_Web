package vn.iostar.controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.iostar.dao.UserDao;
import vn.iostar.dao.UserDaoImpl;
import vn.iostar.model.User;
import vn.iostar.service.UserService;
import vn.iostar.service.UserServiceImpl;
@WebServlet(urlPatterns = {"/fogotpassword"})
public class FogetPasswordController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");
		
		String username = req.getParameter("name");
		String pw = req.getParameter("password");
		String alert = "";
		UserService user = new UserServiceImpl();
		
		boolean isSuccess = user.forgotPassWord(username, pw);
		
		if(isSuccess) {
			alert = "Đổi mật khẩu thành công";
			req.setAttribute("alert", alert);
			req.getRequestDispatcher("/login.jsp").forward(req, resp);
		}
		else
			alert ="User không tồn tại";
			req.setAttribute("alert", alert);
			req.getRequestDispatcher("/forgetPW.jsp").forward(req, resp);
	}
}
