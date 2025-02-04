package controller;

import util.DatabaseUtil;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;
@WebServlet("/BookingServlet")
public class BookingServlet extends HttpServlet {
    
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int userId = (int) request.getSession().getAttribute("userId");  // Assuming the user ID is stored in session
        String pickupLocation = request.getParameter("pickupLocation");
        String dropLocation = request.getParameter("dropLocation");
        String truckType = request.getParameter("truckType");
        float loadWeight = Float.parseFloat(request.getParameter("loadWeight"));
        String bookingDate = new java.util.Date().toString();  // You could also store the actual timestamp from the database

        try (Connection conn = DatabaseUtil.getConnection()) {
            // Insert the booking details into the database
        	if(userId != 0) {
            String sql = "INSERT INTO Bookings (user_id, pickup_location, drop_location, truck_type, load_weight) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, userId);
            stmt.setString(2, pickupLocation);
            stmt.setString(3, dropLocation);
            stmt.setString(4, truckType);
            stmt.setFloat(5, loadWeight);
            stmt.executeUpdate();
        	}else {
        		response.sendRedirect("login.jsp");
        	}

            // Set booking details as request attributes to display in order.jsp
            request.setAttribute("pickupLocation", pickupLocation);
            request.setAttribute("dropLocation", dropLocation);
            request.setAttribute("truckType", truckType);
            request.setAttribute("loadWeight", loadWeight);
            request.setAttribute("bookingDate", bookingDate);

            // Forward to order.jsp
            RequestDispatcher dispatcher = request.getRequestDispatcher("order.jsp");
            dispatcher.forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("booking.jsp?error=Booking failed, please try again.");
        }
    }
}
