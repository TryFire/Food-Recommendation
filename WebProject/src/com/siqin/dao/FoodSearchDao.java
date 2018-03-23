package com.siqin.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

public interface FoodSearchDao {
	public ResultSet getResult(Connection conn,String food_keyword) throws SQLException;
}
