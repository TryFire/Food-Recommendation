package com.siqin.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.siqin.service.FirstRecommend;

public class ScenicSelectionServlet {
	private FirstRecommend recommend = new FirstRecommend();

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			
		RequestDispatcher rd = null;
		String forward = null;
		
		forward = "/slightmenu.jsp";
		rd = req.getRequestDispatcher(forward);
		rd.forward(req, resp);
		
		recommend.getScenics();

			
		}
}
