package sec01;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {
	
	private Connection conn; //클래스타입 참조변수 선언
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private static UserDAO singleton = new UserDAO();
	
	private UserDAO() { //싱글톤 객체 생성으로 변경
		try {
			
			String dbURL = "jdbc:mysql://localhost:3306/basketball?serverTimezone=Asia/Seoul&useSSL=false";
			String dbID = "root";
			String dbPassword = "1234";
			String driver = "com.mysql.cj.jdbc.Driver"; //드라이브 로딩
			
			Class.forName(driver); //드라이브 로딩
			conn = DriverManager.getConnection(dbURL,dbID,dbPassword);
			
		} catch (Exception e) {
			System.out.println("접속이 끊어졌습니다.");
			e.printStackTrace();
		}
	}
	
	public static UserDAO getInstance() {
		return singleton;
	}
	
	
	public int login (String name, String num) {
		String SQL = "SELECT num from player WHERE name = ?";
		try {
			pstmt = conn.prepareStatement(SQL); //SQL 명령어를 
			pstmt.setString(1, name); //매개변수 번호 1에 오는 name 세팅
			rs=pstmt.executeQuery(); //SQL쿼리를 실행하고 쿼리에 의해 생성된 ResultSet 개체를 반환한다.
			if(rs.next()) {
				if(rs.getString(1).equals(num)) { //인덱스1의 name과 num이 일치하는지 확인
					return 1; //로그인 성공
				}
				else
					return 0; //비밀번호가 틀림
			}
			return -1; //아이디가 없음
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -2; //데이터베이스 오류
	}

}
