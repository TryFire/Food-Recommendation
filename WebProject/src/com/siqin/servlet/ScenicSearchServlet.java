/**
 * 
 */
package com.siqin.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.siqin.entity.ScenicInfo;
import com.siqin.service.ScenicSearchService;

import java.util.List;

/**
 * @author Toxicant
 *
 */
public class ScenicSearchServlet extends HttpServlet {
	private ScenicSearchService service = new ScenicSearchService();
	/**
	 * 
	 */
	public ScenicSearchServlet() {
		super();// TODO Auto-generated constructor stub
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		/*String location = req.getParameter("location");
		String LocationChina = new String(location.getBytes("ISO-8859-1"),"utf-8");
		RequestDispatcher rd = null;
		String forward = "/ScenicSearchResult.jsp";
		List<ScenicInfo> location_data = service.getScenics(Location);
		req.setAttribute("location_list", location_data);
		rd = req.getRequestDispatcher(forward);
		rd.forward(req, resp);*/
	}

}
