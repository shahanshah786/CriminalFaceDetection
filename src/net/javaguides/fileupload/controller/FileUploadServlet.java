package net.javaguides.fileupload.controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import net.javaguides.fileupload.dao.FileUploadDao;


@MultipartConfig(maxFileSize = 16177215) // upload file's size up to 16MB
@WebServlet("/register")
public class FileUploadServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	private FileUploadDao fileUploadDao;

	

	@Override
	public void init() {
		fileUploadDao = new FileUploadDao();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		
		
		// gets values of text fields
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String fathername = request.getParameter("fathername");
		String mothername = request.getParameter("mothername");
		String phone = request.getParameter("phone");
		String age = request.getParameter("age");
		String religion = request.getParameter("religion");
		String gender = request.getParameter("gender");
		String fir_date = request.getParameter("fir_date");
		String cases = request.getParameter("cases");
		String region = request.getParameter("region");
		String address = request.getParameter("address");
		

		
		System.out.println("In do post method of Add Image servlet.");
		Part file=request.getPart("picture");
		
		String imageFileName=file.getSubmittedFileName();  // get selected image file name
		System.out.println("Selected Image File Name : "+imageFileName);
		
		String uploadPath="C:/Users/mdsha/Desktop/COMPLETER-PROJECT-FILE/WebContent/image/" +imageFileName;  // upload path where we have to upload our actual image
		System.out.println("Upload Path : "+uploadPath);
		
		// Uploading our selected image into the images folder
		
		try
		{
		
		FileOutputStream fos=new FileOutputStream(uploadPath);
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
		

		// sends the statement to the database server
		int row = fileUploadDao.uploadFile(firstname,lastname,fathername,mothername,phone,age,religion,gender,fir_date,cases,region,address,imageFileName);
		String message = null;
		if (row > 0) {
			message = "Successfull data Store ";
		}
		
		// sets the message in request scope
        request.setAttribute("Message", message);
         
        // forwards to the message page
        getServletContext().getRequestDispatcher("/message.jsp")
        .forward(request, response);
        
	}
	
}