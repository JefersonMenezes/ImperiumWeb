package br.com.flame.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.management.RuntimeErrorException;

import br.com.flame.factory.ConnectionFactory;
import br.com.flame.modelo.Usuario;

public class UsuarioDao {
	private final Connection conexao;

	public UsuarioDao() {
		this.conexao = new ConnectionFactory().getConnection();
	}
	
	


	public void adiciona(Usuario usuario) {
		System.out.println("Inserindo usuario...");
		String sql = "INSERT INTO financa.usuario (login,senha,nome,email,ativo) VALUE (?,?,?,?,?)";
		try {
			PreparedStatement stmt = conexao.prepareStatement(sql);
			stmt.setString(1, usuario.getLogin());
			stmt.setString(2, usuario.getSenha());
			stmt.setString(3, usuario.getNome());
			stmt.setString(4, usuario.getEmail());
			stmt.setBoolean(5, usuario.isAtivo());

			stmt.execute();
			stmt.close();

		} catch (SQLException ex) {
			throw new RuntimeException(ex);
		}

	}
	
	public List<Usuario> getLista() {
        String sql = "SELECT * FROM usuario";
        try {

            List<Usuario> usuarios = new ArrayList<Usuario>();
            PreparedStatement stmt = conexao.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                Usuario usuario = new Usuario();
                usuario.setId(rs.getInt("id"));
                usuario.setNome(rs.getString("nome"));
                usuario.setEmail(rs.getString("email"));
                usuario.setLogin(rs.getString("login"));
                usuario.setAtivo(rs.getBoolean("ativo"));
                usuario.setSenha(rs.getString("senha"));

                usuarios.add(usuario);
            }
            rs.close();
            stmt.close();
            return usuarios;

        } catch (SQLException ex) {
            throw new RuntimeException(ex);
        }
    }

}
