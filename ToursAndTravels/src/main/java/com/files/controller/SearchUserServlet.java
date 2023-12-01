package com.files.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.files.entites.Data;
import com.files.entites.Datadao;

/**
 * Servlet implementation class SearchUserServlet
 */
public class SearchUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String email= request.getParameter("email");
		
		Datadao dao = new Datadao();
		Data user = dao.searchUser(email);
		if(user!=null) {
			request.setAttribute("name", user.getName());
			request.setAttribute("email", user.getEmail());
			request.setAttribute("phone", user.getPhone());
			request.setAttribute("address", user.getAddress());
			request.setAttribute("pass", user.getPassword());
			request.getRequestDispatcher("viewUser.jsp").forward(request, response);
		}
	}

}
