package kr.go.team.view;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.go.team.dto.YearDTO;
import kr.go.team.model.YearDAO;


@WebServlet("/GetYearCtrl.do")
public class GetYearCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//UTF-8 초기화
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		int no = Integer.parseInt(request.getParameter("no"));
		
		//dao에서 항목 불러오기 호출하여 반환받음
		YearDAO dao = new YearDAO();
		YearDTO dto = dao.getYear(no);
		
		//dao로 부터 받은 데이터를 view에 디스패치함
		request.setAttribute("dto", dto);
		
		RequestDispatcher view = request.getRequestDispatcher("/year/yearDetail.jsp");
		view.forward(request, response);
	}
}
