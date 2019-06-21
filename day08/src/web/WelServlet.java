package web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class WelSerlvet
 */
@WebServlet("/WelSerlvet")
public class WelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
        public WelServlet() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int num1 = 10;
		int num2 = 20;
		request.setAttribute("num1", num1);
		request.setAttribute("num2", num2);
		
		boolean flag1 =true;
		boolean flag2 =false;
		request.setAttribute("flag1", flag1);
		request.setAttribute("flag2", flag2);
		
		String str ="";
		String str2 = null;
		List list = new	 ArrayList<>();
		request.setAttribute("str", str);
		request.setAttribute("str2", str2);
		request.setAttribute("list", list);
		
		request.getRequestDispatcher("welcome2.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
	}

}
