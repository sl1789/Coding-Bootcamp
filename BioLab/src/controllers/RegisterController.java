package controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DoctorDAO;
import dao.UserDAO;
import model.Doctor;
import model.User;

/**
 * Servlet implementation class RegisterController
 */
@WebServlet("/register")
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		request.setCharacterEncoding("UTF-8");
		
		String name = request.getParameter("name");
		String surname = request.getParameter("surname");
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		RequestDispatcher rd = request.getRequestDispatcher("/index.html");//SOS change directory
		UserDAO udao = new UserDAO();
		try{
			
		Boolean flag = udao.confirmUser(name, surname, username, email);
		if(!flag){
			String decl = request.getParameter("credential");
			if(decl ==null){
				User user = new User(name,surname,username,email,password);
				udao.saveUser(user);
				request.setAttribute("message", "Registration completed successfully!");

				rd.forward(request, response);
				return;
				
			}else{
				//
				if (decl.length()==10){
					int credential = Integer.parseInt(decl);
					Doctor doc = new Doctor(name,surname,username,email,password,credential);
					DoctorDAO ddao =new DoctorDAO();
					ddao.saveDoctor(doc);
					request.setAttribute("message", "Registration completed successfully!");

					rd.forward(request, response);
					return;					
				}else{
					request.setAttribute("message", "Registration not completed");
					rd = request.getRequestDispatcher("/register.jsp");//SOS change directory
					// is it correct??
					rd.forward(request, response);
					return;
					
				}
				
			}
			
		}
		
		}catch (Exception e) {
			
			request.setAttribute("errormessage", e.getMessage());
			
			rd.forward(request, response);	
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
