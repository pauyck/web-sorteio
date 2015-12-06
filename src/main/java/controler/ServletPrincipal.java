package controler;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletSecurityElement;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(value = "/web-sorteio")

public class ServletPrincipal extends HttpServlet{
	protected void service(
			HttpServletRequest requisicao,
			HttpServletResponse resposta)
		throws ServletException, IOException{
		
	}
}

