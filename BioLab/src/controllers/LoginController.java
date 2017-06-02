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
//import model.User;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		request.setCharacterEncoding("UTF-8");
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		RequestDispatcher loginfail = request.getRequestDispatcher("/index.html");//SOS allagi sto directory
		RequestDispatcher loginsuccess = request.getRequestDispatcher("/index.html");//SOS allagi sto directory
		
		UserDAO udao = new UserDAO();
		DoctorDAO ddao = new DoctorDAO();
		
		User user=null;
		
		
		HttpSession session = request.getSession(true);
		
		try{
			user = udao.confirmUser(username, password);
			
			if(user!=null){
				int x = ddao.ifDoctor(username);
				if(x==0){
				session.setAttribute("user", user);
				}else{
					Doctor doctor = new Doctor(user.getName(),user.getSurname(),user.getUsername(),user.getEmail(),user.getPassword(),x);
					session.setAttribute("user", doctor);
				}
				loginsuccess.forward(request, response);
			}
			else{
				request.setAttribute("message", "Incorrect login");
				loginfail.forward(request, response);
			}
		}catch (Exception e) {
			
			request.setAttribute("message", "You are not authorized to access this resource. Please login");
			loginfail.forward(request, response);
			
		}
		
	}

}
