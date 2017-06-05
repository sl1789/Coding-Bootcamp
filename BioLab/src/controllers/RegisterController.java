package controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
		String hospital_id = request.getParameter("hospital_id");
		HttpSession session = request.getSession(true);
		
		RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");//SOS change directory
		UserDAO udao = new UserDAO();
		try{
			
		User us = udao.confirmUser(name, surname, username, email);
		if(us==null){
			String decl = request.getParameter("credential");
			if(decl ==""||decl==null){
				User user = new User(name,surname,username,email,password);
				udao.saveUser(user);
				request.setAttribute("message", "Registration completed successfully!");
				session.setAttribute("user", user);
				rd.forward(request, response);
				return;
				
			}else{
				//
				if (decl.length()==5){
					int credential = Integer.parseInt(decl);
					int hosp = Integer.parseInt(hospital_id);
					Doctor doc = new Doctor(name,surname,username,email,password,credential);
					DoctorDAO ddao =new DoctorDAO();
					ddao.saveDoctor(doc);
					ddao.saveBelongs(doc.getUsername(),hosp);
					request.setAttribute("message", "Registration completed successfully!");
					session.setAttribute("user", doc);

					rd.forward(request, response);
					return;					
				}else{
					request.setAttribute("message", "Registration not completed");
					rd = request.getRequestDispatcher("/index.jsp");//SOS change directory
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
