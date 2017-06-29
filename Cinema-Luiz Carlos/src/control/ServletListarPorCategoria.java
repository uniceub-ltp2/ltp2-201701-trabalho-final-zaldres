package control;

import java.io.IOException;
import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Conexao;
import dao.ListarPorCategoriaDAO;
import model.Filme;
/**
 * Servlet implementation class ServletListarPorCategoria
 */
@WebServlet("/listarPorCategoria")
public class ServletListarPorCategoria extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletListarPorCategoria() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conexao = new Conexao().getConexao();
		
		ListarPorCategoriaDAO lpc = new ListarPorCategoriaDAO(conexao);
		String idTipoCategoria = request.getParameter("idtipocategoria");
		
		ArrayList<Filme> ListarPorCategoria = lpc.getListarPorCategoria(idTipoCategoria);
		request.setAttribute("listarPorCategoria", ListarPorCategoria);
		
		//Dispachar o request
				RequestDispatcher rd = request.getRequestDispatcher("/listarPelaCategoria.jsp");
				rd.forward(request, response);
		
	
	}

}
