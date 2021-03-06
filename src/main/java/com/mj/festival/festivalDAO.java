package com.mj.festival;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Scanner;

import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.t4.main.DBManager_Main;

public class festivalDAO {
	//============================	
	private Connection con;
	private static final festivalDAO FesDAO = new festivalDAO(DBManager_Main.getDbm().connect());
	
	private festivalDAO() {
		//	private Connection con = DBManager_Main.getDbm().connect();
	}
	private festivalDAO(Connection con) {
		super();
		this.con = con;
	}
	public static festivalDAO getFesdao() {
		return FesDAO;
	}
	//============================	
	
	public void work(HttpServletRequest request) {

		String result = "";
		Scanner k = null;

		try {
//			k = new Scanner(System.in);
//			System.out.println("�˻��� : ");
//			String str = k.next();
//			str = URLEncoder.encode(str, "utf-8");

			URL url = new URL(
					"http://openapi.seoul.go.kr:8088/75784a6a50706d6a3633574c735743/json/culturalEventInfo/1/1000/");
//			System.out.println(url);

			BufferedReader bf;
			bf = new BufferedReader(new InputStreamReader(url.openStream(), "utf-8"));
			result = bf.readLine();

			JSONParser jp = new JSONParser();
			JSONObject jo = (JSONObject) jp.parse(result);
//			System.out.println(jo);
			JSONObject culturalEventInfo = (JSONObject) jo.get("culturalEventInfo");
			JSONArray row = (JSONArray) culturalEventInfo.get("row");
//			System.out.println(culturalEventInfo);

			String codeName = null;
			String guName = null;
			String title = null;
			String fdate = null;
			String place = null;
			String program = "-";
			String orgLink = "-";
			String mainImg = null;
			String useTarget = null;
			String useFee = "-";

			ArrayList<festival> festivals = new ArrayList<festival>();

			for (int i = 0; i < row.size(); i++) {

				JSONObject item = (JSONObject) row.get(i);
				codeName = (String) item.get("CODENAME");
				guName = (String) item.get("GUNAME");
				title = (String) item.get("TITLE");
				fdate = (String) item.get("DATE");
				place = (String) item.get("PLACE");
				program = (String) item.get("PROGRAM");
				orgLink = (String) item.get("ORG_LINK");
				mainImg = (String) item.get("MAIN_IMG");
				useTarget = (String) item.get("USE_TRGT");
				useFee = (String) item.get("USE_FEE");

				if (codeName.equals("����-��ȭ/����")) {

					festival fes = new festival(i, codeName, guName, title, fdate, place, program, orgLink, mainImg,
							useTarget, useFee);
					festivals.add(fes);

				} else if (codeName.equals("����-�ڿ�/���")) {

					festival fes = new festival(i, codeName, guName, title, fdate, place, program, orgLink, mainImg,
							useTarget, useFee);
					festivals.add(fes);

				} else if (codeName.equals("����-����/����")) {

					festival fes = new festival(i, codeName, guName, title, fdate, place, program, orgLink, mainImg,
							useTarget, useFee);
					festivals.add(fes);

				} else if (codeName.equals("����-�ù�ȭ��")) {

					festival fes = new festival(i, codeName, guName, title, fdate, place, program, orgLink, mainImg,
							useTarget, useFee);
					festivals.add(fes);

				} else if (codeName.equals("����-��Ÿ")) {

					festival fes = new festival(i, codeName, guName, title, fdate, place, program, orgLink, mainImg,
							useTarget, useFee);
					festivals.add(fes);

				}


			}
			request.setAttribute("festivals", festivals);


		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	
	
	public void getFestival(HttpServletRequest request) {

		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {

			String sql = "select * from festival_list where guname=?";

			pstmt = con.prepareStatement(sql);
			
			String kangnam = request.getParameter("Seoul");
			pstmt.setString(1, kangnam);
			
			rs = pstmt.executeQuery();
			
			ArrayList<festival> festivals = new ArrayList<festival>();
			festival f = null;

			while (rs.next()) {
				f = new festival();
				
				f.setNo(rs.getInt("m_no"));
				f.setGuName(rs.getString("guname"));
				f.setTitle(rs.getString("title"));
				f.setMainImg(rs.getString("mainimg"));

				festivals.add(f);
			}
				request.setAttribute("fes", festivals);

		} catch (Exception e) {
			System.out.println(e);

		} finally {

			DBManager_Main.getDbm().close(null, pstmt, rs);
		}
	}

	
	
	
	public void getFestivalInfo(HttpServletRequest request) {

		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			String sql = "select * from festival_list where m_no=?";

			pstmt = con.prepareStatement(sql);
			String no = request.getParameter("m_no");
			pstmt.setString(1, no);
			rs = pstmt.executeQuery();

			festival f = null;

			while (rs.next()) {
				f = new festival();
				
				f.setNo(rs.getInt("m_no"));
				f.setTitle(rs.getString("title"));
				f.setPlace(rs.getString("place"));
				f.setFdate(rs.getString("fdate"));
				f.setUseTarget(rs.getString("usetarget"));
				f.setUseFee(rs.getString("usefee"));
				f.setProgram(rs.getString("program"));
				f.setOrgLink(rs.getString("orglink"));
				f.setMainImg(rs.getString("mainimg"));

				request.setAttribute("fes", f);
			}

		} catch (Exception e) {
			System.out.println(e);

		} finally {
			DBManager_Main.getDbm().close(null, pstmt, rs);
		}
	}

}
