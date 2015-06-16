package com.xinguan.shasha.web.servlet;
//��ȡǰ��ҳ��ĵ�½��Ϣ
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.xinguan.shasha.dao.jdbc.factory.AuthDaoFactory;
import com.xinguan.shasha.domain.User;

public class AuthServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
			String username = request.getParameter("login_user");//��ÿͻ��˱�����Ϊname��ֵ
			String password = request.getParameter("login_pass");
			PrintWriter out = response.getWriter();
			HttpSession session = request.getSession();
			User user = new User();
			user.setUsername(username.toLowerCase());
			user.setPassword(password);
			int  code = AuthDaoFactory.getInstance().select(user);
			

				switch(code){
					case 1:
						out.print("�û�������");
						break;
					case 2:
						out.print("�������");
						break;
					case 3:
					    session.setAttribute("auth", username);
					    session.setAttribute("type","1");
					    out.print("/translation/shasha/teacherCenter.html");

						break;
					case 4:
					    session.setAttribute("auth", username);
					    session.setAttribute("type","0");
					    out.print("/translation/shasha/studentCenter.html");
						break;
				}
	}
		
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			doGet(request,response);
	}
}

