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
 * Servlet implementation class SearchPatientGeneController
 */
@WebServlet("/SearchPatientGeneController")
public class SearchPatientGeneController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchPatientGeneController() {
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
		
		String gene = request.getParameter("gene");
		
		
		RequestDispatcher rd = request.getRequestDispatcher("/index.html");//SOS change directory
		PatientDAO pdao = new PatientDAO();
		ArrayList<Patient> reslist = null;
		
		try{
			reslist=pdao.findPatientByGenes(gene);
			
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
