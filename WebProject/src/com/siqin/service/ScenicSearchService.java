package com.siqin.service;

import com.siqin.impl.ScenicSearchDaoImpl;
import com.siqin.util.ConnectionFactory;

import java.util.ArrayList;
import java.util.List;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.siqin.entity.*;
import com.siqin.dao.ScenicSearchDao;

public class ScenicSearchService {

	private ScenicSearchDao ScenicSearchDao = new ScenicSearchDaoImpl();
	
	public ScenicSearchService() {
		// TODO Auto-generated constructor stub
	}
	
	public List<ScenicInfo> getScenics(String location){
		Connection conn = ConnectionFactory.getInstance().makeConnection();
		ResultSet rs = null;
		List<ScenicInfo> scenics = new ArrayList<>();
		try{
			rs = ScenicSearchDao.getResult(conn, location);
			while(rs.next()){
				ScenicInfo temp = new ScenicInfo();
				temp.setScenic_name(rs.getString(0));
				temp.setScenic_type(rs.getString(1));
				temp.setScenic_address(rs.getString(2));
				scenics.add(temp);
			}
		}catch (SQLException e){
			e.printStackTrace();
		}
		return scenics;
	}

}
