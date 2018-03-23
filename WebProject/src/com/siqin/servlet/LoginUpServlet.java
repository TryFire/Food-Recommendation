package com.siqin.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.siqin.service.LoginUpService;

/**
 * Servlet implementation class LoginUpServlet
 */
@WebServlet("/LoginUpServlet")
public class LoginUpServlet extends HttpServlet {
	private LoginUpService service = new LoginUpService();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginUpServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		String sex = request.getParameter("sex");
		String psw = request.getParameter("psw");
		String Cpsw = request.getParameter("c_psw");
		RequestDispatcher rd = null;
		String forward = null;
		System.out.println("start");
		boolean isSuccess = service.update(id, psw, name, age, sex);
		if(isSuccess) {
			forward = "success.jsp";
		} else {
			request.setAttribute("msg", "×¢²áÊ§°Ü");
			forward = "/error.jsp";
		}
		rd = request.getRequestDispatcher(forward);
		rd.forward(request, response);
	}

}
