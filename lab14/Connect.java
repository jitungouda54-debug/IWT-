package pack1;
import java.sql.Connection;
import java.sql.DriverManager;
public class Connect 
{
    	public static void main(String[] args) 
	{
		String driver = "org.postgresql.Driver";
		String url = "jdbc:postgresql://192.168.1.17/cse_db24";
		String username = "24bcsh02";
		String password = "24bcsh02";
		try 
		{
			Class.forName(driver);
			Connection con = DriverManager.getConnection(url, username, password);
			if (con != null) 
			{
				System.out.println("Task 1: Connection established successfully!");
				con.close(); 
			}
		} 
		catch (Exception e) 
		{
			System.out.println("Connection failed: " + e.getMessage());
			e.printStackTrace();
		}
	}
}