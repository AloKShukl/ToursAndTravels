package com.files.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.Message.RecipientType;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MailServlet
 */
public class MailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");
		PrintWriter pw= response.getWriter();
		
		String from="abhayray8707@gmail.com";
		String to=request.getParameter("to");
		String sub=request.getParameter("sub");
		String msg=request.getParameter("message");
	
		
		Properties properties=System.getProperties();
		
		properties.put("mail.smtp.host","smtp.gmail.com");
		properties.put("mail.smtp.port","465");
		properties.put("mail.smtp.ssl.enable","true");
		properties.put("mail.smtp.auth","true");
		
		Session session=Session.getInstance(properties,new Authenticator() 
		{
			@Override
			protected PasswordAuthentication getPasswordAuthentication() 
			{	
				return new PasswordAuthentication("abhayray8707@gmail.com", "vppnozjsxquhlbbe");
			}
		});
		
		MimeMessage mm=new MimeMessage(session);
		
		try {
		mm.setFrom(from);
		mm.setRecipient(RecipientType.TO, new InternetAddress(to));
		mm.setSubject(sub);
		mm.setText(msg);
		
		Transport.send(mm);
		System.out.println("Mail Sent");
		
		pw.print("Mail Sent Successfully!");
		}
		catch(MessagingException me)
		{
			me.printStackTrace();
		}
	
	}

}
