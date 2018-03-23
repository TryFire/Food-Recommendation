package com.siqin.service;

import java.sql.Connection;
import java.sql.SQLException;

import com.siqin.dao.UserInformationDao;
import com.siqin.impl.UserInformationDaoImpl;
import com.siqin.util.ConnectionFactory;

public class LoginUpService {
	private	UserInformationDao userInformationDao = new UserInformationDaoImpl();
	public boolean update(String id, String psw, String name, String age, String sex) {
		Connection conn = ConnectionFactory.getInstance().makeConnection();
		try {
			int code = userInformationDao.loginUp(conn, id, psw, name, age, sex);
			if(code == 1) {
				return true;
			} else {
				return false;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		
	}
}
