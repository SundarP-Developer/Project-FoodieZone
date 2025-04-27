package home;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class total_cal
 */
public class total_cal extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public total_cal() {
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
		
		String hotel_name=request.getParameter("hotel_name");
		String food_name=request.getParameter("food_name");
		String quantity=request.getParameter("quantity");
		String price=request.getParameter("price");
		
		int prices=Integer.parseInt(price);
		int quantitys=Integer.parseInt(quantity);
		
		int total=0;
		int balance=0;
		
		total=User_Process.total(quantitys, prices);
		
		if(total!=0) {
			request.setAttribute("total", total);
			request.setAttribute("food_name",food_name);
			request.setAttribute("hotel_name", hotel_name);
			request.setAttribute("quantity",quantity);
			request.setAttribute("price", price);
		}
		if(true) {
			RequestDispatcher dispatch=request.getRequestDispatcher("payment.jsp");
			dispatch.forward(request, response);
		}
	
	}

}
