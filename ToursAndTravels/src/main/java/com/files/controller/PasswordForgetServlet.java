package com.files.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Properties;
import java.util.Random;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.files.entites.Data;
import com.files.entites.Datadao;

/**
 * Servlet implementation class PasswordForgetServlet
 */
public class PasswordForgetServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PasswordForgetServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		
		String email= request.getParameter("email");	
		String from="abhayray8707@gmail.com";
		
		String sub="OTP for Registration";
		String otp=generateOTP();
		String msg="Use this Otp for Registration : "+otp;
		String pass=request.getParameter("pass");
		String pass1=request.getParameter("pass1");

		
		
		Datadao dao = new Datadao();
		Data user = dao.searchUser(email);
		if(user!=null)
		{
			request.setAttribute("email", ((com.files.entites.Data) user).getEmail());
			String to=(String) request.getAttribute("email");
			Properties prop=System.getProperties();
			
			prop.put("mail.smtp.host", "smtp.gmail.com");
			prop.put("mail.smtp.port", "465");
			prop.put("mail.smtp.ssl.enable", "true");
			prop.put("mail.smtp.auth", "true");
			
			Session session=Session.getInstance(prop,new Authenticator() 
			{
				@Override
				protected PasswordAuthentication getPasswordAuthentication() 
				{	
					return new PasswordAuthentication("abhayray8707@gmail.com", "vppnozjsxquhlbbe");
				}
			});
			
			session.setDebug(true);

			MimeMessage mm=new MimeMessage(session);
			try {
			mm.setFrom(from);
			mm.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
			mm.setSubject(sub);
			mm.setText(msg);
			
			Transport.send(mm);
			System.out.println("otp sent");

			request.setAttribute("otp", otp);
			request.setAttribute("pass", pass);
			request.setAttribute("pass1", pass1);
			request.setAttribute("email", email);

			System.out.println(otp);
			RequestDispatcher rd = request.getRequestDispatcher("OTPverifyReset.jsp");
			rd.include(request, response);
			}
			catch(MessagingException me)
			{
				me.printStackTrace();
			}
		}
		else
		{
		pw.print("<h1> User Not Found </h1>");
		RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
		rd.include(request, response);
		}
	}
	
	private String generateOTP()
	{
		int len=4;
		String numbers="0123456789";
		Random random=new Random();
		char[] otp=new char[len];
		for(int i=0;i<len;i++)
		{
			otp[i]=numbers.charAt(random.nextInt(numbers.length()));
		}
		return String.valueOf(otp);
	}

}
