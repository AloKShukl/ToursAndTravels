package com.files.entites;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Datadao 
{
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	
	public Datadao()
	{
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("Driver Found....");
			
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Tour","root","12345678");
			System.out.println("Connection Created");
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public Data checklogin(String email,String password)
	{
		Data da=null;
		try {
			ps=con.prepareStatement("select * from Tourdata where email=? and password=?");
			ps.setString(1, email);
			ps.setString(2, password);
			
			rs=ps.executeQuery();
			
			if(rs.next())
			{
				da=new Data();
				da.setName(rs.getString(1));
				da.setEmail(rs.getString(2));
				da.setPassword(rs.getString(3));
				da.setPhone(rs.getLong(4));
				da.setAddress(rs.getString(5));
				da.setImageFileName(rs.getString(6));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return da;
		
	}
	
	public  Data  searchUser(String email)
	{
		Data da=null;
		try {
			ps=con.prepareStatement("select * from Tourdata where email=?");
			ps.setString(1, email);
			rs=ps.executeQuery();
			
			if(rs.next())
			{
				da = new Data();
				da.setName(rs.getString("Name"));
				da.setEmail(rs.getString("Email"));
				da.setAddress(rs.getString("Address"));
				da.setPassword(rs.getString("Password"));
				da.setPhone(rs.getLong("Phone"));

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return da;
	}
	
	public Integer insertRecord(Data da) 
	{	
		int status=0;
		try {
			ps=con.prepareStatement("insert into Tourdata values(?,?,?,?,?,?)");
			ps.setString(1, da.getName());
			ps.setString(2, da.getEmail());
			ps.setString(3, da.getPassword());
			ps.setLong(4, da.getPhone());
			ps.setString(5, da.getAddress());
			ps.setString(6, da.getImageFileName());
			status=ps.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return status;
	}
	
	public int DeleteUser(String email)
	{
		int row=0;
		try {
			ps=con.prepareStatement("delete from Tourdata where email=?");
			ps.setString(1, email);
			row=ps.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return row;
	}
	
	public int updaterecord(Data da)
	{
		int status=0;
		try {
			ps=con.prepareStatement("update Tourdata set name=?,password=?,phone=?,address=? where email=?");
			ps.setString(5, da.getEmail());
			ps.setString(1, da.getName());
			ps.setString(2, da.getPassword());
			ps.setLong(3, da.getPhone());
			ps.setString(4, da.getAddress());
			
			status=ps.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return status;
	}
	
	public List<Data> getRecords(int start , int total)
	{
		List<Data> users=new ArrayList<>();
		try {
			ps=con.prepareStatement("select * from Tourdata limit ?,?");
			ps.setInt(1, start);
			ps.setInt(2, total);
			
			rs=ps.executeQuery();
			while(rs.next())
			{
				Data da = new Data();
				da.setName(rs.getString("name"));
				da.setEmail(rs.getString("email"));
				da.setPassword(rs.getString("password"));
				da.setPhone(rs.getLong("phone"));
				da.setAddress(rs.getString("address"));
				users.add(da);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 return users;
	}
	
	public int countRecords()
	{
		int count =0;
		
		try {
			ps=con.prepareStatement("select count(email) from Tourdata ");
			
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
	
	public  int  UpdatePass(String pass,String email)
	{
		int status=0;
		try {
			ps=con.prepareStatement("update Tourdata set password=? where email=?");
			ps.setString(1, pass);
			ps.setString(2, email);
			status=ps.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return status;
	}
	public int UploadImage(String email,String imageFileName)
	{
		int status=0;
		try {
			ps=con.prepareStatement("update Tourdata set imageFileName=? where email=?");
			ps.setString(1, imageFileName);
			ps.setString(2, email);

			status=ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return status;
	}
}
