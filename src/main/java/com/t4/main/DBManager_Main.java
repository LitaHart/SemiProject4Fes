package com.t4.main;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBManager_Main {
	

	private static final DBManager_Main DBM = new DBManager_Main();
	private DBManager_Main() {
		// TODO Auto-generated constructor stub
	}
	
	// AOP개념으로; DB할 때마다 반복되는 내용 정리

	public static DBManager_Main getDbm() {
		return DBM;
	}

	// DB 작업 시에 어찌되었든 연결 해야됨.
	public Connection connect() {
		// yj
		// String url = "jdbc:oracle:thin:@db202204301707_medium?TNS_ADMIN=/Users/allmight/eclipse-workspace/OracleWallet/Wallet_DB202204301707";
		//mj
		String url = "jdbc:oracle:thin:@db202204301707_medium?TNS_ADMIN=C:/mj/Wallet_DB202204301707";
		// sw
		//String url = "jdbc:oracle:thin:@db202204301707_medium?TNS_ADMIN=C:/siwonjava/Wallet_DB202204301707";
		// dh
		//String url = "jdbc:oracle:thin:@db202204301707_medium?TNS_ADMIN=/Users/mitakeran/LDH/Wallet_DB202204301707";
		System.out.println("연결요청");
		try {
			return DriverManager.getConnection(url, "YJJ", "YJ802soldesk");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	// 매 작업 후 닫는 것.
	public void close(Connection con, PreparedStatement pstmt, ResultSet rs) {
		try {
			if (rs != null) {
				rs.close();
			}
			pstmt.close();
			
			if(con != null) {
			con.close();
			}
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
