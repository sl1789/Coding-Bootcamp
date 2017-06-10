package controllers;

import java.io.IOException;
import java.util.ArrayList;

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
 * Servlet implementation class UpdateNoteController
 */
@WebServlet("/UpdateNoteController")
public class UpdateNoteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateNoteController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
		request.setCharacterEncoding("UTF-8");
		
		String newnote = request.getParameter("update");

		RequestDispatcher rd = request.getRequestDispatcher("/update_note.jsp");//SOS change directory
		HttpSession session = request.getSession(true);
		ExamDAO edao = new ExamDAO();
		Examination exam = (Examination)session.getAttribute("exam");
		exam.setNotes(newnote);
		try{
			edao.updateNotes(exam);
			request.setAttribute("message", "Update completed successfully!");
			session.setAttribute("exam", exam);
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
