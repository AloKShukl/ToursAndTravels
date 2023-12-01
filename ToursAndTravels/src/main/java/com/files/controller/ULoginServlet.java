package com.files.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.files.entites.Data;
import com.files.entites.Datadao;

/**
 * Servlet implementation class ULoginServlet
 */
public class ULoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ULoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	
		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
//		String n=request.getParameter("attempt");
//		System.out.println("n :"+n);
		
		String email= request.getParameter("inemail");
		String password=request.getParameter("inpassword");
		
		Datadao d1 = new Datadao();
		Data user = d1.checklogin(email, password);
		
		if(user!=null) 
		{
			request.setAttribute("name", user.getName());
			request.setAttribute("email", user.getEmail());
			request.setAttribute("phone", user.getPhone());
			request.setAttribute("Address", user.getAddress());
			
		if(user.getName().equals("Admin"))
		{
			System.out.println("Admin Welcome");
			RequestDispatcher rd = request.getRequestDispatcher("AdminProfile.jsp?Page=1");
			rd.forward(request, response);
		
		}
		else
			{
			request.setAttribute("name",  user.getName());
			request.setAttribute("email", user.getEmail());
			request.setAttribute("imageFileName", user.getImageFileName());
//			Cookie uid=new Cookie("userid",id);
//			uid.setMaxAge(60*60*24*2);
//			Cookie upass=new Cookie("userpass",pass);
//			upass.setMaxAge(60*60*24*2);
//			
//			response.addCookie(uid);
//			response.addCookie(upass);
			
			HttpSession session=request.getSession();
			System.out.println("Session id : "+session.getId());
			System.out.println("Session Creation time : "+new Date(session.getCreationTime()));
//			session.setAttribute("id", id);
//			session.setAttribute("pass", pass);
			RequestDispatcher rd = request.getRequestDispatcher("Profile.jsp");
			rd.forward(request, response);
			}
	}
		else
			{
			RequestDispatcher rd = request.getRequestDispatcher("wrong.jsp");
			rd.forward(request, response);
			}
	}
		
}
