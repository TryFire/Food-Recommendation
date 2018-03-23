/**
 * 
 */
package com.siqin.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import java.sql.Connection;

/**
 * @author Toxicant
 *
 */
public interface ScenicSearchDao {
	
	public ResultSet getResult(Connection conn,String location_keyword) throws SQLException;
	
}
