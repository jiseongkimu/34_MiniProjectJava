package kr.co.ezenac.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.multipart.MultipartRequest;
import kr.co.ezenac.dao.MainboardboxDAO;
import kr.co.ezenac.dto.MainboardboxVO;

// import DefaultFileRenamePolicy;


/**
 * Servlet implementation class MainboardboxUpdate
 */
@WebServlet("/Mainboardboxinfo.do")
public class ProductInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ProductInfo() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		String url = "Mainboardbox/MainboardboxInfo.jsp";
		int code = Integer.parseInt(request.getParameter("code"));
		MainboardboxDAO dao = MainboardboxDAO.getInstance();
		MainboardboxVO mvo = dao.selectProductByCode(code);
		request.setAttribute("Mainboardbox", mvo);

		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		request.setCharacterEncoding("utf-8");
		String saveDirectory = request.getServletContext().getRealPath("images");
		int maxPostSize = 5 * 1024 * 1024;
		String encType = "utf-8";
		DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();
		// 업데이트 할려고 저장한 정보를 가지고 와서 mvo로 보낸다
		MultipartRequest multi = new MultipartRequest(request, saveDirectory, maxPostSize, encType, policy);
		MainboardboxVO mvo = new MainboardboxVO();
		// mvo에서 저장된 것을 db로 보낸다.

		mvo.setCode(Integer.parseInt(multi.getParameter("code")));
		mvo.setTitle(multi.getParameter("title"));
		mvo.setPrice(Integer.parseInt(multi.getParameter("price")));
		mvo.setDirector(multi.getParameter("director"));
		mvo.setActor(multi.getParameter("actor"));
		mvo.setSynopsis(multi.getParameter("synopsis"));
		if (multi.getFilesystemName("poster") == null) {
			mvo.setPoster(multi.getParameter("nomakeImg"));
		} else {
			mvo.setPoster(multi.getFilesystemName("poster"));
		}
		MainboardboxDAO productDAO = MainboardboxDAO.getInstance();
		productDAO.updateProduct(mvo);
		response.sendRedirect("Mainboardboxlist.do");

	}

}
