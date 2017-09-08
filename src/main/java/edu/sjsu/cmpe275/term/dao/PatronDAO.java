package edu.sjsu.cmpe275.term.dao;

import java.util.List;

import edu.sjsu.cmpe275.term.model.Patron;

public interface PatronDAO {
	
	public Patron saveNewPatron(Patron patron);
	/**
	 * @author Vipul
	 * @param id
	 * @return
	 */
	public Patron findPatronByUniversityId(String id);
	/**
	 * @author Vipul
	 * @param id
	 * @return
	 */
	public Patron findPatronByEmailId(String id);
	/**
	 * @author Vipul
	 * @param patron
	 */
	public void updatePatron(Patron patron);
	
	/**
	 * @author Ajeet
	 * @return
	 */
	public List<Patron> findAllPatron();
}
