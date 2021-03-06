package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class ExcluirPessoaDAO {
private Connection conexao;
	
	public ExcluirPessoaDAO(Connection conexao) {
	      this.conexao = conexao;
		}
		//Metodo para inserir um FILME
		public boolean excluiPessoa(String idelenco){
			PreparedStatement ps = null;
			boolean resultado = false;
			
			
			try {
				ps = conexao.prepareStatement("DELETE FROM cinema.elenco WHERE idelenco=?;");
				ps.setInt(1, Integer.parseInt(idelenco));
			
				ps.executeUpdate();
				ps.close();
				resultado = true;
					
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			return resultado;
	}

}
