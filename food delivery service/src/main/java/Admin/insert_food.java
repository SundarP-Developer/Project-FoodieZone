package Admin;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Paths;
import java.sql.SQLException;

/**
 * Servlet implementation class insert_food 
 */
public class insert_food extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public insert_food() {
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
		
		boolean ans=false;
		
		String hotel_name=request.getParameter("hotel_name");
		String food_name = request.getParameter("food_name");
		String price=request.getParameter("price");
//		Part filePart = request.getPart("photo");
		
//		String FileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
//		
//		InputStream photo = filePart.getInputStream();
		
		int prices = Integer.parseInt(price);
		
		System.out.println(hotel_name+food_name+prices);
		
		try {
			ans=Admin.insert_food(hotel_name,food_name,prices);	
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(ans) {
			response.sendRedirect("inserted_food.jsp");
		}
		
	}

}
