package controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ExamDAO;
import model.Examination;

/**
 * Servlet implementation class SearchExaminationByPatientId
 */
@WebServlet("/SearchExaminationByPatientId")
public class SearchExaminationByPatientId extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchExaminationByPatientId() {
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
		
		String keyword = request.getParameter("patient_id");
		HttpSession session = request.getSession(true);
		RequestDispatcher rd = request.getRequestDispatcher("/update_note.jsp");
		ExamDAO edao = new ExamDAO();
		
		try{
			Examination exam = edao.findExaminationByPatientID(keyword);
			if(exam!= null){
				session.setAttribute("exam", exam);
				rd.forward(request, response);
				
			}
			return;
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
