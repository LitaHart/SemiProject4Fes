package com.yj.main;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBManager {
	// AOP개념으로; DB할 때마다 반복되는 내용 정리

	// DB 작업 시에 어찌되었든 연결 해야됨.
	public static Connection connect() throws SQLException {
String url = "jdbc:oracle:thin:@db202204301707_medium?TNS_ADMIN=/Users/allmight/eclipse-workspace/OracleWallet/Wallet_DB202204301707";
		return DriverManager.getConnection(url, "YJJ", "YJ802soldesk");
	}

	// 매 작업 후 닫는 것.
	public static void close(Connection con, PreparedStatement pstmt, ResultSet rs) {
		try {
			if (rs != null) {
				rs.close();
			}
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}