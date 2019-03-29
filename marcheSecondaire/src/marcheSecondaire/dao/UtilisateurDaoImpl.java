package marcheSecondaire.dao;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import marcheSecondaire.beans.Societe;
import marcheSecondaire.beans.Utilisateur;

public class UtilisateurDaoImpl implements UtilisateurDao {
	
	private DaoFactory daoFactory;

    UtilisateurDaoImpl(DaoFactory daoFactory) {
        this.daoFactory = daoFactory;
    }

	@Override
	public void ajouter(Utilisateur utilisateur, Societe societe) {
		Connection connexion = null;
		PreparedStatement preparedStatement = null;
		
		try {
			connexion = (Connection) daoFactory.getConnection();
			preparedStatement = (PreparedStatement) connexion.prepareStatement("INSERT INTO utilisateur(email, nom, prenom, mot_de_passe, type, id_societe) VALUES(?,?,?,?,?,?);");
			preparedStatement.setString(1, utilisateur.getEmail());
			preparedStatement.setString(2, utilisateur.getNom());
			preparedStatement.setString(3, utilisateur.getPrenom());
			preparedStatement.setString(4, securePassword(utilisateur.getPassword()));
			preparedStatement.setInt(5, utilisateur.getType());
			preparedStatement.setInt(6, societe.getId_societe());

			preparedStatement.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}

	}
	
	@Override
	public int existe(Utilisateur utilisateur) {
		Connection connexion = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultat = null;
		try {
			connexion = (Connection) daoFactory.getConnection();
			preparedStatement = (PreparedStatement) connexion.prepareStatement("SELECT * FROM utilisateur WHERE email=? and mot_de_passe=?;");
			preparedStatement.setString(1, utilisateur.getEmail());
			preparedStatement.setString(2, securePassword(utilisateur.getPassword()));
			
			resultat = preparedStatement.executeQuery();
			resultat.next();
			int id = resultat.getInt("id_utilisateur");
			utilisateur.setNom(resultat.getString("nom"));
			utilisateur.setPrenom(resultat.getString("prenom"));
			utilisateur.setType(resultat.getInt("type"));
			utilisateur.setSociete(resultat.getInt("id_societe"));
			return id; // Il faut retourner l'objet utilisateur entièrement !!!!!!!!! pour l'utiliser à priori
		}catch(SQLException e) {
			e.printStackTrace();
			return -1;
		}
	}

	@Override
	public List<Utilisateur> lister() {
		// TODO Auto-generated method stub
		return null;
	}
	
	private String securePassword(String pass) {
		if(pass == null) {
			return null;
		}
		try {
			MessageDigest md = MessageDigest.getInstance("MD5");
			md.update(pass.getBytes());
			byte[] bytes = md.digest();
			StringBuilder sb = new StringBuilder();
			for(int i = 0; i < bytes.length; i++) {
				sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
			}
			String generatedPassword = sb.toString();
			return generatedPassword;
		} catch (NoSuchAlgorithmException | NullPointerException e) {
			e.printStackTrace();
			return null;
		}
	}

}
