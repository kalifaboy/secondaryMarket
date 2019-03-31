package marcheSecondaire.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

import marcheSecondaire.beans.Contrat;

public class ContratDaoImpl implements ContratDao {

private DaoFactory daoFactory;
	
	public ContratDaoImpl(DaoFactory daoFactory) {
		this.daoFactory = daoFactory;
	}

	@Override
	public Map<Integer, Contrat> lister() {
		Map<Integer, Contrat> contrats = new HashMap<>();
		Connection connexion = null;
        Statement statement = null;
        ResultSet resultat = null;

        try {
            connexion = (Connection) daoFactory.getConnection();
            statement = (Statement) connexion.createStatement();
            resultat = statement.executeQuery("SELECT * FROM contrat;");

            while (resultat.next()) {
                int type = resultat.getInt("type");
                int nombre = resultat.getInt("nombre");
                Date date = resultat.getDate("publication");
                float prix = resultat.getFloat("prix_depart");
                int id_contrat = resultat.getInt("id_contrat");
                int id_utilisateur = resultat.getInt("id_utilisateur");
                
                Contrat soc = new Contrat();
                soc.setType(type);
                soc.setNombre(nombre);
                soc.setPublication(date);
                soc.setPrix_depart(prix);
                soc.setId_contrat(id_contrat);
                soc.setId_utilisateur(id_utilisateur);
                
                contrats.put(id_contrat, soc);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return contrats;
	}
}
