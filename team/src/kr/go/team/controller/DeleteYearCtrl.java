package kr.go.team.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.go.team.model.YearDAO;


@WebServlet("/DeleteYearCtrl.do")
public class DeleteYearCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		int no = Integer.parseInt(request.getParameter("no"));
		
		YearDAO dao = new YearDAO();
		int cnt = dao.delYear(no);
		
		if(cnt>=1){
			response.sendRedirect("GetYearListCtrl.do");
		} else {
			response.sendRedirect("GetYearCtrl.do?no="+no);
		}
	}
}