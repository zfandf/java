import java.sql.SQLException;

class A {

    public void fn() throws SQLException {
    	
    }
}

public class B extends A {
	
	public static void main(String[] args) {
		System.out.println("ha");
		B.m();
	}
	
    @Override
    public void fn() throws SQLException {
        super.fn();
    }
    
    public static void m() {
    	try {
    		throw new SQLException();
    	} catch (SQLException ex) {
    		ex.printStackTrace();
    	} catch (Exception ex) {
    		ex.printStackTrace();
    	}
    }
}