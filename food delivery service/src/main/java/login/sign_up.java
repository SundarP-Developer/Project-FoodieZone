package login;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


/**
 * Servlet implementation class sign_up
 */
public class sign_up extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public sign_up() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		String sname = request.getParameter("sname");
		String setpass=request.getParameter("setpass");
		String smail = request.getParameter("smail");
		String phone = request.getParameter("phone");
		String uname = request.getParameter("uname");
	    String password = request.getParameter("pass");
	    
	    System.out.println(sname+setpass+smail+phone+uname+password);
	    
	    signupback sign=new signupback();
	    
	    boolean send=false;
	    
	    try {
			try {
				send= sign.signUp(sname,setpass, smail, phone, uname, password);
			}
			catch (ClassNotFoundException e) {
				 e.printStackTrace();
			}
		} catch (SQLException e) {
			 e.printStackTrace();
		}
	    
	    String send1[]=new String[2];
	    String vaultId=null;
	    String vaultpass=null;
	    
	    try {
			send1=signupback.send();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	    //set the value of vault id and password	    
	    
	    	vaultId=send1[0];
	    	vaultpass=send1[1];
	    	
	    	System.out.println("Vault id and pass :"+ vaultId+" "+vaultpass);
	    	
	    	if(vaultId!=null && vaultpass!=null) {
	    		 request.setAttribute("vaultid",vaultId);
	    		 request.setAttribute("vaultpass", vaultpass);
	    	}
	
	   if(send) {		
		   RequestDispatcher dispatch=request.getRequestDispatcher("vaultpass.jsp");
		   dispatch.forward(request,response);
	    }
	   else {
		   response.sendRedirect("error1.jsp");
	   }

	}

}
