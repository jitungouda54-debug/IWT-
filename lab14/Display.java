package pack1;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
public class Display
{
	public static void main(String[] args) 
	{
		String url = "jdbc:postgresql://192.168.1.17/cse_db24";
		String username = "24bcsh02";
		String password = "24bcsh02";

		try (Connection con = DriverManager.getConnection(url, username, password);
		     Statement stmt = con.createStatement()) 
		{
			String selectSQL = "SELECT * FROM student";
			ResultSet rs = stmt.executeQuery(selectSQL);
			System.out.println("--- Student Records ---");
			System.out.println("Roll\tName\t\tAge\tDept\tCGPA");
			System.out.println("-----------------------------------------------------");
			while (rs.next()) 
			{
				int roll = rs.getInt("roll_no");
				String name = rs.getString("name");
				int age = rs.getInt("age");
				String dept = rs.getString("department");
				float cgpa = rs.getFloat("cgpa");
				System.out.println(roll + "\t" + name + "\t" + age + "\t" + dept + "\t" + cgpa);
			}

		} 
		catch (Exception e) 
		{
			System.out.println("Error: " + e.getMessage());
		}
	}
}