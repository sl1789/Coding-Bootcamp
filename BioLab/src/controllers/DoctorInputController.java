package controllers;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ChildDAO;
import dao.ExaminationDAO;
import dao.MotherDAO;
import model.Child;
import model.Doctor;
import model.Examination;
import model.Mother;

/**
 * Servlet implementation class DoctorInputController
 */
@WebServlet("/DoctorInputController")
public class DoctorInputController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoctorInputController() {
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
		
		//String doc_name = request.getParameter("doc_name");
		String date = request.getParameter("date");
		String type = request.getParameter("type");
		String notes = request.getParameter("notes");
		String patient_id = request.getParameter("patient_id");
		
		
		String name = request.getParameter("name");
		String surname = request.getParameter("surname");
		String HLA_A = request.getParameter("HLA-A");
		String HLA_B = request.getParameter("HLA-B");
		String HLA_C = request.getParameter("HLA-C");
		String HLA_DPB1 = request.getParameter("HLA-DPB1");
		String HLA_DQA1 = request.getParameter("HLA-DQA1");
		String HLA_DQB1 = request.getParameter("HLA-DQB1");
		String HLA_DRB1 = request.getParameter("HLA-DRB1");
		
		String afm = request.getParameter("afm");
		String dateOfBirth = request.getParameter("dateOfBirth");
		String mother_id = request.getParameter("mother_id");
		
		RequestDispatcher rd = request.getRequestDispatcher("/saveresult.jsp");//SOS change directory
		
		ChildDAO cdao = new ChildDAO();
		MotherDAO mdao = new MotherDAO();
		ExaminationDAO edao = new ExaminationDAO();
		HttpSession session = request.getSession(true);
		
		try{
			if(afm==null){
				Child child = new Child(patient_id,name,surname,HLA_A,HLA_B,HLA_C,HLA_DPB1,HLA_DQA1,HLA_DQB1,HLA_DRB1,dateOfBirth,mother_id);
				cdao.saveChild(child);
				rd.forward(request, response);
				//return;
			}else{
				int af = Integer.parseInt(afm);
				Mother mother = new Mother(patient_id,name,surname,HLA_A,HLA_B,HLA_C,HLA_DPB1,HLA_DQA1,HLA_DQB1,HLA_DRB1,af);
				mdao.saveMother(mother);
				rd.forward(request, response);
				//return;
			}
			Doctor doc = (Doctor)session.getAttribute("user");
			Examination exam = new Examination(doc.getUsername(),date,type,notes,patient_id);
			edao.saveExamination(exam);
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