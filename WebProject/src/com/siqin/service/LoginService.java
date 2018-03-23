package com.siqin.service;

import java.sql.Connection;
import java.sql.ResultSet;

import com.siqin.dao.UserInformationDao;
import com.siqin.impl.UserInformationDaoImpl;
import com.siqin.util.ConnectionFactory;


public class LoginService {
	    private	UserInformationDao userInformationDao = new UserInformationDaoImpl();
		public boolean check(String id,String psw) {
			Connection conn = null;
			try {
				conn = ConnectionFactory.getInstance().makeConnection();
				conn.setAutoCommit(false);
				ResultSet resultSet = userInformationDao.get(conn, id, psw);
				while(resultSet.next()){
					return true;
				}
			} catch (Exception e) {
				e.printStackTrace();
				try {
					conn.rollback();
				} catch (Exception e2) {
					e2.printStackTrace();
				}
			}finally {
				try {
					conn.close();
				} catch (Exception e2) {
					e2.printStackTrace();
				}
			}
			return false;
		}

}
