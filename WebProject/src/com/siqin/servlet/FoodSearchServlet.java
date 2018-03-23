/**
 * 
 */
package com.siqin.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.siqin.service.FoodSearchService;

/**
 * @author Toxicant
 *
 */
public class FoodSearchServlet extends HttpServlet {
	
	private FoodSearchService service = new FoodSearchService();
	/**
	 * 
	 */
	public FoodSearchServlet() {
		super();// TODO Auto-generated constructor stub
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String food = req.getParameter("food");
		String foodChina = new String(food.getBytes("ISO-8859-1"),"utf-8");
		System.out.print(foodChina);
		RequestDispatcher rd = null;
		String forward = "/resultsearch.jsp";
		List food_data = service.getFood(foodChina);
		req.setAttribute("food_list", food_data);
		rd = req.getRequestDispatcher(forward);
		rd.forward(req, resp);
	}
	
}
