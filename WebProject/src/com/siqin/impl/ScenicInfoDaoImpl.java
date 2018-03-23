package com.siqin.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.siqin.dao.ScenicInfoDao;

public class ScenicInfoDaoImpl implements ScenicInfoDao{

	@Override
	public ResultSet getResult(Connection conn, int n) throws SQLException {
		PreparedStatement ps = conn.prepareStatement("select * from scenic limit n,8");
		return ps.executeQuery();
	}

}
