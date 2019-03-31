package marcheSecondaire.dao;

import java.util.Map;

import marcheSecondaire.beans.Contrat;

public interface ContratDao {
	public Map<Integer, Contrat> lister();
}
