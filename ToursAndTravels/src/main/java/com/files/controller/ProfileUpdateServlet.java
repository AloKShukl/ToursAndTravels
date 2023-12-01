package com.files.controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.http.Part;

import com.files.entites.Datadao;

/**
 * Servlet implementation class ProfileUpdateServlet
 */
@MultipartConfig
public class ProfileUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProfileUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String email=request.getParameter("email");
		Part  file= (Part) request.getPart("image");
		String imageFileName=file.getSubmittedFileName();
		System.out.println("Selected File Name : "+imageFileName);
		
		String uploadPath="H:/java_eclipse/ToursAndTravels/src/main/webapp/ProfileImages/"+imageFileName;
		System.out.println("uploadPath : "+uploadPath);
		try 
		{
		FileOutputStream fos = new FileOutputStream(uploadPath);
		InputStream is=file.getInputStream();
		
		byte[] data=new byte[is.available()];
		is.read(data);
		fos.write(data);
		fos.close();
		}
		catch(Exception e)
		{
		e.printStackTrace();
		}
		Datadao da = new Datadao();
		int status=da.UploadImage(email,imageFileName);
		if(status==1)
		{
			System.out.println("Profile Upload Successfully!");
		}
		else {
			System.out.println("Unable to Update Profile");
		}
		
	}

}
