package pack1;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Scanner;
public class Delete
{
	public static void main(String[] args) 
	{
		String url = "jdbc:postgresql://192.168.1.17/cse_db24";
		String username = "24bcsh02";
		String password = "24bcsh02";
		try (Connection con = DriverManager.getConnection(url, username, password);
		     Scanner scanner = new Scanner(System.in)) 
		{
			String deleteSQL = "DELETE FROM student WHERE roll_no = ?";
			PreparedStatement pstmt = con.prepareStatement(deleteSQL);
			System.out.print("Enter the Roll No of the student to delete: ");
			int rollNo = scanner.nextInt();
			pstmt.setInt(1, rollNo);
			int rowsAffected = pstmt.executeUpdate();
			if (rowsAffected > 0) 
			{
				System.out.println("Record deleted successfully for Roll No: " + rollNo);
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