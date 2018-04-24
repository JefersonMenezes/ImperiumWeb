package br.com.flame.factory;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {

	public Connection getConnection() {
		
		System.out.println("Conectando ao banco...");
		try {
			try {
				Class.forName("com.mysql.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
			return DriverManager.getConnection("jdbc:mysql://localhost/financa", "root", "root");
		} catch (SQLException ex) {
			throw new RuntimeException(ex);
		}

	}

}
