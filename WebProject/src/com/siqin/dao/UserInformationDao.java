package com.siqin.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

public interface UserInformationDao {

	ResultSet get(Connection conn, String id, String psw) throws SQLException;
	int loginUp(Connection conn, String id, String psw, String name, String age, String sex) throws SQLException;
}
