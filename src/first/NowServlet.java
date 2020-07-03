package first;

import java.util.Date;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

	/**
	 * Servlet implementation class NowServlet
	 */
	@WebServlet("/Now")
	
	//응답처리
	//1, 서블릿 클래스 만들기 위해서는 HttpServlet 클래스를 
	public class NowServlet extends HttpServlet {
	   private static final long serialVersionUID = 1L;
	
	   
	   	//2, 요청에 맞는 처리를 위한 메서드를 선택 오버라이딩
	   protected void doget(
		   HttpServletRequest req, 
		   HttpServletResponse resp)
		   throws ServletException, IOException{
		
		   //응답처리 : HTML 문서를 만든다. 
		   resp.setContentType("text/html; charset = utf-8");
		   
		   PrintWriter out = resp.getWriter();
		   out.println("<html>");
		   out.println("\t<head>");
		   out.println("\t\\t<title> 서블릿 테스트 </title>");
		   out.println("\t<body>");
		   out.println("\t\\t<h1>안녕하세요. 서블릿 클래스로 응답 처리된 페이지 입니다. </h1>");
		   out.println("\t\t<p>현재 시간은 : " + new Date() + "</p>");
		   out.println("<\t</body>");
		   out.println("</html>");
		   
		   
		   }
	
	   
//	   /**
//	    * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
//	    */
//	   public void doGet(HttpServletRequest request, HttpServletResponse response)
//	         throws ServletException, IOException {
//	         int total = 0;
//	         for (int cnt = 1; cnt < 101; cnt++)
//	         total += cnt;
//	         PrintWriter out = response.getWriter();
//	         out.println( "<HTML> ");
//	         out.println( "<HEAD><TITLE>Hundred Servlet</TITLE></HEAD> ");
//	         out.println( "<BODY> ");
//	         out.printf( "1 + 2 + 3 + ... + 100 = %d ", total);
//	         out.println( "</BODY> ");
//	         out.println( "</HTML> ");
//	         }
//	   
	   
	   
	   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	      // TODO Auto-generated method stub
	      doget(request, response);
	   }
	
	}
