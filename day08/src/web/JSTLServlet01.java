package web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entity.User;

/**
 * Servlet implementation class JSTLServlet01
 */
@WebServlet(description ="学习JSTL-通用标签set、out、remove",urlPatterns= {"/JSTLServlet01"})
public class JSTLServlet01 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public JSTLServlet01() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		User user = new User();
		HttpSession session =request.getSession();
		session.setAttribute("user",user);
		request.getRequestDispatcher("jstl01.jsp").forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
	}

}
