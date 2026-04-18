  package pack1;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Scanner;
public class Update
{
	public static void main(String[] args) 
	{
		String url = "jdbc:postgresql://192.168.1.17/cse_db24";
		String username = "24bcsh02";
		String password = "24bcsh02";
		try (Connection con = DriverManager.getConnection(url, username, password);
		     Scanner scanner = new Scanner(System.in)) 
		{
			String updateSQL = "UPDATE student SET cgpa = ? WHERE roll_no = ?";
			PreparedStatement pstmt = con.prepareStatement(updateSQL);
			System.out.print("Enter the Roll No of the student to update: ");
			int rollNo = scanner.nextInt();
			System.out.print("Enter the new CGPA: ");
			float newCgpa = scanner.nextFloat();
			pstmt.setFloat(1, newCgpa);
			pstmt.setInt(2, rollNo);
			int rowsAffected = pstmt.executeUpdate();
			if (rowsAffected > 0) 
			{
				System.out.println("CGPA updated successfully for Roll No: " + rollNo);
			} 
			else 
			{
				System.out.println("Student with Roll No " + rollNo + " not found.");
			}
		}
		catch (Exception e) 
		{
			System.out.println("Error: " + e.getMessage());
		}
	}
}
