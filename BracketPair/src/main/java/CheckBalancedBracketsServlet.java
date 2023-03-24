

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Stack;

/**
 * Servlet implementation class CheckBalancedBracketsServlet
 */
public class CheckBalancedBracketsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String brackets = request.getParameter("brackets");
		
		boolean isBalanced = isBalanced(brackets);
		
		String output = isBalanced ? "Yes" : "No";
		
		request.setAttribute("output", output);
		
		RequestDispatcher rd = request.getRequestDispatcher("output.jsp");

		rd.forward(request, response);
		
	}
		
		private boolean isBalanced(String brackets) {
			
			Stack<Character> stack = new Stack<>();
			
			for(char bracket : brackets.toCharArray()) {
				if(bracket == '(' || bracket == '{' || bracket == '[' ) {
					stack.push(bracket);
				} else if(bracket == ')' && !stack.isEmpty() && stack.peek() == '(') {
					stack.pop();
				} else if(bracket == '}' && !stack.isEmpty() && stack.peek() == '{') {
					stack.pop();
				} else if(bracket == ']' && !stack.isEmpty() && stack.peek() == '[') {
					stack.pop();
				} else {
					return false;
				}
			}
			
			return stack.isEmpty();
		
	}

}
