package com.files.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.files.entites.Data;
import com.files.entites.Datadao;

/**
 * Servlet implementation class RegisterServlet
 */
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		Data da = new Data();
		
		
		da.setName(request.getParameter("name"));
		da.setEmail(request.getParameter("email"));
		da.setPhone(Long.parseLong(request.getParameter("phone")));
		da.setAddress(request.getParameter("address"));
		
		String upass=request.getParameter("pass");
		String upass1=request.getParameter("pass1");
		
		String otp=request.getParameter("otp");
		String myotp=request.getParameter("myotp");
		
		System.out.println("otp : "+otp);
		System.out.println("myotp : " +myotp);
		
		if(myotp.equals(otp))
		{
			pw.print("OTP verified!");
		
		if(upass.equals(upass1))
		{
			
		da.setPassword(upass);
		Datadao d1 = new Datadao();
		int status=d1.insertRecord(da);
		if(status==1)
		{
			pw.print("<h1> Updated Successfully! , you can now login </h1>");
			RequestDispatcher rd = request.getRequestDispatcher("Index.jsp");
			rd.include(request, response);
		}
		else
		{
			pw.print("<h1> Unable to Register Please try again! </h1>");
			RequestDispatcher rd = request.getRequestDispatcher("Register.jsp");
			rd.include(request, response);
		}
		}
		else
		{
			pw.print("<h1> Password and repassword did't match </h1>");
			RequestDispatcher rd = request.getRequestDispatcher("Register.jsp");
			rd.include(request, response);
		}
		}
		else
			pw.print("Invalid OTP");
	}

}
