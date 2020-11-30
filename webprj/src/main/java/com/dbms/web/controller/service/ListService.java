package com.dbms.web.controller.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.dbms.web.controller.entity.WeaponTrend;


public class ListService {
	private String url="jdbc:oracle:thin:@oracle.cise.ufl.edu:1521/orcl";
	private String uid= "daye";
	private String pwd="qwert1234";
	private String driver = "oracle.jdbc.driver.OracleDriver";
	
	
	public List<WeaponTrend> getList()throws ClassNotFoundException, SQLException{
	
	
		String sql = "SELECT wep_type, event_year, COUNT(*)num FROM AGASKIN.Weapon\r\n"
				+ "NATURAL JOIN AGASKIN.Event\r\n"
				+ "WHERE event_year >= 1985\r\n"
				+ "AND event_year <= 2000\r\n"
				+ "AND weapon_id <> -9\r\n"
				+ "GROUP BY wep_type, event_year\r\n"
				+ "HAVING wep_type = 'Explosives'\r\n"
				+ "ORDER BY event_year ASC";
//		
//		String sql1 ="SELECT wep_type, event_year, COUNT(*) FROM AGASKIN.Weapon\r\n"
//				+ "NATURAL JOIN AGASKIN.Event\r\n"
//				+ "WHERE event_year >= 1985\r\n"
//				+ "AND event_year <= 2000\r\n"
//				+ "AND weapon_id <> -9\r\n"
//				+ "GROUP BY wep_type, event_year\r\n"
//				+ "HAVING wep_type = 'Explosives'";
		
		Class.forName(driver);
		Connection con = DriverManager.getConnection(url,uid,pwd);
		Statement st = con.createStatement();
//		ResultSet rs = st.executeQuery(sql);
//		
//		ArrayList<Notice> list = new ArrayList<Notice>();
//		
//		while(rs.next()) {
//		String country_code = rs.getString("country_code");
//		String country_name = rs.getString("country_name");
//		String region_code = rs.getString("region_code");
//		String region_name = rs.getString("region_name");
//				
//		Notice notice = new Notice(country_code, country_name,region_code,region_name);
//		list.add(notice);
//		}
		
		
		ResultSet rs = st.executeQuery(sql);
//		ResultSet ws = st.executeQuery(sql1);
//		
		List<WeaponTrend> list1 = new ArrayList<WeaponTrend>();
//		List<WeaponTrend> list2 = new ArrayList<WeaponTrend>();
		
		while(rs.next()) {
		String wep_type = rs.getString("wep_type");
		String event_year = rs.getString("event_year");
		int num = rs.getInt("num");
		
		WeaponTrend weapontrend = new WeaponTrend(wep_type,event_year,num);
		
		list1.add(weapontrend);
		}
		
		
		
		
		
		
		
		rs.close();
		st.close();
		con.close();
		return list1;
		}
		
}
