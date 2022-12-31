package Online_Voting_System_2;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class RegisterUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");	
		DatabaseManager db=new DatabaseManager();
		java.sql.Connection con=db.getConnection();
		
		String name=request.getParameter("name");
		String voter_card_number= request.getParameter("voternumber");
		String dob=request.getParameter("dob");
		String contact=request.getParameter("number");
		String email=request.getParameter("email");
		String addrs =request.getParameter("addrs");
	
	try {
		PreparedStatement preparedStatement = con.prepareStatement("insert into voters (name,pnumber,email,voter_card_number,addrs,dob)values('"+name+"','"+contact+"','"+email+"','"+voter_card_number+"','"+addrs+"','"+dob+"')");
		  preparedStatement.executeUpdate();
		  response.sendRedirect("adminWelcome.jsp");
				
	}catch(SQLException e) {
		e.printStackTrace();
		
	}
	}

}
