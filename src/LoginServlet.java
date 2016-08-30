

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Customer;
import model.Product;

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public LoginServlet() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String username=request.getParameter("username");
		String password=request.getParameter("password");
				/*Customer cust=new Customer();
				cust.setUsername(username);
				cust.setPassword(password);*/
		String capitalUsername=toCapital(username);
		HttpSession session=request.getSession();
		session.setAttribute("username",capitalUsername);
		populateProductList(session);
		//List list=(Product)request.getAttribute(arg0)
		RequestDispatcher rd=request.getRequestDispatcher("/Welcome.jsp");
		rd.forward(request, response);
	}
	public static String toCapital(String s)
	{
		if(s.charAt(0)>=97)
		{
			String qs=Character.toString(((char)(s.charAt(0)-32)))+s.substring(1);
			return qs;
		}
		else
			return s;
	}
	
	public void populateProductList(HttpSession session)
	{
		Product prod1=new Product();
		Product prod2=new Product();
		Product prod3=new Product();
		Product prod4=new Product();
		Product prod5=new Product();
		Product prod6=new Product();
		
		prod1.setProductName("HTC 526");
		prod1.setProductPrice(9900);
		prod2.setProductName("Samsung Galaxy");
		prod2.setProductPrice(7000);
		prod3.setProductName("iPhone 5s");
		prod3.setProductPrice(23000);
		prod4.setProductName("Microsoft Lumia");
		prod4.setProductPrice(9500);
		prod5.setProductName("Sony Xperia");
		prod5.setProductPrice(14000);
		prod6.setProductName("Micromax Canvas");
		prod6.setProductPrice(6500);
		
		List<Product> prodList =new ArrayList<Product>();
		prodList.add(prod1);
		prodList.add(prod2);
		prodList.add(prod3);
		prodList.add(prod4);
		prodList.add(prod5);
		prodList.add(prod6);
		System.out.println("Hello");
		session.setAttribute("productList", prodList);
		List<Product> list=(ArrayList<Product>)session.getAttribute("productList");
		for(Product l:list)
		{
			System.out.println(l.getProductName());
		}
	}
	/*public int validateUser(String u,String p)
	{
		if(u.startsWith("v") && p.startsWith("p"))
		{
			return 1;
		}
		else
			return 0;
	}*/
}
