package com.files.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
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
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpFilter;

/**
 * Servlet Filter implementation class RegistrationFilter
 */
public class RegistrationFilter extends HttpFilter implements Filter {
       
    /**
     * @see HttpFilter#HttpFilter()
     */
    public RegistrationFilter() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		{
			PrintWriter pw=response.getWriter();
			response.setContentType("text/plain");
			
			Enumeration<String> parameterNames= request.getParameterNames();
			
			Map<String, String> list= new HashMap<String,String>();
			
			while(parameterNames.hasMoreElements())
			{
				String paramName= parameterNames.nextElement();
//				pw.write(paramName);
//				pw.write("n");
//				
//				String[] paramValues = request.getParameterValues(paramName);
				list.put(paramName, request.getParameter(paramName));
				
//				for(int i=0;i< paramValues.length;i++)
//				{
//					String paramValue = paramValues[i];
//					pw.write("t" +paramValue);
//					pw.write("n");
//				}
			}
			request.setAttribute("alist", list);
			
			
			String from="abhayray8707@gmail.com";
			String to=request.getParameter("email");
			String sub="OTP for Registration";
			String otp=generateOTP();
			String msg="Use this Otp for Registration : "+otp;
			
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
			
			pw.print("OTP sent Successfully!");
			request.setAttribute("otp", otp);
			System.out.println(otp);
			chain.doFilter(request, response);
			}
			catch(MessagingException me)
			{
				me.printStackTrace();
			}
		}
	}
			
		/**
		 * @see Filter#init(FilterConfig)
		 */
		public void init(FilterConfig fConfig) throws ServletException {
			// TODO Auto-generated method stub
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
