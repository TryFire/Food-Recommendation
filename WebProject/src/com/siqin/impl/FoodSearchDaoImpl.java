/**
 * 
 */
package com.siqin.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.siqin.dao.FoodSearchDao;

/**
 * @author Toxicant
 *
 */
public class FoodSearchDaoImpl implements FoodSearchDao {

	/**
	 * 
	 */
	public FoodSearchDaoImpl() {
		// TODO Auto-generated constructor stub
	}

	/* (non-Javadoc)
	 * @see com.siqin.dao.FoodSearchDao#getResult(java.sql.Connection, java.lang.String)
	 */
	@Override
	public ResultSet getResult(Connection conn, String food_keyword) throws SQLException {
		// TODO Auto-generated method stub
		System.out.println(food_keyword);
		String sql = "SELECT 名称,类型,位置 FROM food where 名称 like '%"+food_keyword+"%'";
		Statement ps = conn.createStatement();
		//ps.setString(1, food_keyword);
		return ps.executeQuery(sql);
	}

}
