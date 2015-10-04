package cafein.post;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/createpost")
public class CreatePostServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String contents = req.getParameter("contents");
		int cid = Integer.parseInt(req.getParameter("cid"));
		String colorName = req.getParameter("colorname");
		System.out.println(colorName);
		String colorUrl = colorNameToUrl(colorName);
		System.out.println("contents : "+contents+", cid : "+cid+", colorUrl : "+colorUrl);
		Post post = new Post(cid, contents, colorUrl);
		PostDAO postdao = new PostDAO();
		
		try {
			postdao.addPost(post);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		resp.sendRedirect("/cafe?cid="+cid);
	}

	private String colorNameToUrl(String colorName) {
		switch(colorName){
		case "red" : return "http://i62.tinypic.com/aljjo1.png";
		case "pink" : return "http://oi61.tinypic.com/r9ptv5.jpg";
		case "orange" : return "http://i61.tinypic.com/qn2ue0.jpg";
		case "yellow" : return "http://i57.tinypic.com/n5fsqa.png";
		case "yellowgreen" : return "http://i57.tinypic.com/2cqmwdd.jpg";
		case "green" : return "http://i59.tinypic.com/2pt86ew.jpg";
		case "skyblue" : return "http://i62.tinypic.com/11r669v.png";
		case "blue" : return "http://i61.tinypic.com/nyg4nb.jpg";
		case "darkblue" : return "http://i59.tinypic.com/1zef500.jpg";
		case "purple" : return "http://i59.tinypic.com/6s4aoo.png";
		}
		return null;
	}
}
