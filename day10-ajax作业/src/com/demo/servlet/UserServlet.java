package com.demo.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public UserServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String flag = request.getParameter("flag");
		String name = request.getParameter("name");
		if(flag.equals("jiaoyan")) {
			//执行校验
			boolean biaozhi = false;
			//调用Service-->调用dao-->返回数据
			//本次简化。直接在Servlet中判断
			if(name.equals("zhangsan")) {
				biaozhi  = true; //如果用户名的关于zhangsan，认为数据库已经占用
			}else {
				biaozhi =false;
			}
			//设置响应类型
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.print(biaozhi);
			out.flush();
			out.close();
		
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
	}

}
