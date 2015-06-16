package com.xinguan.shasha.web.servlet;
//获取前端页面的用户名以及向前端页面返回结果，判断用户名是否重复
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.xinguan.shasha.dao.jdbc.factory.AuthDaoFactory;


public class JudgeServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			
			String username = request.getParameter("username");
			if(username!=null){
				boolean flag  =	AuthDaoFactory.getInstance().judge(username.toLowerCase()); 
			PrintWriter out=response.getWriter();
				if(flag)
				{
				  out.print(1);
				}else{
				  out.print("");
				}
			}
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			doGet(request,response);
	}

}
