package com.files.entites;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
public class BookDataDao{

Connection con;
PreparedStatement ps;
ResultSet rs;
public List<BookData> getRecords(int start , int total)
{	
	List<BookData> users=new ArrayList<>();
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		System.out.println("Driver Found....");
		
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Tour","root","12345678");
		System.out.println("Connection Created");
		
			ps=con.prepareStatement("select * from Book order by Booking_Time Desc limit ?,? ");
			ps.setInt(1, start);
			ps.setInt(2, total);
			
			rs=ps.executeQuery();
			while(rs.next())
			{
				BookData da = new BookData();
				da.setDestination(rs.getString("Destination"));
				da.setGuests(rs.getInt("Guests"));
				da.setPhone(rs.getLong("Phone"));
				da.setArrival(rs.getString("Arrival"));
				da.setLeaving(rs.getString("Leaving"));
				da.setFrom(rs.getString("WhereFrom"));
				da.setBooking_Time(rs.getString("Booking_Time"));
				users.add(da);
			}
			
		}
	
		catch (ClassNotFoundException | SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return users;
	}

public int countRecords()
{
	int count =0;
	
	try {
		ps=con.prepareStatement("select count(Destination) from Book ");
		
		rs=ps.executeQuery();
		if(rs.next())
		{
			count=rs.getInt(1);
		}
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return count;
}
}
