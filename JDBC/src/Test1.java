import java.sql.*;

public class Test1 {

	public static void main(String[] args) {
		String driver = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://192.168.10.71:3306/life";
		String user = "root";
		String password = "123456";
		
		try {
			Class.forName(driver);
			Connection conn = DriverManager.getConnection(url, user, password);
			if (!conn.isClosed()) {
				System.out.println("success");				
			} else {
				System.out.println("error");
			}
		} catch (ClassNotFoundException e) {
			// TODO �Զ����ɵ� catch ��
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO �Զ����ɵ� catch ��
			e.printStackTrace();
		}
	}
}