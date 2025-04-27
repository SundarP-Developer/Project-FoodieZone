package home;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Servlet implementation class check_balance
 */
public class check_balance extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public check_balance() {
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
		
		String vault_id=request.getParameter("vault_id");
		String pass=request.getParameter("pass");
		
		System.out.println("ch is :"+vault_id+pass);
		
		ResultSet rs=null;
		int vault_amt=0;
		
		try {
			rs=User_Process.check_balance(vault_id, pass);
			
			if(rs.next()) {
				vault_amt=rs.getInt("vault_amount");
			}
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		System.out.println("vault amount is :"+vault_amt);
		
		if(rs!=null) {
			request.setAttribute("vault_id", vault_id);
			request.setAttribute("balance", vault_amt);
			
				RequestDispatcher dispatch=request.getRequestDispatcher("vault_balance.jsp");
				dispatch.forward(request, response);
		}

	}

}
