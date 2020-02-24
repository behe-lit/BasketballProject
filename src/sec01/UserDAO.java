package sec01;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public UserDAO() {
		try {
			
			String dbURL = "jdbc:mysql://localhost:3306/basketball?serverTimezone=Asia/Seoul&useSSL=false";
			String dbID = "root";
			String dbPassword = "1234";
			String driver = "com.mysql.cj.jdbc.Driver";
			
			Class.forName(driver);
			conn = DriverManager.getConnection(dbURL,dbID,dbPassword);
			
		} catch (Exception e) {
			System.out.println("������ ���������ϴ�.");
			e.printStackTrace();
		}
	}
	
	public int login (String name, String num) {
		String SQL = "SELECT num from player WHERE name = ?";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, name);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).equals(num)) {
					return 1; //�α��� ����
				}
				else
					return 0; //��й�ȣ�� Ʋ��
			}
			return -1; //���̵� ����
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -2; //�����ͺ��̽� ����
	}

}
