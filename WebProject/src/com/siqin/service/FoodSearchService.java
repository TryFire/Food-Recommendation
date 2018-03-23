/**
 * 
 */
package com.siqin.service;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.siqin.dao.FoodSearchDao;
import com.siqin.entity.FoodInfo;
import com.siqin.impl.FoodSearchDaoImpl;
import com.siqin.util.ConnectionFactory;

/**
 * @author Toxicant
 *
 */
public class FoodSearchService {
	
	private FoodSearchDao foodsearchDao = new FoodSearchDaoImpl();
	/**
	 * 
	 */
	public FoodSearchService() {
		// TODO Auto-generated constructor stub
	}

	public List<FoodInfo> getFood(String food){
		Connection conn = ConnectionFactory.getInstance().makeConnection();
		ResultSet rs = null;
		List<FoodInfo> food_data = new ArrayList<>();
		try{
			rs = foodsearchDao.getResult(conn, food);
			while(rs.next()){
				FoodInfo temp = new FoodInfo();
				temp.setFood_name(rs.getString("名称"));
				temp.setFood_type(rs.getString("类型"));
				temp.setFood_address(rs.getString("位置"));
				System.out.println("mmmmmmmmmm");
				food_data.add(temp);
			}
		}catch (SQLException e){
			e.printStackTrace();
		}
		for (FoodInfo foodInfo : food_data) {
			System.out.println(foodInfo.getFood_name());
		}
		return food_data;
	}

}
