package br.com.flame.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.flame.dao.UsuarioDao;
import br.com.flame.modelo.Usuario;

public class AdicionaUsuarioServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// busca o whiter
		PrintWriter out = response.getWriter();

		// vuscando os parametros no request
		String nome = request.getParameter("nome");
		String login = request.getParameter("login");
		String email = request.getParameter("email");
		String senha = request.getParameter("senha");

		boolean ativoEmTexto = Boolean.parseBoolean((request.getParameter("ativo") != null ? "true" : "false"));
		
		Usuario usuario = new Usuario();
		usuario.setNome(nome);
		usuario.setEmail(email);
		usuario.setLogin(login);
		usuario.setSenha(senha);
		usuario.setAtivo(Boolean.valueOf(ativoEmTexto));

		UsuarioDao dao = new UsuarioDao();
		dao.adiciona(usuario);

		out.println("<html>");
		out.println("<body>");
		out.println("Usuario " + usuario.getNome() + " adicionado com sucesso");
		out.println("</body>");
		out.println("</html>");

	}
}
