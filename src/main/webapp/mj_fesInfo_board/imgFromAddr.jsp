<%@page import="com.t4.main.DBManager_Main"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="java.net.URLDecoder"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.mj.festival.festival"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.json.simple.JSONObject"%>
<%
PreparedStatement pstmt = null;
ResultSet rs = null;

try {

	String sql = "select * from festival_list where guname=?";

	Connection con = DBManager_Main.getDbm().connect();
	pstmt = con.prepareStatement(sql);
	String guName = (String) request.getParameter("guname");
	guName = URLDecoder.decode(guName, "UTF-8");

	pstmt.setString(1, guName);
	rs = pstmt.executeQuery();

	ArrayList<festival> festivals = new ArrayList<festival>();
	festival f = null;
	JSONArray arr = new JSONArray();
	
	int i = 0;
	while (rs.next()) {
		JSONObject obj = new JSONObject(); //{}
		obj.put("m_no", rs.getString("m_no"));
		obj.put("title", rs.getString("title"));
		obj.put("mainImg", rs.getString("mainimg"));
		arr.add(i, obj);
		i++;
	}
	
	// json 형태로 리턴하기 위한 json객체 생성
	JSONObject jobj = new JSONObject(); //{}
	jobj.put("result", arr);

	// 응답시 json 타입이라는 걸 명시 ( 안해주면 json 타입으로 인식하지 못함 )
	response.setCharacterEncoding("UTF-8");
	response.setContentType("application/json");
	out.print(jobj.toString()); // json 형식으로 출력	

} catch (Exception e) {
	System.out.println(e);

} finally {
	DBManager_Main.getDbm().close(null, pstmt, rs);
}
%>
