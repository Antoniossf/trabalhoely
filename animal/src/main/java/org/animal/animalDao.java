package org.animal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedList;
public class animalDao {
	
	//private static LinkedList<animal> lista = new LinkedList<animal>();
	
	public void salvar(animal a) {
		if (a.getIdanimal()>0) {
			alterar(a);
		}else {
			inserir(a);
		}
	}
	
	
	public void inserir (animal a) {
		//lista.add(a);
		
		conexao con = new conexao();
		
		try {
			String sql = "INSERT INTO animal (nome, raca , nomedono , telefonedono ) "
					+ "VALUES (?,?,?,?)";
			PreparedStatement prep = con.getConnection().prepareStatement(sql);
			prep.setString(1, a.getNome());
			prep.setString(2, a.getraca());
			prep.setString(3, a.getnomedono());
			prep.setString(4, a.gettelefonedono());
		} catch (Exception e) {
			e.printStackTrace();
		}
		con.desconecta();
	}
	
	public void alterar(animal a) {
		conexao con = new conexao();
		try {
			String sql = "UPDATE pessoa SET "
					+ "nome = ?, raca = ?,"
					+ "nomedono = ?, telefonedono = ? "
					+ "WHERE idanimal = ?";
			PreparedStatement prep = con.getConnection().prepareStatement(sql);
			prep.setString(1, a.getNome());
			prep.setString(2, a.getraca());
			prep.setString(3, a.getnomedono());
			prep.setString(4, a.gettelefonedono());
			prep.setInt(5, a.getIdanimal());
			prep.execute();
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		con.desconecta();
	}
	
	public void excluir(animal a) {
		conexao con = new conexao();
		try {
			String sql = "DELETE FROM animal "
					+ "WHERE idanimal = ?";
			PreparedStatement prep = con.getConnection().prepareStatement(sql);
			prep.setInt(1, a.getIdanimal());
			prep.execute();
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		con.desconecta();
	}
	
	public LinkedList<animal> listar() {
		LinkedList<animal> lista = new LinkedList<animal>();
		conexao con = new conexao();
		try {
			String sql ="SELECT * FROM animal ORDER BY nome";
			Statement sta = con.getConnection().createStatement();
			ResultSet res = sta.executeQuery(sql);
			while (res.next()) {
				animal a = new animal();
				a.setIdanimal(res.getInt("idanimal"));
				a.setNome(res.getString("nome"));
				a.setraca(res.getString("raca"));
				a.setnomedono(res.getString("nomedono"));
				a.settelefonedono(res.getString("telefonedono"));
				lista.add(a);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		con.desconecta();
		return lista;
	}
	
	public animal consultar(int id) {
		animal a = new animal();
		conexao con = new conexao();
		try {
			String sql ="SELECT * FROM animal WHERE idanimal = " + id;
			Statement sta = con.getConnection().createStatement();
			ResultSet res = sta.executeQuery(sql);
			while (res.next()) {
				a.setIdanimal(res.getInt("idanimal"));
				a.setNome(res.getString("nome"));
				a.setraca(res.getString("raca"));
				a.setnomedono(res.getString("nomedono"));
				a.settelefonedono(res.getString("telefonedono"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		con.desconecta();
		return(a);
	}
	
}
