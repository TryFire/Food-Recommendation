package com.siqin.impl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Connection;
import com.siqin.dao.ScenicSearchDao;

public class ScenicSearchDaoImpl implements ScenicSearchDao {

	public ScenicSearchDaoImpl() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public ResultSet getResult(Connection conn, String location_keyword) throws SQLException {
		// TODO Auto-"generated method stub
		String sql = "SELECT ����,���,��ַ FROM Slight where �������� like '%"+location_keyword + "%'";
		Statement ps = conn.createStatement();
		return ps.executeQuery(sql);
	}
}
