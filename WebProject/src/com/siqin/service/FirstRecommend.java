package com.siqin.service;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import com.siqin.dao.FoodInfoDao;
import com.siqin.dao.ScenicInfoDao;
import com.siqin.entity.*;
import com.siqin.impl.FoodInfoDaoImpl;
import com.siqin.impl.ScenicInfoDaoImpl;
import com.siqin.util.ConnectionFactory;

public class FirstRecommend {
	private FoodInfoDao foodInfoDao = new FoodInfoDaoImpl();
	private ScenicInfoDao scenicInfoDao = new ScenicInfoDaoImpl();
	
	public FirstRecommend() {
		// TODO Auto-generated constructor stub
	}
	
	public List getFood(){
		Connection conn = ConnectionFactory.getInstance().makeConnection();
		ResultSet rs = null;
		List<FoodInfo> food = new ArrayList<>();
		try{
			int n =(int)(1+Math.random()*(100-1+1));
			rs = foodInfoDao.getResult(conn,n);
			while(rs.next()){
				FoodInfo temp = new FoodInfo();
				/*temp.set(rs.getString(0));
				temp.set(rs.getString(1));
				temp.set(rs.getString(2));*/
				food.add(temp);
			}
		}catch (SQLException e){
			e.printStackTrace();
		}
		return food;
	}
	
	public List getScenics(){
		Connection conn = ConnectionFactory.getInstance().makeConnection();
		ResultSet rs = null;
		List<ScenicInfo> scenics = new ArrayList<>();
		try{
			int n =(int)(1+Math.random()*(100-1+1));
			rs = scenicInfoDao.getResult(conn,n);
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
