package pack1;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
public class CreateTable 
{
	public static void main(String[] args) 
	{
		String url = "jdbc:postgresql://192.168.1.17/cse_db24";
		String username = "24bcsh02";
		String password = "24bcsh02";
		try (Connection con = DriverManager.getConnection(url, username, password);Statement stmt = con.createStatement()) 
		{
			String createTableSQL = "CREATE TABLE IF NOT EXISTS student (" +
					    "roll_no INT PRIMARY KEY, " +
					    "name VARCHAR(50), " +
					    "age INT, " +
					    "department VARCHAR(30), " +
					    "cgpa NUMERIC(4,2))";
			stmt.executeUpdate(createTableSQL);
			System.out.println("Table 'student' created successfully.");
		} 
		catch (Exception e) 
		{
		    System.out.println("Error: " + e.getMessage());
		}
	}
}