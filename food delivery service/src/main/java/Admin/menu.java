package Admin;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class menu
 */
public class menu extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public menu() {
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
		
		String action=request.getParameter("action");
		
		switch (action) {
		
        case "add_hotel":
            response.sendRedirect("add_hotel.jsp");
            break;
            
        case "insert_food":
            response.sendRedirect("insert_food.jsp");
            break;
            
        case "hotel_details":
            response.sendRedirect("ad_hotel_list.jsp");
            break;
            
        case "food_details":
            response.sendRedirect("ad_food_details.jsp");
            break;
            
        case "update":
            response.sendRedirect("update.jsp");
            break;
            
        case "order_details":
            response.sendRedirect("order_details.jsp");
            break;
}
		
	}

}
