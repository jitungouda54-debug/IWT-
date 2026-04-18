package pack1;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Scanner;
public class InsertKeyboard 
{
	public static void main(String[] args) 
	{
		String url = "jdbc:postgresql://192.168.1.17/cse_db24";
		String username = "24bcsh02";
		String password = "24bcsh02";
		try (Connection con = DriverManager.getConnection(url, username, password); Scanner scanner = new Scanner(System.in)) 	  {
			String insertSQL = "INSERT INTO student (roll_no, name, age, department, cgpa) VALUES (?, ?, ?, ?, ?)";
			PreparedStatement pstmt = con.prepareStatement(insertSQL);
			System.out.println("--- Enter Student Details ---");
			System.out.print("Enter Roll No: ");
			pstmt.setInt(1, scanner.nextInt());
			scanner.nextLine();
			System.out.print("Enter Name: ");
			pstmt.setString(2, scanner.nextLine());
			System.out.print("Enter Age: ");
			pstmt.setInt(3, scanner.nextInt());
			scanner.nextLine();
			System.out.print("Enter Department: ");
			pstmt.setString(4, scanner.nextLine());
			System.out.print("Enter CGPA: ");
			pstmt.setFloat(5, scanner.nextFloat());

			int rowsAffected = pstmt.executeUpdate();
			if (rowsAffected > 0) 
			{
				System.out.println("Task 4: Student record inserted successfully via Scanner.");
			}

		} 
		catch (Exception e) 
		{
			System.out.println("Error: " + e.getMessage());
		}
	}
}