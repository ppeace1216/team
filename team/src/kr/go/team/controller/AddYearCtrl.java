package kr.go.team.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.go.team.dto.YearDTO;
import kr.go.team.model.YearDAO;


@WebServlet("/AddYearCtrl.do")
public class AddYearCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String title = request.getParameter("title");
		String ydisA = request.getParameter("ydisA");
		String ydisB = request.getParameter("ydisB");
		String ydisC = request.getParameter("ydisC");
		String ydisD = request.getParameter("ydisD");
		String ydisE = request.getParameter("ydisE");
		String period = request.getParameter("period");
		String target = request.getParameter("target");
		String caution = request.getParameter("caution");
		
		YearDTO dto = new YearDTO();
		dto.setTitle(title);
		dto.setYdisA(ydisA);
		dto.setYdisB(ydisB);
		dto.setYdisC(ydisC);
		dto.setYdisD(ydisD);
		dto.setYdisE(ydisE);
		dto.setPeriod(period);
		dto.setTarget(target);
		dto.setCaution(caution);
		
		YearDAO dao = new YearDAO();
		int cnt = dao.addYear(dto);
		
		if(cnt>=1){
			response.sendRedirect("GetYearListCtrl.do");
		} else {
			response.sendRedirect("./year/yearInsert.jsp");
		}
	}
}