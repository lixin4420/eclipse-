package com.demo.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demo.entity.User;

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
		}else if(flag.equals("list")){
			//模拟从数据库查出5条数据
			User user01 = new User(1,"张1","男",10);
			User user02 = new User(2,"张2","男",10);
			User user03 = new User(3,"张3","男",10);
			User user04 = new User(4,"张4","男",10);
			User user05 = new User(5,"张5","男",10);
			List<User> userList = new ArrayList<User>();
			userList.add(user01);
			userList.add(user02);
			userList.add(user03);
			userList.add(user04);
			userList.add(user05);
			//把集合转成字符串-拼接成了JSON格式的字符串
			StringBuffer jsonStr = new StringBuffer();
			jsonStr.append("[");
			for(int i=0;i<userList.size();i++) {
				jsonStr.append("{");
				jsonStr.append("\"id\":"+userList.get(i).getId()+",");
				jsonStr.append("\"name\":\""+userList.get(i).getName()+"\",");
				jsonStr.append("\"age\":"+userList.get(i).getAge()+",");	
				jsonStr.append("\"sex\":\""+userList.get(i).getSex()+"\"");
				jsonStr.append("}");
				if(i!=userList.size()-1) {
					jsonStr.append(",");
				}
			}
			jsonStr.append("]");
			System.out.println(jsonStr);
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out =response.getWriter();
			out.print(jsonStr);
			out.flush();
			out.close();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
	}

}
