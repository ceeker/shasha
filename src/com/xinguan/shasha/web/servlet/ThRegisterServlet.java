package com.xinguan.shasha.web.servlet;
//获取前端页面的老师注册信息
import java.io.IOException;
import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.xinguan.shasha.dao.jdbc.factory.RegisterDaoFactory;
import com.xinguan.shasha.domain.Teacher;

public class ThRegisterServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			HttpSession session = request.getSession();
			//防止重复提交表单session获取与处理
			String tokenStr = (String) session.getAttribute("thtoken");
			String token = request.getParameter("thtoken");
			if(tokenStr!=null&&tokenStr.equals(token)){
				//清除随机号
				request.getSession().removeAttribute("token");
				
				String username = request.getParameter("zhuce_user");//获得客户端表单下名为name的值
				String password = request.getParameter("zhuce_mima");
				String sex = request.getParameter("sex");
				String college = request.getParameter("graduate");
				String education = request.getParameter("education_bg");
				String language = request.getParameter("teach-which");
				String tel = request.getParameter("tel-num");
				String introduction = request.getParameter("beizhu");
				String email= request.getParameter("zhuce_email");
				String birthday01 = request.getParameter("year");
				String birthday02 = request.getParameter("month");
				String birthday03 = request.getParameter("day");
				String birthday = birthday01+"-"+birthday02+"-"+birthday03;
				Date date = null;
				if(birthday!=null){
				//客户端获取的日期string类型转换为date类型              
				 date = java.sql.Date.valueOf(birthday); 
				}
			    Teacher teacher = new Teacher();
			    teacher.setUsername(username.toLowerCase());
			    teacher.setPassword(password);
			    teacher.setSex(sex);
			    teacher.setCollege(college);
			    teacher.setEducation(education);
			    teacher.setLanguage(language);
			    teacher.setTel(tel);
			    teacher.setEmail(email);
			    teacher.setBirthday(date);
			    teacher.setIntroduction(introduction);
			    
			    
			    boolean code = RegisterDaoFactory.getInstance().insert(teacher);
				    
			    if(code){
			    	//向session添加用户名
					session.setAttribute("auth",username);
					session.setAttribute("type","1");
					response.sendRedirect("/translation/shasha/intermediary.html");
					
			    }else{
			    	response.sendRedirect("/translation/shasha/register.html");
			    }
			}else{
				response.getWriter().write("<script>alert('请不要重复提交');</script>");
				return;
			}
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request,response);
	}
}