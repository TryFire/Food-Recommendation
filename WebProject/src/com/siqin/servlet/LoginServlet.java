package com.siqin.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import com.siqin.service.LoginService;

public class LoginServlet extends HttpServlet {
	
	private LoginService loginService = new LoginService();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("account");
		String psw = req.getParameter("password");
		RequestDispatcher rd = null;
		String forward = null;
		
		boolean bool = loginService.check(id, psw);
			
			if (bool) {
				forward = "/choise.jsp";
				rd = req.getRequestDispatcher(forward);
				rd.forward(req, resp);
			} else {
				System.out.print("failed");
				resp.sendRedirect("login.jsp?error=yes");
			}
			
		}
	
}
