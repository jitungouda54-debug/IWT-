package pack1;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
public class InsertHardCoded 
{
	public static void main(String[] args) 
	{
		String url = "jdbc:postgresql://192.168.1.17/cse_db24";
		String username = "24bcsh02";
		String password = "24bcsh02";
		try (Connection con = DriverManager.getConnection(url, username, password); Statement stmt = con.createStatement()) 
		{
			String insert1 = "INSERT INTO student (roll_no, name, age, department, cgpa) VALUES (101, 'Alice Smith', 20, 'CSE', 8.75)";
			String insert2 = "INSERT INTO student (roll_no, name, age, department, cgpa) VALUES (102, 'Bob Johnson', 21, 'ECE', 7.90)";
			stmt.executeUpdate(insert1);
			stmt.executeUpdate(insert2);
			System.out.println("Task 3: Two hard-coded records inserted successfully.");

		} 
		catch (Exception e) 
		{
		    System.out.println("Error: " + e.getMessage());
		}
	}
}