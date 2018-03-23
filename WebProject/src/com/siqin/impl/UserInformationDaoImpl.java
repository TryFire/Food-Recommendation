package com.siqin.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.Statement;
import com.siqin.dao.UserInformationDao;

public class UserInformationDaoImpl implements UserInformationDao {

	@Override
	public ResultSet get(Connection conn, String id, String psw) throws SQLException {
		PreparedStatement ps = conn.prepareStatement("select * from user_information where id=? and psw=?");
		ps.setString(1, id);
		ps.setString(2, psw);
		return ps.executeQuery();
	}

	@Override
	public int loginUp(Connection conn, String id, String psw, String name, String age, String sex)
			throws SQLException {
		String sql = "insert into user_information(" + "id," + " psw," + "name," + "age,"+ "sex)" + 
				"values('" + id + "','" +
			psw + "','" +
			name + "','" +
			age + "','" +
			sex + "');" ;
	Statement statement = (Statement) conn.createStatement();
	int code = statement.executeUpdate(sql);
	return code;
	}

	
}
