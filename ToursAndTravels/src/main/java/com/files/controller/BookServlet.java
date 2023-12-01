package com.files.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BookServlet
 */
public class BookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		response.setContentType("html/text");		
		Bookbean ba= new Bookbean();
		
		
		LocalDateTime date = LocalDateTime.now();
		
		ba.setDestination(request.getParameter("Destination"));
		ba.setFrom(request.getParameter("From"));
		ba.setGuests(Integer.parseInt(request.getParameter("Guests")));
		ba.setPhone(Long.parseLong(request.getParameter("Contact")));
		ba.setArrival(request.getParameter("Arrival"));
		ba.setLeaving(request.getParameter("Leaving"));
		ba.setBooking_Time(date.toString());
		
		int status=InsertRecord(ba);
		if(status==1)
		{
			
			RequestDispatcher rd = request.getRequestDispatcher("BookSuccess.jsp");
			rd.forward(request, response);
			 
		}
		else
		{
			  RequestDispatcher rd = request.getRequestDispatcher("BookFail.jsp");
			  rd.forward(request, response);
			 
		}

	}
	
	public class Bookbean 
	{
		String Destination,From;
		int Guests;
		long Phone;
		String Arrival;
		String Leaving;
		String booking_Time;
		public String getDestination() {
			return Destination;
		}
		public void setDestination(String destination) {
			Destination = destination;
		}
		public String getFrom() {
			return From;
		}
		public void setFrom(String from) {
			From = from;
		}
		public int getGuests() {
			return Guests;
		}
		public void setGuests(int guests) {
			Guests = guests;
		}
		public long getPhone() {
			return Phone;
		}
		public void setPhone(long phone) {
			Phone = phone;
		}
		public String getArrival() {
			return Arrival;
		}
		public void setArrival(String arrival) {
			Arrival = arrival;
		}
		public String getLeaving() {
			return Leaving;
		}
		public void setLeaving(String leaving) {
			Leaving = leaving;
		}
		public String getBooking_Time() {
			return booking_Time;
		}
		public void setBooking_Time(String booking_Time) {
			this.booking_Time = booking_Time;
		}
				
	}
	
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	public Integer InsertRecord(Bookbean ba)
	{
		int status=0;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("Driver Found....");
			
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Tour","root","Abhayray@1234");
			System.out.println("Connection Created");
			
			
				ps=con.prepareStatement("insert into Book values(?,?,?,?,?,?,?)");
				ps.setString(1, ba.getDestination());
				ps.setInt(2, ba.getGuests());
				ps.setLong(3, ba.getPhone());
				ps.setString(4, ba.getArrival());
				ps.setString(5, ba.getLeaving());
				ps.setString(6, ba.getFrom());
				ps.setString(7, ba.getBooking_Time());
				
				status=ps.executeUpdate();
			}
			catch (ClassNotFoundException | SQLException e) 
		{
			e.printStackTrace();
		}
		return status;
	}

}
