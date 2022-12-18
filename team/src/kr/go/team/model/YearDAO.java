package kr.go.team.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import kr.go.team.dto.YearDTO;

public class YearDAO {

	private Connection con = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	String sql = "";
	

	public ArrayList<YearDTO> getYearList() {
		ArrayList<YearDTO> yearList = new ArrayList<YearDTO>();
		try {
			con = Oracle.getConnection();
			pstmt = con.prepareStatement(Oracle.YEAR_SELECT_ALL);
			rs = pstmt.executeQuery();
			while(rs.next()){
				YearDTO dto = new YearDTO();
				dto.setNo(rs.getInt("no"));
				dto.setTitle(rs.getString("title"));
				dto.setYdisA(rs.getString("ydisA"));
				dto.setYdisB(rs.getString("ydisB"));
				dto.setYdisC(rs.getString("ydisC"));
				dto.setYdisD(rs.getString("ydisD"));
				dto.setYdisE(rs.getString("ydisE"));
				dto.setPeriod(rs.getString("period"));
				dto.setTarget(rs.getString("target"));
				dto.setCaution(rs.getString("caution"));
				yearList.add(dto);
			}
		} catch(ClassNotFoundException e){
			System.out.println("드라이버 로딩 실패");
			e.printStackTrace();
		} catch(SQLException e){
			System.out.println("SQL 구문이 처리되지 못했습니다.");
			e.printStackTrace();
		} catch(Exception e){
			System.out.println("잘못된 연산 및 요청으로 인해 목록을 불러오지 못했습니다.");
		} finally {
			Oracle.close(rs, pstmt, con);
		}
		return yearList;
	}
	
	
}
