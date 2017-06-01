package controllers;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.PatientDAO;
import model.Patient;

/**
 * Servlet implementation class SearchPatientKeywordController
 */
@WebServlet("/SearchPatientKeywordController")
public class SearchPatientKeywordController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchPatientKeywordController() {
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
		
		String keyword = request.getParameter("keyword");

		RequestDispatcher rd = request.getRequestDispatcher("/results.jsp");//SOS change directory
		
		PatientDAO pdao = new PatientDAO();
		ArrayList<Patient> reslist = null;
		
		try{
			reslist=pdao.findPatientByKeyword(keyword);
			
			request.setAttribute("patients-results", reslist);
			
			rd.forward(request, response);
			return;	
		}catch (Exception e) {
			throw new ServletException(e.getMessage());
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
