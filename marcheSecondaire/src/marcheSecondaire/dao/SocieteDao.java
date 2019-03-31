package marcheSecondaire.dao;

import java.util.List;

import marcheSecondaire.beans.Societe;

public interface SocieteDao {
	public void ajouter(Societe societe);
	public Societe getByNom(String nom);
	public List<Societe> lister();
	public List<Societe> listerBySec(int id);
}
