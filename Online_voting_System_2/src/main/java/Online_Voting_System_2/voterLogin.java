package Online_Voting_System_2;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class voterLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		DatabaseManager db=new DatabaseManager();
		java.sql.Connection con=db.getConnection();
		
		String voternum=request.getParameter("voterNumber");
		
		try {
			PreparedStatement preparedStatement= con.prepareStatement("select voter_card_number from  vote where voter_card_number ='"+voternum+"'");
		    ResultSet rs= preparedStatement.executeQuery("select voter_card_number from  vote where voter_card_number ='"+voternum+"'");
		      if(rs.next()) {
		    	  response.sendRedirect("voterCheck.jsp");
		    	  out.println("You already voted........"+rs.getString("voter_card_number"));
		      }
		      else 
		      {
		    	  PreparedStatement preparedStatement2=con.prepareStatement("select vid,pnumber from voters where voter_card_number ='"+voternum+"'");
		    	  ResultSet rs1= preparedStatement2.executeQuery("select vid,pnumber from voters where voter_card_number ='"+voternum+"'");
		          if(rs1.next()) {
		        	  String contact = rs1.getString("pnumber");
		        	  response.sendRedirect("userWelcome.jsp?con="+contact);
		        	  out.println(contact);
		        	  
		          }
		          else {
		        	  out.println("Please enter valid voter card number");
		          }
		      
		      }
		}catch(SQLException e) {
			e.printStackTrace();
		}
		out.println(voternum);	
		
	}

}
