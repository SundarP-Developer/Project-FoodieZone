package home;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

/**
 * Servlet implementation class user
 */
public class user extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public user() {
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
		
		
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		String address=request.getParameter("address");
		String vault_id=request.getParameter("vault_id");
		String vault_pass=request.getParameter("vault_pass");
		String food_name=request.getParameter("food_name");
		String hotel_name=request.getParameter("hotel_name");
		String total=request.getParameter("total");
		
		System.out.println("user:"+food_name+hotel_name+total);
		
		int vaultpass=Integer.parseInt(vault_pass);
		int tot=Integer.parseInt(total);
		
		boolean ans1=false;
		
		try {
			ans1=User_Process.check_vault_amount(tot, vault_id, vaultpass);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		boolean ans=false;
		
		if(ans1) {
		
		try {
			try {
				ans=User_Process.order_details(name,phone,address,food_name,hotel_name,total);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
		
		
		if(ans1==true && ans==true) {
			response.sendRedirect("done.jsp");
		}
		else {
			response.sendRedirect("error3.jsp");
		}
	}

}
