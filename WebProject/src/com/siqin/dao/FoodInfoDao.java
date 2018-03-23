package com.siqin.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

public interface FoodInfoDao {
	public ResultSet getResult(Connection conn, int n) throws SQLException;
}
